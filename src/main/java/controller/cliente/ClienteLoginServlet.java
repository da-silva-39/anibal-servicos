package controller.cliente;

import dao.ClienteDAO;
import model.Cliente;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/cliente/login")
public class ClienteLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("clienteLogado") != null) {
            response.sendRedirect(request.getContextPath() + "/cliente/dashboard");
            return;
        }
        request.getRequestDispatcher("/loginCliente.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        ClienteDAO dao = new ClienteDAO();
        Cliente cliente = dao.buscarPorEmail(email);

        if (cliente != null && dao.checkPassword(senha, cliente.getSenhaHash())) {
            HttpSession session = request.getSession();
            session.setAttribute("clienteLogado", cliente);
            response.sendRedirect(request.getContextPath() + "/cliente/dashboard");
        } else {
            request.setAttribute("erro", "E-mail ou senha inválidos");
            request.getRequestDispatcher("/loginCliente.jsp").forward(request, response);
        }
    }
}