package controller.cliente;

import dao.ClienteDAO;
import model.Cliente;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/cliente/registro")
public class ClienteRegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/registroCliente.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String confirmarSenha = request.getParameter("confirmarSenha");

        if (nome == null || nome.trim().isEmpty() || email == null || email.trim().isEmpty() || senha == null || senha.isEmpty()) {
            request.setAttribute("erro", "Todos os campos são obrigatórios");
            request.getRequestDispatcher("/registroCliente.jsp").forward(request, response);
            return;
        }
        if (!senha.equals(confirmarSenha)) {
            request.setAttribute("erro", "As senhas não coincidem");
            request.getRequestDispatcher("/registroCliente.jsp").forward(request, response);
            return;
        }

        ClienteDAO dao = new ClienteDAO();
        if (dao.buscarPorEmail(email) != null) {
            request.setAttribute("erro", "Este e-mail já está registrado");
            request.getRequestDispatcher("/registroCliente.jsp").forward(request, response);
            return;
        }

        Cliente cliente = new Cliente();
        cliente.setNome(nome);
        cliente.setEmail(email);
        cliente.setSenhaHash(dao.hashPassword(senha));

        if (dao.salvar(cliente)) {
            response.sendRedirect(request.getContextPath() + "/cliente/login?registro=ok");
        } else {
            request.setAttribute("erro", "Erro ao registrar. Tente novamente.");
            request.getRequestDispatcher("/registroCliente.jsp").forward(request, response);
        }
    }
}