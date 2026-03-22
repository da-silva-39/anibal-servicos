package controller.cliente;

import dao.PedidoDAO;
import model.Cliente;
import model.Pedido;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/cliente/dashboard")
public class ClienteDashboardServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("clienteLogado") == null) {
            response.sendRedirect(request.getContextPath() + "/cliente/login");
            return;
        }

        Cliente cliente = (Cliente) session.getAttribute("clienteLogado");
        PedidoDAO pedidoDAO = new PedidoDAO();
        List<Pedido> pedidos = pedidoDAO.listarPorCliente(cliente.getId());

        request.setAttribute("pedidos", pedidos);
        request.getRequestDispatcher("/dashboardCliente.jsp").forward(request, response);
    }
}