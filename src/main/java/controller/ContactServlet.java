package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import dao.ContactService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ContactMessage;
import util.ContactValidator;

@WebServlet("/contacto")
public class ContactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Apenas exibe a página de contacto
        request.getRequestDispatcher("/contacto.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        // Capturar parâmetros
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
        String privacy = request.getParameter("privacy"); // "aceito" ou null

        // Validar
        Map<String, String> errors = ContactValidator.validate(name, email, phone, subject, message, privacy);

        if (!errors.isEmpty()) {
            // Guardar dados submetidos e erros
            request.setAttribute("errors", errors);
            request.setAttribute("submittedName", name);
            request.setAttribute("submittedEmail", email);
            request.setAttribute("submittedPhone", phone);
            request.setAttribute("submittedSubject", subject);
            request.setAttribute("submittedMessage", message);
            request.getRequestDispatcher("/contacto.jsp").forward(request, response);
            return;
        }

        // Criar objeto ContactMessage
        ContactMessage contact = new ContactMessage(name, email, phone, subject, message);

        // Processar (salvar + enviar email) usando ContactService
        ContactService service = new ContactService();
        try {
            service.processContact(contact);
        } catch (Exception e) {
            e.printStackTrace();
            Map<String, String> errorMap = new HashMap<>();
            errorMap.put("database", "Ocorreu um erro ao processar sua mensagem. Tente novamente mais tarde.");
            request.setAttribute("errors", errorMap);
            request.setAttribute("submittedName", name);
            request.setAttribute("submittedEmail", email);
            request.setAttribute("submittedPhone", phone);
            request.setAttribute("submittedSubject", subject);
            request.setAttribute("submittedMessage", message);
            request.getRequestDispatcher("/contacto.jsp").forward(request, response);
            return;
        }

        // Redirecionar com mensagem de sucesso
        response.sendRedirect(request.getContextPath() + "/contacto.jsp?success=true");
    }
}