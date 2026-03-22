package controller.admin;

import dao.AdminDAO;
import model.Admin;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/admin/login")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("adminLogado") != null) {
			response.sendRedirect(request.getContextPath() + "/admin/dashboard");
			return;
		}
		request.getRequestDispatcher("/loginAdmin.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		AdminDAO dao = new AdminDAO();
		Admin admin = dao.findByUsername(username);

		if (admin != null && dao.checkPassword(password, admin.getPasswordHash())) {
			HttpSession session = request.getSession();
			session.setAttribute("adminLogado", admin);
			response.sendRedirect(request.getContextPath() + "/admin/dashboard");
		} else {
			request.setAttribute("erro", "Usuário ou senha inválidos");
			request.getRequestDispatcher("/loginAdmin.jsp").forward(request, response);
		}
	}
}