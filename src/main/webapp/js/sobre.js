// Animações suaves para a página Sobre
document.addEventListener('DOMContentLoaded', function() {
    // Animação de entrada para os cards
    const cards = document.querySelectorAll('.about-card, .diferencial-item, .membro-card, .depoimento-card');
    
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = '1';
                entry.target.style.transform = 'translateY(0)';
            }
        });
    }, { threshold: 0.1 });
    
    cards.forEach(card => {
        card.style.opacity = '0';
        card.style.transform = 'translateY(20px)';
        card.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
        observer.observe(card);
    });

    // Destaque suave ao passar o mouse nos cards de estatística
    const statCards = document.querySelectorAll('.stat-card');
    statCards.forEach(stat => {
        stat.addEventListener('mouseenter', () => {
            stat.style.backgroundColor = 'rgba(59, 140, 191, 0.2)';
        });
        stat.addEventListener('mouseleave', () => {
            stat.style.backgroundColor = '';
        });
    });
});