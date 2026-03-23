package util;
import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import model.ContactMessage;
import java.util.Properties;


public class EmailSender {

    // Configurações do servidor SMTP
    private static final String SMTP_HOST = "smtp.gmail.com";
    private static final String SMTP_PORT = "465";
    private static final String USERNAME = "joseanibaldasilva39@gmail.com"; // Seu email
    private static final String PASSWORD = "smgnhtuubeerpaim"; // SENHA DE APP (sem espaços!)
    private static final String TO_EMAIL = "josedasilvaaj39@gmail.com"; // Quem recebe

    public static void sendEmail(ContactMessage contact) throws MessagingException {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", SMTP_HOST);
        props.put("mail.smtp.port", SMTP_PORT);

        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(USERNAME, PASSWORD);
            }
        });

        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(USERNAME));
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(TO_EMAIL));
        message.setSubject("Novo contacto: " + contact.getSubject());

        String corpo = "Nome: " + contact.getName() + "\n" +
                       "Email: " + contact.getEmail() + "\n" +
                       "Telefone: " + (contact.getPhone() != null ? contact.getPhone() : "não informado") + "\n\n" +
                       "Mensagem:\n" + contact.getMessage();

        message.setText(corpo);

        Transport.send(message);
    }
}