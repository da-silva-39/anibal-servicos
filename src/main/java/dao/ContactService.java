package dao;

import model.ContactMessage;
import util.EmailSender;
import jakarta.mail.MessagingException;
import java.sql.SQLException;

public class ContactService {

    private ContactDAO contactDAO = new ContactDAO();

    public void processContact(ContactMessage contact) throws SQLException, MessagingException {
        // Salvar no banco
        contactDAO.save(contact);

        // Enviar email
        EmailSender.sendEmail(contact);
    }
}