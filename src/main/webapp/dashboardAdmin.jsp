<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp">
    <jsp:param name="cssExtra" value='<link rel="stylesheet" href="${pageContext.request.contextPath}/css/entrar.css">' />
</jsp:include>

<main class="admin-dashboard">
    <div class="dashboard-header">
        <h2><i class="ph ph-chart-line"></i> Dashboard Administrativo</h2>
        <a href="${pageContext.request.contextPath}/admin/logout" class="logout-btn">Sair</a>
    </div>
    <div class="stats-grid">
        <div class="stat-card">
            <i class="ph ph-users"></i>
            <div>
                <span class="stat-value">${totalVisitas}</span>
                <span class="stat-label">Total de Visitas</span>
            </div>
        </div>
        <div class="stat-card">
            <i class="ph ph-calendar"></i>
            <div>
                <span class="stat-value">${visitasHoje}</span>
                <span class="stat-label">Visitas Hoje</span>
            </div>
        </div>
        <div class="stat-card">
            <i class="ph ph-shopping-cart"></i>
            <div>
                <span class="stat-value">${totalPedidos}</span>
                <span class="stat-label">Total de Pedidos</span>
            </div>
        </div>
    </div>
    <!-- Aqui podem ser listados os pedidos recentes, etc. -->
</main>

<jsp:include page="footer.jsp" />