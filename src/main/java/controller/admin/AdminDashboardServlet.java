package controller.admin;

import dao.PedidoDAO;
import dao.VisitaDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/admin/dashboard")
public class AdminDashboardServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("adminLogado") == null) {
            response.sendRedirect(request.getContextPath() + "/admin/login");
            return;
        }

        VisitaDAO visitaDAO = new VisitaDAO();
        PedidoDAO pedidoDAO = new PedidoDAO();

        int totalVisitas = visitaDAO.contarTotalVisitas();
        int visitasHoje = visitaDAO.contarVisitasHoje();
        int totalPedidos = pedidoDAO.contarTotalPedidos();

        request.setAttribute("totalVisitas", totalVisitas);
        request.setAttribute("visitasHoje", visitasHoje);
        request.setAttribute("totalPedidos", totalPedidos);

        request.getRequestDispatcher("/dashboardAdmin.jsp").forward(request, response);
    }
}