        // Slideshow
        let currentSlide = 0;
        const slides = document.querySelectorAll('.minha-div .slide');
        const totalSlides = slides.length;

        if (totalSlides > 0) {
            slides[currentSlide].style.opacity = 1;
        }

        function nextSlide() {
            slides[currentSlide].style.opacity = 0;
            currentSlide = (currentSlide + 1) % totalSlides;
            slides[currentSlide].style.opacity = 1;
        }

        setInterval(nextSlide, 4000);

		
		
		// Menu hamburger
		document.addEventListener('DOMContentLoaded', function() {
		    const menuToggle = document.querySelector('.menu-toggle');
		    const topNav = document.querySelector('.top-nav');

		    if (menuToggle && topNav) {
		        menuToggle.addEventListener('click', function() {
		            // Alterna a classe active no botão (para animação do ícone)
		            this.classList.toggle('active');
		            // Alterna a classe active no menu (para mostrar/esconder)
		            topNav.classList.toggle('active');
		        });

		        // Opcional: fechar o menu ao clicar em um link (para mobile)
		        const navLinks = topNav.querySelectorAll('a');
		        navLinks.forEach(link => {
		            link.addEventListener('click', () => {
		                if (window.innerWidth <= 768) {
		                    menuToggle.classList.remove('active');
		                    topNav.classList.remove('active');
		                }
		            });
		        });

		        // Fechar menu ao redimensionar para tela grande (se estiver aberto)
		        window.addEventListener('resize', function() {
		            if (window.innerWidth > 768) {
		                menuToggle.classList.remove('active');
		                topNav.classList.remove('active');
		                // Garante que o menu padrão apareça (já que em PC ele não é escondido)
		                topNav.style.display = ''; // Remove estilo inline se houver
		            } else {
		                // Em mobile, o menu deve estar escondido por padrão (já tratado pelo CSS)
		                topNav.classList.remove('active');
		                menuToggle.classList.remove('active');
		            }
		        });
		    }
		});