<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="header.jsp">
<jsp:param name="cssExtra" value='<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">' />
</jsp:include>


<!-- resto do conteúdo -->
 <!-- Card sobre a empresa (fora da div com slideshow) -->
 		<main>
            <div class="card-about">
                <p style="font-weight: 600; font-size: 1.5rem; color: #0D4057; margin-bottom: 0.5rem;">📋 Anibal Servi&ccedil;os</p>
                <p>
                    Somos uma empresa especializada no transporte e fornecimento de materiais de construção.<br>
                    Atendemos obras de pequeno, médio e grande porte, oferecendo serviços de transporte, carregamento e entrega de materiais diretamente no local da obra.
                </p>
                <p>
                    Além do transporte, também possuímos um estaleiro com diversos materiais disponíveis para venda, como blocos, bambus, estacas, barrotes, tijolos, areia e pedra.
                </p>
                <!-- pequeno detalhe visual com ícones -->
                <div class="highlight-list">
                    <span><i class="ph ph-cube"></i> blocos</span>
                    <span><i class="ph ph-plant"></i> bambus</span>
                    <span><i class="ph ph-tent"></i> estacas</span>
                    <span><i class="ph ph-rows"></i> barrotes</span>
                    <span><i class="ph ph-square"></i> tijolos</span>
                    <span><i class="ph ph-drop"></i> areia</span>
                    <span><i class="ph ph-mountains"></i> pedra</span>
                </div>
            </div>

            <!-- DIV que contém o slideshow como fundo e o conteúdo por cima -->
            <div class="minha-div">
                <!-- Camada de fundo (slideshow) -->
                <div class="slideshow-fundo">
                    <div class="slide" style="background-image: url('img/img1.jpeg');"></div>
                    <div class="slide" style="background-image: url('img/img3.jpeg');"></div>
                    <div class="slide" style="background-image: url('img/img35.jpeg');"></div>
                    <div class="overlay-azul"></div> <!-- Vinheta azul -->
                </div>

                <!-- Camada de conteúdo (fica por cima) -->
                <div class="conteudo">
                    <section class="services">
                        <h2>Nossos Serviços</h2>
                        <div class="cards">
                            <div class="card">
                                <h3>Transporte de Materiais</h3>
                                <p>Transporte seguro de pedra, areia, saibro, blocos e outros materiais de construção.</p>
                            </div>
                            <div class="card">
                                <h3>Carregamento</h3>
                                <p>Carregamento eficiente de materiais com equipamentos adequados para obras e construções.</p>
                            </div>
                            <div class="card">
                                <h3>Entrega em Obras</h3>
                                <p>Entrega rápida e organizada diretamente no local da construção.</p>
                            </div>
                        </div>
                    </section>

                    <section class="materials">
                        <h2>Materiais Disponíveis</h2>
                        <div class="cards">
                            <div class="card">
                                <h3>Pedra</h3>
                                <p>Pedra para construção e fundação.</p>
                            </div>
                            <div class="card">
                                <h3>Areia</h3>
                                <p>Areia para construção, reboco, fundações e blocos.</p>
                            </div>
                            <div class="card">
                                <h3>Saibro</h3>
                                <p>Material usado em nivelamento e preparação de terreno, para come&ccedil;ar a sua constru&ccedil;&atilde;o.</p>
                            </div>
                            <div class="card">
                                <h3>Blocos e Tijolos</h3>
                                <p>Blocos e tijolos com qualidade de ponta para construção de paredes.</p>
                            </div>
                        </div>
                    </section>

                    <section class="yard">
                        <div class="container">
                            <h2>Nosso Estaleiro</h2>
                            <p> <strong>
                                No nosso estaleiro (Estaleiro Anibal) temos uma grande variedade de materiais
                                prontos para venda e transporte. Trabalhamos com blocos,
                                tijolos, bambus, estacas (de tamanho pequeno, semi-m&eacute;dio, m&eacute;dio e grande) e barrotes utilizados em diferentes
                                tipos de construção ou objectivos afins, de excelente qualidade.
                            </strong></p>
                        </div>
                    </section>

                    <section class="why">
                        <h2>Por Que Escolher Nossa Empresa</h2>
                        <div class="cards">
                            <div class="card">
                                <h3>Experiência</h3>
                                <p>Anibal Servi&ccedil;os tem anos de experiência no carrgeamento e transporte de materiais.</p>
                            </div>
                            <div class="card">
                                <h3>Rapidez e Recursos</h3>
                                <p>Entregas rápidas e organizadas, com recursos e equipamentos seguros, com cami&otilde;es disponiveis.</p>
                            </div>
                            <div class="card">
                                <h3>Confiança</h3>
                                <p>Trabalho sério e compromisso com os clientes, e alta disponibilidade, levando em conta o tempo e prazo do cliente.</p>
                            </div>
                        </div>
                    </section>
                </div> <!-- fim .conteudo -->
            </div> <!-- fim .minha-div -->

            <section class="cta">
                <h2>Precisa de materiais ou transporte para constru&ccedil;&atilde;o?</h2>
                <p>Entre em contacto connosco e agende o seu or&ccedil;amento e prazo, o resto deixe conosco.</p>
                <a href="contacto.jsp" class="btn">Contactar</a>
            </section>
            
            
            <%@ include file="footer.jsp" %>