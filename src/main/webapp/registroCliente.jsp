<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp">
    <jsp:param name="cssExtra" value='<link rel="stylesheet" href="${pageContext.request.contextPath}/css/entrar.css">' />
</jsp:include>

<main class="entrar-container">
    <div class="login-card">
        <h2><i class="ph ph-user-plus"></i> Registro de Cliente</h2>
        <% if (request.getAttribute("erro") != null) { %>
            <div class="erro">${erro}</div>
        <% } %>
        <form method="post" action="${pageContext.request.contextPath}/cliente/registro">
            <div class="form-group">
                <label for="nome">Nome Completo</label>
                <input type="text" id="nome" name="nome" required>
            </div>
            <div class="form-group">
                <label for="email">E-mail</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="senha">Senha</label>
                <input type="password" id="senha" name="senha" required>
                <i class="ph ph-eye toggle-password" onclick="togglePassword('senha', this)"></i>
            </div>
            <div class="form-group">
                <label for="confirmarSenha">Confirmar Senha</label>
                <input type="password" id="confirmarSenha" name="confirmarSenha" required>
                <i class="ph ph-eye toggle-password" onclick="togglePassword('confirmarSenha', this)"></i>
            </div>
            <button type="submit" class="btn-login">Registrar</button>
        </form>
        <p class="register-link">Já tem conta? <a href="${pageContext.request.contextPath}/cliente/login">Faça login</a></p>
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