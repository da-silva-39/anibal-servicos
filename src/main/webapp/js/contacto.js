/**
 * contacto.js - Interatividade para a página de contacto
 * Aníbal Serviços
 */

document.addEventListener('DOMContentLoaded', function() {
    // ===== FAQ ACCORDION =====
    const faqItems = document.querySelectorAll('.faq-item');
    faqItems.forEach(item => {
        const question = item.querySelector('.faq-question');
        if (question) {
            question.addEventListener('click', () => {
                // Fecha os outros itens (opcional)
                faqItems.forEach(i => {
                    if (i !== item && i.classList.contains('active')) {
                        i.classList.remove('active');
                        const icon = i.querySelector('.faq-question i');
                        if (icon) icon.style.transform = 'rotate(0)';
                    }
                });
                // Abre/fecha o item clicado
                item.classList.toggle('active');
                const icon = question.querySelector('i');
                if (icon) {
                    icon.style.transform = item.classList.contains('active') ? 'rotate(180deg)' : 'rotate(0)';
                }
            });
        }
    });

    // ===== EFEITO DE LOADING NO BOTÃO DE ENVIO =====
    const form = document.getElementById('contactForm');
    const submitBtn = document.getElementById('submitBtn');
    const btnText = submitBtn ? submitBtn.querySelector('.btn-text') : null;
    const btnIcon = submitBtn ? submitBtn.querySelector('.btn-icon') : null;
    const btnLoading = submitBtn ? submitBtn.querySelector('.btn-loading') : null;

    if (form && submitBtn) {
        form.addEventListener('submit', function() {
            // Desabilita o botão e mostra o loading
            submitBtn.disabled = true;
            if (btnText) btnText.style.display = 'none';
            if (btnIcon) btnIcon.style.display = 'none';
            if (btnLoading) btnLoading.style.display = 'inline-flex';

            // (O formulário continuará o envio normal)
        });
    }

    // ===== FUNÇÃO PARA RESETAR O FORMULÁRIO (chamada pelo botão "Nova Mensagem") =====
    window.resetContactForm = function() {
        const form = document.getElementById('contactForm');
        const successMessage = document.getElementById('successMessage');
        const feedbackDiv = document.getElementById('formFeedback');

        if (form) {
            form.style.display = 'flex';
            form.reset();
        }
        if (successMessage) {
            successMessage.style.display = 'none';
        }
        if (feedbackDiv) {
            feedbackDiv.style.display = 'none';
            feedbackDiv.innerHTML = '';
        }

        // Reabilita o botão (caso esteja desabilitado)
        if (submitBtn) {
            submitBtn.disabled = false;
            if (btnText) btnText.style.display = 'inline';
            if (btnIcon) btnIcon.style.display = 'inline';
            if (btnLoading) btnLoading.style.display = 'none';
        }
    };
});