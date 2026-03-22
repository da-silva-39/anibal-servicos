<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp">
    <jsp:param name="cssExtra" value='<link rel="stylesheet" href="css/sobre.css">' />
</jsp:include>

    <main class="sobre-container">
        <!-- Hero da página (cabeçalho interno) -->
        <div class="sobre-hero">
            <div class="hero-text">
                <h1><i class="ph ph-buildings"></i> Sobre a Aníbal Serviços</h1>
                <p class="hero-subtitle">Compromisso, qualidade e tradição no transporte e fornecimento de materiais de construção em Chimoio.</p>
            </div>
            <div class="hero-stats">
                <div class="stat-card">
                    <span class="stat-number">15+</span>
                    <span class="stat-label">Anos de experiência</span>
                </div>
                <div class="stat-card">
                    <span class="stat-number">500+</span>
                    <span class="stat-label">Obras realizadas</span>
                </div>
                <div class="stat-card">
                    <span class="stat-number">2000+</span>
                    <span class="stat-label">Materiais disponíveis</span>
                </div>
                <div class="stat-card">
                    <span class="stat-number">24/7</span>
                    <span class="stat-label">Prontos para atender</span>
                </div>
            </div>
        </div>

        <!-- História / Missão / Visão / Valores -->
        <div class="about-grid">
            <div class="about-card history">
                <div class="card-icon"><i class="ph ph-clock-counter-clockwise"></i></div>
                <h2>Nossa História</h2>
                <p>A Aníbal Serviços nasceu em 2010, com o seu fundador Jo&atild;o Anibal Da Silva, por meio da visão empreendedora dele, um profissional com vasta experiência no setor de Transporte, Motorista Excelente e construção civil. Começamos com um único caminhão e o sonho de oferecer materiais de qualidade com transporte confiável. Hoje, somos referência em Chimoio, com uma frota moderna e um estaleiro repleto de materiais para todos os tipos de obra.</p>
            </div>

            <div class="about-card mission">
                <div class="card-icon"><i class="ph ph-target"></i></div>
                <h2>Missão</h2>
                <p>Fornecer materiais de construção e serviços de transporte com excelência, garantindo a satisfação dos nossos clientes através de produtos de qualidade, entregas pontuais e atendimento personalizado.</p>
            </div>

            <div class="about-card vision">
                <div class="card-icon"><i class="ph ph-eye"></i></div>
                <h2>Visão</h2>
                <p>Ser a empresa líder no centro de Moçambique no fornecimento de materiais de construção e logística, reconhecida pela integridade, inovação e compromisso com o desenvolvimento da região.</p>
            </div>

            <div class="about-card values">
                <div class="card-icon"><i class="ph ph-hand-heart"></i></div>
                <h2>Valores</h2>
                <ul>
                    <li><i class="ph ph-check-circle"></i> Integridade e transparência</li>
                    <li><i class="ph ph-check-circle"></i> Compromisso com prazos</li>
                    <li><i class="ph ph-check-circle"></i> Qualidade em cada entrega</li>
                    <li><i class="ph ph-check-circle"></i> Respeito pelo cliente</li>
                    <li><i class="ph ph-check-circle"></i> Responsabilidade ambiental</li>
                </ul>
            </div>
        </div>

        <!-- Diferenciais / Porquê escolher a Aníbal -->
        <div class="diferenciais-section">
            <h2 class="section-title"><i class="ph ph-star"></i> Porquê escolher a Aníbal Serviços?</h2>
            <div class="diferenciais-grid">
                <div class="diferencial-item">
                    <div class="dif-icon"><i class="ph ph-truck"></i></div>
                    <h3>Frota Própria</h3>
                    <p>Camiões com capacidade de 6.7 toneladas, prontos para entregas rápidas e seguras.</p>
                </div>
                <div class="diferencial-item">
                    <div class="dif-icon"><i class="ph ph-warehouse"></i></div>
                    <h3>Estaleiro Abastecido</h3>
                    <p>Blocos, tijolos, areia, pedra, estacas, bambus e muito mais, sempre em estoque.</p>
                </div>
                <div class="diferencial-item">
                    <div class="dif-icon"><i class="ph ph-clock"></i></div>
                    <h3>Entrega Rápida</h3>
                    <p>Atendemos obras de pequeno, médio e grande porte com pontualidade.</p>
                </div>
                <div class="diferencial-item">
                    <div class="dif-icon"><i class="ph ph-whatsapp-logo"></i></div>
                    <h3>Atendimento Personalizado</h3>
                    <p>Estamos sempre disponíveis para esclarecer dúvidas e dar possiveis ideias pra seu negocio.</p>
                </div>
                <div class="diferencial-item">
                    <div class="dif-icon"><i class="ph ph-handshake"></i></div>
                    <h3>Confiança e Tradição</h3>
                    <p>Mais de 500 obras realizadas e clientes satisfeitos em Chimoio e região.</p>
                </div>
                <div class="diferencial-item">
                    <div class="dif-icon"><i class="ph ph-tag"></i></div>
                    <h3>Preços Competitivos</h3>
                    <p>Oferecemos a melhor relação qualidade-preço do mercado.</p>
                </div>
            </div>
        </div>

        <!-- Equipa (fotos ilustrativas - se tiver fotos reais, substituir) -->
        <div class="equipa-section">
            <h2 class="section-title"><i class="ph ph-users"></i> Nossa Equipa</h2>
            <div class="equipa-grid">
                <div class="membro-card">
                    <div class="membro-foto"><img src="img/foto3.jpeg" alt="Aníbal" loading="lazy"></div>
                    <h3>Aníbal</h3>
                    <p>Fundador da Empresa</p>
                </div>
                <div class="membro-card">
                    <div class="membro-foto"><img src="img/foto4.jpeg" alt="Maria" loading="lazy"></div>
                    <h3>Fane</h3>
                    <p>Co-Fundadora</p>
                </div>
                <div class="membro-card">
                    <div class="membro-foto"><img src="img/foto1.jpeg" alt="João" loading="lazy"></div>
                    <h3>Silva Anibal</h3>
                    <p>Gestor de Transportes e Estaleiro</p>
                </div>
                <div class="membro-card">
                    <div class="membro-foto"><img src="img/foto2.jpeg" alt="Carlos" loading="lazy"></div>
                    <h3>Jose Anibal</h3>
                    <p>Logistica e Marketing</p>
                </div>
            </div>
        </div>

        <!-- Localização (Mapa do Google Maps) -->
        <div class="localizacao-section">
            <h2 class="section-title"><i class="ph ph-map-pin"></i> Onde Estamos</h2>
            <div class="map-container">
                <!-- Substitua o src pelo link de embed do seu local no Google Maps -->
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d551.6940686103882!2d33.458506552670876!3d-19.089184109830978!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x192b3506d645bd41%3A0x476fa2df3e4ea39b!2sAnibal%20Servicos!5e1!3m2!1spt-PT!2smz!4v1773658086035!5m2!1spt-PT!2smz" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>                
            </div>
            <div class="endereco-info">
                <p><i class="ph ph-map-pin"></i> Estaleiro Piloto, Cidade de Chimoio, Moçambique</p>
                <p><i class="ph ph-phone"></i> 873710658</p>
                <p><i class="ph ph-envelope"></i> anibal.servicos@email.com</p>
                <p><i class="ph ph-clock"></i> Segunda a Sexta: 7h - 17h | Sábado: 8h - 12h</p>
            </div>
        </div>

        <!-- Depoimentos (opcional) -->
        <div class="depoimentos-section">
            <h2 class="section-title"><i class="ph ph-chats"></i> O que dizem os nossos clientes</h2>
            <div class="depoimentos-grid">
                <div class="depoimento-card">
                    <i class="ph ph-quotes"></i>
                    <p>"A Aníbal Serviços é a nossa parceira de confiança. Sempre entregam a tempo e com qualidade."</p>
                    <h4>— Costa Carlos Chico</h4>
                </div>
                <div class="depoimento-card">
                    <i class="ph ph-quotes"></i>
                    <p>"Materiais de primeira e transporte eficiente. Recomendo a todos."</p>
                    <h4>— Mofat Quembo</h4>
                </div>
                <div class="depoimento-card">
                    <i class="ph ph-quotes"></i>
                    <p>"Estaleiro com material sempre desponivel e preço acessivel."</p>
                    <h4>— Pedro, Engenheiro</h4>
                </div>
            </div>
        </div>

        <!-- Chamada para ação (contato) -->
        <div class="cta-section">
            <div class="cta-content">
                <h2>Pronto para começar o seu projeto?</h2>
                <p>Entre em contacto connosco e solicite um orçamento sem compromisso.</p>
                <a href="contacto.jsp" class="cta-button">Falar com a equipa <i class="ph ph-whatsapp-logo"></i></a>
            </div>
        </div>

    <jsp:include page="footer.jsp" />

    <!-- JS para animações simples -->
