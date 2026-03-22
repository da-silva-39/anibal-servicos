// Galeria Interativa - Aníbal Serviços
document.addEventListener('DOMContentLoaded', function() {
    // Elementos
    const galleryItems = document.querySelectorAll('.gallery-item');
    const filterButtons = document.querySelectorAll('.filter-btn');
    const lightbox = document.getElementById('lightbox');
    const lightboxMedia = document.querySelector('.lightbox-media');
    const lightboxTitle = document.querySelector('.lightbox-title');
    const lightboxDesc = document.querySelector('.lightbox-description');
    const lightboxClose = document.querySelector('.lightbox-close');
    const lightboxPrev = document.querySelector('.lightbox-prev');
    const lightboxNext = document.querySelector('.lightbox-next');
    
    let currentIndex = 0;
    let filteredItems = [];
    let currentVideo = null;

    // ===== FILTROS =====
    filterButtons.forEach(btn => {
        btn.addEventListener('click', function() {
            // Atualiza botão ativo
            filterButtons.forEach(b => b.classList.remove('active'));
            this.classList.add('active');
            
            const filter = this.dataset.filter;
            
            // Filtra itens
            galleryItems.forEach(item => {
                if (filter === 'all' || item.dataset.category === filter) {
                    item.style.display = 'block';
                    setTimeout(() => {
                        item.style.opacity = '1';
                        item.style.transform = 'scale(1)';
                    }, 10);
                } else {
                    item.style.opacity = '0';
                    item.style.transform = 'scale(0.8)';
                    setTimeout(() => {
                        item.style.display = 'none';
                    }, 300);
                }
            });
        });
    });

    // ===== VIDEO HOVER PLAY =====
    const videoItems = document.querySelectorAll('.video-item .item-media video');
    
    videoItems.forEach(video => {
        const container = video.closest('.video-container');
        
        // Play no hover
        video.addEventListener('mouseenter', function() {
            this.play().catch(e => console.log('Autoplay bloqueado:', e));
        });
        
        // Pause ao sair
        video.addEventListener('mouseleave', function() {
            this.pause();
            this.currentTime = 0; // Volta ao início
        });
        
        // Previne pause ao clicar no video (para abrir lightbox)
        video.addEventListener('click', function(e) {
            e.stopPropagation();
        });
    });

    // ===== LIGHTBOX =====
    function openLightbox(index) {
        // Atualiza lista filtrada
        filteredItems = Array.from(document.querySelectorAll('.gallery-item[style*="display: block"], .gallery-item:not([style*="display: none"])'));
        
        if (filteredItems.length === 0) return;
        
        currentIndex = index;
        const item = filteredItems[currentIndex];
        const type = item.dataset.type;
        const title = item.querySelector('.item-info h3').textContent;
        const desc = item.querySelector('.item-info p').textContent;
        
        // Pausa qualquer vídeo que esteja rodando
        if (currentVideo) {
            currentVideo.pause();
        }
        
        // Limpa media anterior
        lightboxMedia.innerHTML = '';
        
        // Cria novo media
        if (type === 'video') {
            const video = document.createElement('video');
            video.src = item.querySelector('video').src;
            video.controls = true;
            video.autoplay = true;
            video.className = 'lightbox-video';
            lightboxMedia.appendChild(video);
            currentVideo = video;
        } else {
            const img = document.createElement('img');
            img.src = item.querySelector('img').src;
            img.alt = title;
            lightboxMedia.appendChild(img);
            currentVideo = null;
        }
        
        lightboxTitle.textContent = title;
        lightboxDesc.textContent = desc;
        
        lightbox.classList.add('active');
        document.body.style.overflow = 'hidden';
    }
    
    function closeLightbox() {
        if (currentVideo) {
            currentVideo.pause();
            currentVideo = null;
        }
        lightbox.classList.remove('active');
        document.body.style.overflow = '';
    }
    
    function navigateLightbox(direction) {
        if (filteredItems.length === 0) return;
        
        currentIndex = (currentIndex + direction + filteredItems.length) % filteredItems.length;
        
        const item = filteredItems[currentIndex];
        const type = item.dataset.type;
        const title = item.querySelector('.item-info h3').textContent;
        const desc = item.querySelector('.item-info p').textContent;
        
        // Pausa vídeo atual
        if (currentVideo) {
            currentVideo.pause();
        }
        
        // Atualiza media
        lightboxMedia.innerHTML = '';
        
        if (type === 'video') {
            const video = document.createElement('video');
            video.src = item.querySelector('video').src;
            video.controls = true;
            video.autoplay = true;
            video.className = 'lightbox-video';
            lightboxMedia.appendChild(video);
            currentVideo = video;
        } else {
            const img = document.createElement('img');
            img.src = item.querySelector('img').src;
            img.alt = title;
            lightboxMedia.appendChild(img);
            currentVideo = null;
        }
        
        lightboxTitle.textContent = title;
        lightboxDesc.textContent = desc;
    }
    
    // Eventos de clique nos itens
    galleryItems.forEach((item, index) => {
        item.addEventListener('click', function() {
            openLightbox(index);
        });
    });
    
    // Controles do lightbox
    lightboxClose.addEventListener('click', closeLightbox);
    lightboxPrev.addEventListener('click', () => navigateLightbox(-1));
    lightboxNext.addEventListener('click', () => navigateLightbox(1));
    
    // Teclado
    document.addEventListener('keydown', function(e) {
        if (!lightbox.classList.contains('active')) return;
        
        switch(e.key) {
            case 'Escape':
                closeLightbox();
                break;
            case 'ArrowLeft':
                navigateLightbox(-1);
                break;
            case 'ArrowRight':
                navigateLightbox(1);
                break;
        }
    });
    
    // Clique fora para fechar
    lightbox.addEventListener('click', function(e) {
        if (e.target === lightbox) {
            closeLightbox();
        }
    });

    // ===== LAZY LOADING =====
    const imageObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.src = img.dataset.src;
                img.classList.remove('loading');
                observer.unobserve(img);
            }
        });
    });
    
    document.querySelectorAll('img[data-src]').forEach(img => {
        imageObserver.observe(img);
    });

    // ===== ANIMAÇÃO DE ENTRADA =====
    galleryItems.forEach((item, index) => {
        item.style.opacity = '0';
        item.style.transform = 'translateY(20px)';
        setTimeout(() => {
            item.style.transition = 'all 0.5s ease';
            item.style.opacity = '1';
            item.style.transform = 'translateY(0)';
        }, 100 + (index * 30));
    });
});