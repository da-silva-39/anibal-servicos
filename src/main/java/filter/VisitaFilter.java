package filter;

import dao.VisitaDAO;
import model.Visita;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.time.LocalDateTime;

@WebFilter("/*")
public class VisitaFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		String ip = request.getRemoteAddr();
		String pagina = req.getRequestURI();

		Visita visita = new Visita();
		visita.setData(LocalDateTime.now());
		visita.setIp(ip);
		visita.setPagina(pagina);

		VisitaDAO dao = new VisitaDAO();
		dao.salvar(visita);

		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	}

	@Override
	public void destroy() {
	}
}