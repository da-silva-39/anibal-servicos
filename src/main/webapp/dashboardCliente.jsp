<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, model.Pedido" %>
<jsp:include page="header.jsp">
    <jsp:param name="cssExtra" value='<link rel="stylesheet" href="${pageContext.request.contextPath}/css/entrar.css">' />
</jsp:include>

<main class="cliente-dashboard">
    <div class="dashboard-header">
        <h2><i class="ph ph-user"></i> Meu Dashboard</h2>
        <a href="${pageContext.request.contextPath}/cliente/logout" class="logout-btn">Sair</a>
    </div>
    <h3>Meus Pedidos</h3>
    <%
        List<Pedido> pedidos = (List<Pedido>) request.getAttribute("pedidos");
        if (pedidos == null || pedidos.isEmpty()) {
    %>
        <p>Você ainda não possui pedidos.</p>
    <%
        } else {
    %>
        <table class="pedidos-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Descrição</th>
                    <th>Data</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <% for (Pedido p : pedidos) { %>
                <tr>
                    <td><%= p.getId() %></td>
                    <td><%= p.getDescricao() %></td>
                    <td><%= p.getDataPedido() %></td>
                    <td><%= p.getStatus() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    <%
        }
    %>
</main>

<jsp:include page="footer.jsp" />