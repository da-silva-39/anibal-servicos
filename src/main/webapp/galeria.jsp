<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp">
    <jsp:param name="cssExtra" value='<link rel="stylesheet" href="css/galeria.css">' />
</jsp:include>

    <main class="galeria-container">
        <!-- HEADER DA GALERIA -->
        <div class="galeria-header">
            <div class="header-content">
                <h1><i class="ph ph-images"></i> Galeria de Projetos</h1>
                <p class="header-subtitle">Conheça nossos materiais, equipamentos e trabalhos realizados</p>
            </div>
            <div class="header-stats">
                <div class="stat-chip">
                    <i class="ph ph-camera"></i>
                    <span>28 Fotos</span>
                </div>
                <div class="stat-chip">
                    <i class="ph ph-video"></i>
                    <span>6 Vídeos</span>
                </div>
            </div>
        </div>

        <!-- FILTROS POR CATEGORIA -->
        <div class="gallery-filters">
            <button class="filter-btn active" data-filter="all">Todos</button>
            <button class="filter-btn" data-filter="blocos">Blocos</button>
            <button class="filter-btn" data-filter="bambus">Bambus</button>
            <button class="filter-btn" data-filter="estacas">Estacas</button>
            <button class="filter-btn" data-filter="tijolos">Tijolos</button>
            <button class="filter-btn" data-filter="transportadora">Transportadora Aníbal</button>
        </div>

        <!-- GALERIA MASONRY (GRID DINÂMICO) -->
        <div class="gallery-grid" id="galleryGrid">
            <!-- BLOCOS - 8 imagens -->
            <div class="gallery-item" data-category="blocos" data-type="image">
                <div class="item-media">
                    <img src="img/images/blocos/img33.jpeg" alt="Bloco 10" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                      <h3>Blocos</h3>
                    <p>Blocos de qualidade: an&uacute;ncio</p>
                </div>
            </div>

            <div class="gallery-item" data-category="blocos" data-type="image">
                <div class="item-media">
                    <img src="img/images/blocos/img23.jpeg" alt="Bloco 12" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                      <h3>Blocos</h3>
                    <p>Blocos de qualidade: an&uacute;ncio</p>
                </div>
            </div>

            <div class="gallery-item" data-category="blocos" data-type="image">
                <div class="item-media">
                    <img src="img/images/blocos/img13.jpeg" alt="Bloco 15" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                     <h3>Blocos</h3>
                    <p>Blocos de qualidade: an&uacute;ncio</p>
                </div>
            </div>

            <div class="gallery-item" data-category="blocos" data-type="image">
                <div class="item-media">
                    <img src="img/images/blocos/img38.jpeg" alt="Bloco 20" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                      <h3>Blocos</h3>
                    <p>Blocos de qualidade: an&uacute;ncio</p>
                </div>
            </div>

            <div class="gallery-item" data-category="blocos" data-type="image">
                <div class="item-media">
                    <img src="img/images/blocos/img15.jpeg" alt="Bloco Estrutural" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Blocos</h3>
                    <p>Blocos de qualidade: an&uacute;ncio: Qualidade e Resistencia</p>
                </div>
            </div>

            <div class="gallery-item" data-category="blocos" data-type="image">
                <div class="item-media">
                    <img src="img/images/blocos/img10.jpeg" alt="Bloco Vedação" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Blocos</h3>
                    <p>Blocos de qualidade: an&uacute;ncio</p>
                </div>
            </div>

            <div class="gallery-item" data-category="blocos" data-type="image">
                <div class="item-media">
                    <img src="img/images/blocos/img11.jpeg" alt="Bloco Canaleta" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Blocos</h3>
                    <p>Blocos de qualidade: an&uacute;ncio</p>
                </div>
            </div>

            <div class="gallery-item" data-category="blocos" data-type="image">
                <div class="item-media">
                    <img src="img/images/blocos/img14.jpeg" alt="Estoque Blocos" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Blocos</h3>
                    <p>Estaleiro Piloto - Chimoio: An&uacute;ncio edit</p>
                </div>
            </div>
           

            <div class="gallery-item" data-category="bambus" data-type="image">
                <div class="item-media">
                    <img src="img/images/bambus_estacas/img20.jpeg" alt="Bambu Natural" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Bambu Natural</h3>
                    <p>Diâmetro: 4-8cm - Para estruturas</p>
                </div>
            </div>

            <div class="gallery-item" data-category="bambus" data-type="image">
                <div class="item-media">
                    <img src="img/images/bambus_estacas/bambus2.jpg" alt="Bambu Gross" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Bambu Natural</h3>
                    <p>Diâmetro: 6-8cm</p>
                </div>
            </div>
 <!-- BAMBUS - 6 imagens -->
            <div class="gallery-item" data-category="estacas" data-type="image">
                <div class="item-media">
                    <img src="img/images/bambus_estacas/img18.jpeg" alt="Bambu Tratado" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Estacas Naturais</h3>
                    <p>Diâmetro: 8-16cm - de qualidade</p>
                </div>
            </div>
            
             <div class="gallery-item" data-category="estacas" data-type="image">
                <div class="item-media">
                    <img src="img/images/bambus_estacas/estaca.jpg" alt="Bambu Tratado" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Estacas Naturais</h3>
                    <p>Diâmetro: 8-16cm - de qualidade</p>
                </div>
            </div>
            
             <div class="gallery-item" data-category="estacas" data-type="image">
                <div class="item-media">
                    <img src="img/images/bambus_estacas/estaca2.jpg" alt="Bambu Tratado" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Estacas Naturais</h3>
                    <p>Diâmetro: 8-16cm - de qualidade</p>
                </div>
            </div>
            
            


            <!-- TIJOLOS - 6 imagens -->
            <div class="gallery-item" data-category="tijolos" data-type="image">
                <div class="item-media">
                    <img src="img/images/tijolos/tijolos2.jpg" alt="Tijolo Queimado" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Tijolo Queimado</h3>
                    <p>Cerâmica vermelha </p>
                </div>
            </div>

            <div class="gallery-item" data-category="tijolos" data-type="image">
                <div class="item-media">
                    <img src="img/images/tijolos/img21.jpeg" alt="Tijolo Maciço" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Tijolo Maciço</h3>
                    <p>Alta resistência - 5x10x20cm</p>
                </div>
            </div>

            <div class="gallery-item" data-category="tijolos" data-type="image">
                <div class="item-media">
                    <img src="img/images/tijolos/tijolos3.jpg" alt="Tijolo Refratário" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Tijolos</h3>
                    <p>Multiusos</p>
                </div>
            </div>

            <div class="gallery-item" data-category="tijolos" data-type="image">
                <div class="item-media">
                    <img src="img/images/tijolos/tijolos.jpg" alt="Tijolo Laminado" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Tijolos </h3>
                    <p>Multiusos</p>
                </div>
            </div>

            <div class="gallery-item" data-category="transportadora" data-type="image">
                <div class="item-media">
                    <img src="img/images/TransAnibal/img1.jpeg" alt="Transporte" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Transporte Anibal</h3>
                    <p>Servi&ccedil;os de Transporte</p>
                </div>
            </div>

            <!-- TRANSPORTADORA ANÍBAL - 6 imagens + 7 vídeos -->
            <div class="gallery-item" data-category="transportadora" data-type="image">
                <div class="item-media">
                    <img src="img/images/TransAnibal/img32.jpeg" alt="Camião 6.7T" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Camião 6.7 Toneladas</h3>
                    <p>Capacidade total - Frota Aníbal</p>
                </div>
            </div>

            <div class="gallery-item" data-category="transportadora" data-type="image">
                <div class="item-media">
                    <img src="img/images/TransAnibal/img29.jpeg" alt="Carregamento" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Operação de Carregamento</h3>
                    <p>Carregamento de Areia </p>
                </div>
            </div>

            <div class="gallery-item" data-category="transportadora" data-type="image">
                <div class="item-media">
                    <img src="img/images/TransAnibal/img41.jpeg" alt="Entrega" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Entrega em Obra</h3>
                    <p>Materiais no local da construção</p>
                </div>
            </div>

            <div class="gallery-item" data-category="transportadora" data-type="image">
                <div class="item-media">
                    <img src="img/images/TransAnibal/imgcar.jpg" alt="Frota" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Frota Aníbal</h3>
                    <p>Camiões prontos para operação</p>
                </div>
            </div>

            <div class="gallery-item" data-category="transportadora" data-type="image">
                <div class="item-media">
                    <img src="img/images/TransAnibal/img28.jpeg" alt="Descarregamento" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Descarregamento</h3>
                    <p>Areia sendo entregue</p>
                </div>
            </div>

            <div class="gallery-item" data-category="transportadora" data-type="image">
                <div class="item-media">
                    <img src="img/images/TransAnibal/img36.jpeg" alt="Equipe" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Equipe de Transporte</h3>
                    <p>Motoristas experientes</p>
                </div>
            </div>
            
            <div class="gallery-item" data-category="transportadora" data-type="image">
                <div class="item-media">
                    <img src="img/images/TransAnibal/img40.jpeg" alt="Equipe" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Carregamento de Blocos</h3>
                    <p>Processo por tras</p>
                </div>
            </div>
            
            <div class="gallery-item" data-category="transportadora" data-type="image">
                <div class="item-media">
                    <img src="img/images/TransAnibal/img34.jpeg" alt="Noturn" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Entrega Noturna</h3>
                    <p>Tudo pela satisfa&ccedil;&atild;o do cliente</p>
                </div>
            </div>
            
             <div class="gallery-item" data-category="transportadora" data-type="image">
                <div class="item-media">
                    <img src="img/images/TransAnibal/img30.jpeg" alt="Noturn" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Carregamento de Pedra-Zembe</h3>
                    <p>Compromisso</p>
                </div>
            </div>
            
             <div class="gallery-item" data-category="transportadora" data-type="image">
                <div class="item-media">
                    <img src="img/images/TransAnibal/img39.jpeg" alt="Noturn" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Anibal Servi&ccedil;os</h3>
                    <p>Seus Servic&ccedil;os, Nossa Prioridade</p>
                </div>
            </div>

            <!-- VÍDEOS - 7 vídeos (categoria transportadora) -->
            <div class="gallery-item video-item" data-category="transportadora" data-type="video" data-video-id="vid1">
                <div class="item-media video-container">
                    <video src="img/Videos/video5.mp4" loop muted playsinline preload="metadata"></video>
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-play-circle"></i></span>
                    </div>
                    <div class="video-duration">00:13</div>
                </div>
                <div class="item-info">
                    <h3>Operação de Carga</h3>
                    <p>Carregamento de Pedra Fina, em tempo real - Zembe</p>
                </div>
            </div>


            <div class="gallery-item video-item" data-category="transportadora" data-type="video" data-video-id="vid3">
                <div class="item-media video-container">
                    <video src="img/Videos/video1.mp4" loop muted playsinline preload="metadata"></video>
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-play-circle"></i></span>
                    </div>
                    <div class="video-duration">00:42</div>
                </div>
                <div class="item-info">
                    <h3>Descarregamento de Areia</h3>
                    <p>Agilidade na entrega</p>
                </div>
            </div>
            
            <div class="gallery-item video-item" data-category="transportadora" data-type="video" data-video-id="vid5">
                <div class="item-media video-container">
                    <video src="img/Videos/video3.mp4" loop muted playsinline preload="metadata"></video>
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-play-circle"></i></span>
                    </div>
                    <div class="video-duration">00:17</div>
                </div>
                <div class="item-info">
                    <h3>Descarregamento de Blocos</h3>
                    <p>Anibal Servi&ccedil;os garante que o seu material chegue seguro e na sua Obra </p>
                </div>
            </div>

			<div class="gallery-item video-item" data-category="transportadora" data-type="video" data-video-id="vid6">
                <div class="item-media video-container">
                    <video src="img/Videos/video4.mp4" loop muted playsinline preload="metadata"></video>
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-play-circle"></i></span>
                    </div>
                    <div class="video-duration">00:14</div>
                </div>
                <div class="item-info">
                    <h3>Descarregamento de Areia</h3>
                    <p>Garantimos entrega r&aacute;pida e efici&ecirc;ncia no trabalho</p>
                </div>
            </div>

            <div class="gallery-item video-item" data-category="transportadora" data-type="video" data-video-id="vid4">
                <div class="item-media video-container">
                    <video src="img/Videos/video2.mp4" loop muted playsinline preload="metadata"></video>
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-play-circle"></i></span>
                    </div>
                    <div class="video-duration">00:55</div>
                </div>
                <div class="item-info">
                    <h3>Anibal Servi&ccedil;os Ltd</h3>
                    <p>Precisão na movimentação e facil acesso</p>
                </div>
            </div>

          
             <div class="gallery-item" data-category="transportadora" data-type="image">
                <div class="item-media">
                    <img src="img/images/TransAnibal/img3.jpeg" alt="Equipe" loading="lazy">
                    <div class="media-overlay">
                        <span class="media-icon"><i class="ph ph-magnifying-glass-plus"></i></span>
                    </div>
                </div>
                <div class="item-info">
                    <h3>Anibal Servi&ccedil;os Ltd</h3>
                    <p>Slogan</p>
                </div>
            </div>

            

           
        </div>
    </main>

    <!-- LIGHTBOX (MODAL) -->
    <div id="lightbox" class="lightbox">
        <div class="lightbox-close"><i class="ph ph-x"></i></div>
        <div class="lightbox-content">
            <div class="lightbox-media"></div>
            <div class="lightbox-info">
                <h3 class="lightbox-title"></h3>
                <p class="lightbox-description"></p>
            </div>
        </div>
        <div class="lightbox-nav lightbox-prev"><i class="ph ph-caret-left"></i></div>
        <div class="lightbox-nav lightbox-next"><i class="ph ph-caret-right"></i></div>
    </div>

    <jsp:include page="footer.jsp" />


