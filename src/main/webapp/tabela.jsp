<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp">
    <jsp:param name="cssExtra" value='<link rel="stylesheet" href="css/tabela.css">' />
</jsp:include>

    <main class="precos-container">
        <!-- HERO SECTION com estatísticas -->
        <div class="pricing-hero">
            <div class="hero-content">
                <h1>📋 Tabela de Preços</h1>
                <p class="hero-subtitle">Materiais de construção com os melhores preços de Chimoio</p>
                <div class="hero-stats">
                    <div class="stat-item">
                        <span class="stat-value">50+</span>
                        <span class="stat-label">Materiais</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-value">6.7T</span>
                        <span class="stat-label">Capacidade</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-value">24h a 48h</span>
                        <span class="stat-label">Entrega</span>
                    </div>
                </div>
            </div>
            <div class="hero-contact">
                <div class="contact-chip">
                    <i class="ph ph-map-pin"></i>
                    <span>Estaleiro Piloto, Chimoio</span>
                </div>
                <div class="contact-chip whatsapp">
                    <i class="ph ph-whatsapp-logo"></i>
                    <span>873710658</span>
                </div>
            </div>
        </div>

        <!-- BARRA DE PESQUISA E FILTROS -->
        <div class="search-filter-bar">
            <div class="search-wrapper">
                <i class="ph ph-magnifying-glass"></i>
                <input type="text" id="searchInput" placeholder="Pesquisar material... (ex: bloco, areia, pedra)" autocomplete="off">
            </div>
            <div class="filter-buttons">
                <button class="filter-btn active" data-filter="all">Todos</button>
                <button class="filter-btn" data-filter="blocos">Blocos</button>
                <button class="filter-btn" data-filter="areia">Areia</button>
                <button class="filter-btn" data-filter="pedra">Pedra</button>
                <button class="filter-btn" data-filter="estacas">Estacas</button>
            </div>
        </div>

        <!-- GRADE DE PREÇOS (com data-atributos para filtro) -->
        <div class="pricing-grid" id="pricingGrid">
            
            <!-- BLOCOS E TIJOLOS -->
            <section class="pricing-category" data-category="blocos">
                <div class="category-header">
                    <div class="header-icon">
                        <i class="ph ph-cubes"></i>
                    </div>
                    <div>
                        <h2>Blocos & Tijolos</h2>
                        <span class="item-count">4 itens</span>
                    </div>
                </div>
                <div class="items-list">
                    <div class="item-row" data-item="bloco 10">
                        <div class="item-info">
                            <span class="item-name">BLOCO 10</span>
                            <span class="item-desc">Dimensões: 10x20x40</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">18 MT</span>
                            <span class="item-unit">por unidade</span>
                        </div>
                    </div>
                    <div class="item-row" data-item="bloco 12">
                        <div class="item-info">
                            <span class="item-name">BLOCO 12</span>
                            <span class="item-desc">Dimensões: 12x20x40</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">20 MT</span>
                            <span class="item-unit">por unidade</span>
                        </div>
                    </div>
                    <div class="item-row" data-item="bloco 15">
                        <div class="item-info">
                            <span class="item-name">BLOCO 15</span>
                            <span class="item-desc">Dimensões: 15x20x40</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">22 MT</span>
                            <span class="item-unit">por unidade</span>
                        </div>
                    </div>
                    <div class="item-row" data-item="tijolo queimado">
                        <div class="item-info">
                            <span class="item-name">TIJOLO QUEIMADO</span>
                            <span class="item-desc">Cerâmica vermelha</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">9 MT</span>
                            <span class="item-unit">por unidade</span>
                        </div>
                    </div>
                </div>
                <div class="category-badge special">
                    <i class="ph ph-truck"></i>
                    <span>Transporte grátis acima de 500 blocos</span>
                </div>
            </section>

            <!-- AREIA -->
            <section class="pricing-category" data-category="areia">
                <div class="category-header">
                    <div class="header-icon">
                        <i class="ph ph-drop"></i>
                    </div>
                    <div>
                        <h2>Areia</h2>
                        <span class="item-count">4 itens</span>
                    </div>
                </div>
                <div class="items-list">
                    <div class="item-row" data-item="areia fina">
                        <div class="item-info">
                            <span class="item-name">AREIA FINA</span>
                            <span class="item-desc">Peneirada, para reboco</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">2.500 MT</span>
                            <span class="item-unit">por m³</span>
                        </div>
                    </div>
                    <div class="item-row" data-item="areia vermelha entulho">
                        <div class="item-info">
                            <span class="item-name">AREIA VERMELHA</span>
                            <span class="item-desc">Entulho/aterro</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">3000 MT</span>
                            <span class="item-unit">por m³</span>
                        </div>
                    </div>
                    <div class="item-row" data-item="areia grossa branca">
                        <div class="item-info">
                            <span class="item-name">AREIA GROSSA BRANCA</span>
                            <span class="item-desc">Para concreto</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">2.800 MT</span>
                            <span class="item-unit">por m³</span>
                        </div>
                    </div>
                    <div class="item-row" data-item="areia grossa rio">
                        <div class="item-info">
                            <span class="item-name">AREIA GROSSA RIO</span>
                            <span class="item-desc">Lavada, qualidade superior</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">3.000 MT</span>
                            <span class="item-unit">por m³</span>
                        </div>
                    </div>
                </div>
                <div class="category-badge included">
                    <i class="ph ph-check-circle"></i>
                    <span>Compra e transporte inclusos</span>
                </div>
            </section>

            <!-- PEDRA -->
            <section class="pricing-category" data-category="pedra">
                <div class="category-header">
                    <div class="header-icon">
                        <i class="ph ph-mountains"></i>
                    </div>
                    <div>
                        <h2>Pedra</h2>
                        <span class="item-count">5 itens</span>
                    </div>
                </div>
                <div class="items-list">
                    <div class="item-row" data-item="pedra grossa rachao">
                        <div class="item-info">
                            <span class="item-name">PEDRA GROSSA (RACHÃO)</span>
                            <span class="item-desc">Para fundação</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">5.500 MT</span>
                            <span class="item-unit">Por carada</span>
                        </div>
                    </div>
                    <div class="item-row" data-item="pedra 2/5">
                        <div class="item-info">
                            <span class="item-name">PEDRA 2/5</span>
                            <span class="item-desc">Brita graduada</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">6.000 MT</span>
                            <span class="item-unit">Por carada</span>
                        </div>
                    </div>
                    <div class="item-row" data-item="pedra 1/5">
                        <div class="item-info">
                            <span class="item-name">PEDRA 1/5</span>
                            <span class="item-desc">Brita média</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">7.000 MT</span>
                            <span class="item-unit">Por carada</span>
                        </div>
                    </div>
                    <div class="item-row" data-item="pedra fina brita normal">
                        <div class="item-info">
                            <span class="item-name">PEDRA FINA (BRITA NORMAL)</span>
                            <span class="item-desc">Para concreto</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">8.000 MT</span>
                            <span class="item-unit">Por carada</span>
                        </div>
                    </div>
                    <div class="item-row" data-item="pedra fina brita zembe">
                        <div class="item-info">
                            <span class="item-name">PEDRA FINA (BRITA ZEMBE)</span>
                            <span class="item-desc">Brita de alta qualidade</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">12.000 MT</span>
                            <span class="item-unit">Por carada</span>
                        </div>
                    </div>
                </div>
                <div class="category-badge included">
                    <i class="ph ph-check-circle"></i>
                    <span>Compra e transporte inclusos</span>
                </div>
            </section>

            <!-- ESTACAS / BARROTES / BAMBUS -->
            <section class="pricing-category" data-category="estacas">
                <div class="category-header">
                    <div class="header-icon">
                        <i class="ph ph-tree"></i>
                    </div>
                    <div>
                        <h2>Estacas & Bambus</h2>
                        <span class="item-count">5 itens</span>
                    </div>
                </div>
                <div class="items-list">
                    <div class="item-row" data-item="estacas finas">
                        <div class="item-info">
                            <span class="item-name">ESTACAS FINAS</span>
                            <span class="item-desc">Diâmetro: 5-8cm</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">150 MT</span>
                            <span class="item-unit">por unidade</span>
                        </div>
                    </div>
                    <div class="item-row" data-item="estacas semi-medias">
                        <div class="item-info">
                            <span class="item-name">ESTACAS SEMI-MÉDIAS</span>
                            <span class="item-desc">Diâmetro: 8-12cm</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">250 MT</span>
                            <span class="item-unit">por unidade</span>
                        </div>
                    </div>
                    <div class="item-row" data-item="estacas medias">
                        <div class="item-info">
                            <span class="item-name">ESTACAS MÉDIAS</span>
                            <span class="item-desc">Diâmetro: 12-15cm</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">350 MT</span>
                            <span class="item-unit">por unidade</span>
                        </div>
                    </div>
                    <div class="item-row" data-item="estacas grossas">
                        <div class="item-info">
                            <span class="item-name">ESTACAS GROSSAS</span>
                            <span class="item-desc">Diâmetro: 14-19cm</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">500 MT</span>
                            <span class="item-unit">por unidade</span>
                        </div>
                    </div>
                    <div class="item-row" data-item="bambus">
                        <div class="item-info">
                            <span class="item-name">BAMBUS</span>
                            <span class="item-desc">Tratados, 6 a 8m</span>
                        </div>
                        <div class="item-price-wrapper">
                            <span class="item-price">150 MT</span>
                            <span class="item-unit">Por Conjunto de 5 bambus</span>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <!-- RESULTADO DA PESQUISA (vazio inicialmente) -->
        <div id="noResults" class="no-results">
            <i class="ph ph-magnifying-glass"></i>
            <h3>Nenhum material encontrado</h3>
            <p>Tente outros termos como: bloco, areia, pedra, estaca...</p>
        </div>

        <!-- SEÇÃO DE INFORMAÇÕES DETALHADAS -->
        <div class="info-sections">
            <div class="info-card truck-info">
                <div class="info-icon">
                    <i class="ph ph-truck"></i>
                </div>
                <div>
                    <h4>Capacidade de Transporte</h4>
                    <p class="info-highlight">6.7 TONELADAS</p>
                    <p class="info-detail">Camião basculante com capacidade para entregas grandes</p>
                </div>
            </div>

            <div class="info-card delivery-info">
                <div class="info-icon">
                    <i class="ph ph-clock"></i>
                </div>
                <div>
                    <h4>Prazos de Entrega</h4>
                    <p class="info-highlight">24h a 48h</p>
                    <p class="info-detail">Entrega rápida em Chimoio e arredores</p>
                </div>
            </div>

            <div class="info-card payment-info">
                <div class="info-icon">
                    <i class="ph ph-credit-card"></i>
                </div>
                <div>
                    <h4>Formas de Pagamento</h4>
                    <p class="info-highlight">Dinheiro • Transferência • M-Pesa</p>
                    <p class="info-detail">Pagamento na entrega ou antecipado</p>
                </div>
            </div>
        </div>

        <!-- TABELA COMPARATIVA (para visualização alternativa) -->
        <div class="comparative-table">
            <h3><i class="ph ph-chart-bar"></i> Comparativo de Preços</h3>
            <div class="table-responsive">
                <table>
                    <thead>
                        <tr>
                            <th>Categoria</th>
                            <th>Material</th>
                            <th>Preço</th>
                            <th>Unidade</th>
                            <th>Obs</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr><td>Blocos</td><td>Bloco 10</td><td>18 MT</td><td>un</td><td><span class="table-badge">frete grátis*</span></td></tr>
                        <tr><td>Blocos</td><td>Bloco 12</td><td>20 MT</td><td>un</td><td><span class="table-badge">frete grátis*</span></td></tr>
                        <tr><td>Blocos</td><td>Bloco 15</td><td>22 MT</td><td>un</td><td><span class="table-badge">frete grátis*</span></td></tr>
                        <tr><td>Blocos</td><td>Tijolo Queimado</td><td>9 MT</td><td>un</td><td><span class="table-badge">frete grátis*</span></td></tr>
                        <tr><td>Areia</td><td>Areia Fina</td><td>2.500 MT</td><td>carada</td><td><span class="table-badge">transporte incluso</span></td></tr>
                        <tr><td>Areia</td><td>Areia Vermelha</td><td>3.000 MT</td><td>carada</td><td><span class="table-badge">transporte incluso</span></td></tr>
                        <tr><td>Areia</td><td>Areia Grossa Branca</td><td>2.800 MT</td><td>carada</td><td><span class="table-badge">transporte incluso</span></td></tr>
                        <tr><td>Areia</td><td>Areia Grossa Rio</td><td>3.000 MT</td><td>carada</td><td><span class="table-badge">transporte incluso</span></td></tr>
                        <tr><td>Pedra</td><td>Pedra Grossa (Rachão)</td><td>5.500 MT</td><td>carada</td><td><span class="table-badge">transporte incluso</span></td></tr>
                        <tr><td>Pedra</td><td>Pedra 2/5</td><td>6.000 MT</td><td>carada</td><td><span class="table-badge">transporte incluso</span></td></tr>
                        <tr><td>Pedra</td><td>Pedra 1/5</td><td>7.000 MT</td><td>carada</td><td><span class="table-badge">transporte incluso</span></td></tr>
                        <tr><td>Pedra</td><td>Pedra Fina Brita</td><td>8.000 MT</td><td>carada</td><td><span class="table-badge">transporte incluso</span></td></tr>
                        <tr><td>Pedra</td><td>Pedra Fina Zembe</td><td>12.000 MT</td><td>carada</td><td><span class="table-badge">transporte incluso</span></td></tr>
                        <tr><td>Estacas</td><td>Estacas Finas</td><td>120 MT</td><td>un</td><td>—</td></tr>
                        <tr><td>Estacas</td><td>Estacas Semi-Médias</td><td>250 MT</td><td>un</td><td>—</td></tr>
                        <tr><td>Estacas</td><td>Estacas Médias</td><td>350 MT</td><td>un</td><td>—</td></tr>
                        <tr><td>Estacas</td><td>Estacas Grossas</td><td>500 MT</td><td>un</td><td>—</td></tr>
                        <tr><td>Estacas</td><td>Bambus</td><td>150 MT</td><td>un</td><td>—</td></tr>
                    </tbody>
                </table>
            </div>
            <p class="table-footnote">* Transporte grátis de blocos para compras acima de 500 blocos</p>
        </div>

    <jsp:include page="footer.jsp" />

