<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp">
    <jsp:param name="cssExtra" value='<link rel="stylesheet" href="${pageContext.request.contextPath}/css/entrar.css">' />
</jsp:include>

<main class="entrar-container">
    <div class="account-selection">
        <h1><i class="ph ph-user-circle"></i> Acessar</h1>
        <p>Escolha o tipo de conta para continuar</p>
        <div class="account-options">
            <a href="${pageContext.request.contextPath}/admin/login" class="account-card">
                <i class="ph ph-shield"></i>
                <h2>Administrador</h2>
                <p>Gerenciar pedidos, estatísticas e configurações</p>
                <span class="btn">Entrar como Admin</span>
            </a>
            <a href="${pageContext.request.contextPath}/cliente/login" class="account-card">
                <i class="ph ph-user"></i>
                <h2>Cliente</h2>
                <p>Acompanhar pedidos e histórico</p>
                <span class="btn">Entrar como Cliente</span>
            </a>
        </div>
        <p class="register-link">Novo cliente? <a href="${pageContext.request.contextPath}/cliente/registro">Crie sua conta</a></p>
    </div>
</main>

<jsp:include page="footer.jsp" />