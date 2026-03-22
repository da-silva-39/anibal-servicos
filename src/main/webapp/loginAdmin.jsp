<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp">
    <jsp:param name="cssExtra" value='<link rel="stylesheet" href="${pageContext.request.contextPath}/css/entrar.css">' />
</jsp:include>

<main class="entrar-container">
    <div class="login-card">
        <h2><i class="ph ph-lock"></i> Login Administrador</h2>
        <% if (request.getAttribute("erro") != null) { %>
            <div class="erro">${erro}</div>
        <% } %>
        <form method="post" action="${pageContext.request.contextPath}/admin/login">
            <div class="form-group">
                <label for="username">Usuário</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Senha</label>
                <input type="password" id="password" name="password" required>
                <i class="ph ph-eye toggle-password" onclick="togglePassword('password', this)"></i>
            </div>
            <button type="submit" class="btn-login">Entrar</button>
        </form>
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