<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp">
    <jsp:param name="cssExtra" value='<link rel="stylesheet" href="${pageContext.request.contextPath}/css/entrar.css">' />
</jsp:include>

<main class="entrar-container">
    <div class="login-card">
        <h2><i class="ph ph-user"></i> Login Cliente</h2>
        <% if (request.getParameter("registro") != null) { %>
            <div class="sucesso">Cadastro realizado com sucesso! Faça login.</div>
        <% } %>
        <% if (request.getAttribute("erro") != null) { %>
            <div class="erro">${erro}</div>
        <% } %>
        <form method="post" action="${pageContext.request.contextPath}/cliente/login">
            <div class="form-group">
                <label for="email">E-mail</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="senha">Senha</label>
                <input type="password" id="senha" name="senha" required>
                <i class="ph ph-eye toggle-password" onclick="togglePassword('senha', this)"></i>
            </div>
            <button type="submit" class="btn-login">Entrar</button>
        </form>
        <p class="register-link">Não tem conta? <a href="${pageContext.request.contextPath}/cliente/registro">Registre-se</a></p>
        <p class="back-link"><a href="${pageContext.request.contextPath}/entrar.jsp">← Voltar</a></p>
    </div>
</main>

<script>
    function togglePassword(fieldId, icon) {
        const field = document.getElementById(fieldId);
        if (field.type === "password") {
            field.type = "text";
            icon.classList.remove("ph-eye");
            icon.classList.add("ph-eye-slash");
        } else {
            field.type = "password";
            icon.classList.remove("ph-eye-slash");
            icon.classList.add("ph-eye");
        }
    }
</script>

<jsp:include page="footer.jsp" />