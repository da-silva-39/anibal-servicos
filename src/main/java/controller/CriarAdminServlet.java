package controller;

import dao.AdminDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/criar-admin")
public class CriarAdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AdminDAO dao = new AdminDAO();
        dao.criarAdminInicial();
        response.setContentType("text/html");
        response.getWriter().println("<h2>Administrador criado com sucesso!</h2>");
        response.getWriter().println("<p>Usuário: <strong>admin</strong></p>");
        response.getWriter().println("<p>Senha: <strong>admin123</strong></p>");
        response.getWriter().println("<a href='" + request.getContextPath() + "/admin/login'>Ir para login</a>");
    }
}