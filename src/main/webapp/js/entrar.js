// Função para mostrar/esconder senha
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

// Inicialização (se houver mais interações)
document.addEventListener('DOMContentLoaded', function() {
    // Qualquer inicialização adicional
});