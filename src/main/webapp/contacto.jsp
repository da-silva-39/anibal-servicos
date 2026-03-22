<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="header.jsp">
    <jsp:param name="cssExtra" value='<link rel="stylesheet" href="css/contacto.css">' />
</jsp:include>

<main class="contacto-container">
    <!-- HEADER -->
    <div class="contacto-header">
        <div class="header-content">
            <h1><i class="ph ph-chat-teardrop"></i> Fale Connosco</h1>
            <p class="header-subtitle">Estamos aqui para responder às suas perguntas e ajudar no que precisar</p>
        </div>
        <div class="header-stats">
            <div class="stat-chip"><i class="ph ph-clock"></i> Resposta em até 2h</div>
            <div class="stat-chip"><i class="ph ph-headset"></i> Suporte 24/7</div>
        </div>
    </div>

    <div class="contacto-grid">
        <!-- COLUNA ESQUERDA (INFO) -->
        <div class="contacto-info">
            <div class="info-card">
                <h2><i class="ph ph-address-book"></i> Informações de Contacto</h2>
                <div class="info-items">
                    <!-- WhatsApp -->
                    <div class="info-item">
                        <div class="info-icon"><i class="ph ph-whatsapp-logo"></i></div>
                        <div class="info-detail">
                            <h3>WhatsApp</h3>
                            <p>+258 87 371 0658</p>
                            <a href="https://wa.me/258873710658" target="_blank" class="info-action">Conversar agora <i class="ph ph-arrow-right"></i></a>
                        </div>
                    </div>
                    <!-- Telefone -->
                    <div class="info-item">
                        <div class="info-icon"><i class="ph ph-phone"></i></div>
                        <div class="info-detail">
                            <h3>Telefone</h3>
                            <p>+258 87 371 0658</p>
                            <p class="info-secondary">+258 85 571 2857</p>
                        </div>
                    </div>
                    <!-- Email -->
                    <div class="info-item">
                        <div class="info-icon"><i class="ph ph-envelope"></i></div>
                        <div class="info-detail">
                            <h3>Email</h3>
                            <p>silvajoaoanibal@gmail.com</p>
                            <p class="info-secondary">joseanibaldasilva39@gmail.com</p>
                        </div>
                    </div>
                    <!-- Endereço -->
                    <div class="info-item">
                        <div class="info-icon"><i class="ph ph-map-pin"></i></div>
                        <div class="info-detail">
                            <h3>Endereço</h3>
                            <p>Estaleiro Piloto</p>
                            <p>Cidade de Chimoio, Moçambique</p>
                        </div>
                    </div>
                    <!-- Horário -->
                    <div class="info-item">
                        <div class="info-icon"><i class="ph ph-clock"></i></div>
                        <div class="info-detail">
                            <h3>Horário</h3>
                            <p>Segunda - Sábado: 06:00 - 18:30</p>
                            <p>Domingo: 07:00 - 17:00</p>
                            <p class="info-highlight">Atendimento Limitado ao Domingo</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Redes Sociais -->
            <div class="social-card">
                <h3>Siga-nos</h3>
                <div class="social-links">
                    <a href="https://www.facebook.com/p/An%C3%ADbal-Servi%C3%A7os-100076584495680/" target="blank" class="social-link facebook"><i class="ph ph-facebook-logo"></i></a>
                    <a href="https://www.instagram.com/aniba1_servicos/" target="blank" class="social-link instagram"><i class="ph ph-instagram-logo"></i></a>
                </div>
            </div>

            <!-- WhatsApp Card -->
            <div class="whatsapp-float-card">
                <div class="whatsapp-content">
                    <i class="ph ph-whatsapp-logo"></i>
                    <div>
                        <h4>Atendimento via WhatsApp</h4>
                        <p>Clique para falar connosco agora</p>
                    </div>
                </div>
                <a href="https://wa.me/258873710658" target="_blank" class="whatsapp-button">
                    Iniciar Conversa <i class="ph ph-arrow-right"></i>
                </a>
            </div>
        </div>

        <!-- COLUNA DIREITA (FORMULÁRIO E MAPA) -->
        <div class="contacto-form-section">
            <div class="form-card">
                <h2><i class="ph ph-paper-plane"></i> Envie-nos uma mensagem</h2>

                <!-- Exibir mensagens de erro (se houver) -->
                <%
                    java.util.Map<String, String> errors = (java.util.Map<String, String>) request.getAttribute("errors");
                    if (errors != null && !errors.isEmpty()) {
                %>
                    <div class="error-messages" style="color: #dc3545; background: rgba(220,53,69,0.1); padding: 10px; border-radius: 8px; margin-bottom: 15px;">
                        <ul>
                            <% for (String errorMsg : errors.values()) { %>
                                <li><%= errorMsg %></li>
                            <% } %>
                        </ul>
                    </div>
                <%
                    }
                %>

                <!-- Exibir mensagem de sucesso (se parâmetro success=true) -->
                <%
                    String success = request.getParameter("success");
                    if ("true".equals(success)) {
                %>
                    <div id="successMessage" class="success-message" style="color: #28a745; background: rgba(40,167,69,0.1); padding: 15px; border-radius: 8px; margin-bottom: 15px; text-align: center;">
                        <i class="ph ph-check-circle" style="font-size: 2rem;"></i>
                        <h3 style="margin: 5px 0;">Mensagem Enviada!</h3>
                        <p>Obrigado pelo contacto. Responderemos em breve.</p>
                        <button class="new-message-btn" onclick="resetContactForm()">Nova Mensagem</button>
                    </div>
                <%
                    }
                %>

                <form id="contactForm" method="POST" action="${pageContext.request.contextPath}/contacto" class="contact-form">
                    <div class="form-group">
                        <label for="name"><i class="ph ph-user"></i> Nome Completo *</label>
                        <input type="text" id="name" name="name" placeholder="Digite seu nome completo" 
                               value="<%= request.getAttribute("submittedName") != null ? request.getAttribute("submittedName") : "" %>" required>
                    </div>
                    <div class="form-group">
                        <label for="email"><i class="ph ph-envelope"></i> Email *</label>
                        <input type="email" id="email" name="email" placeholder="Digite seu email" 
                               value="<%= request.getAttribute("submittedEmail") != null ? request.getAttribute("submittedEmail") : "" %>" required>
                    </div>
                    <div class="form-group">
                        <label for="phone"><i class="ph ph-phone"></i> Telefone (opcional)</label>
                        <input type="tel" id="phone" name="phone" placeholder="+258 87 371 0658"
                               value="<%= request.getAttribute("submittedPhone") != null ? request.getAttribute("submittedPhone") : "" %>">
                    </div>
                    <div class="form-group">
                        <label for="subject"><i class="ph ph-tag"></i> Assunto *</label>
                        <select id="subject" name="subject" required>
                            <option value="">Selecione um assunto</option>
                            <option value="orcamento" <%= "orcamento".equals(request.getAttribute("submittedSubject")) ? "selected" : "" %>>Falar com responsável/agendar serviço</option>
                            <option value="duvida" <%= "duvida".equals(request.getAttribute("submittedSubject")) ? "selected" : "" %>>Dúvida sobre Materiais</option>
                            <option value="transporte" <%= "transporte".equals(request.getAttribute("submittedSubject")) ? "selected" : "" %>>Informação de Transporte</option>
                            <option value="reclamacao" <%= "reclamacao".equals(request.getAttribute("submittedSubject")) ? "selected" : "" %>>Reclamação</option>
                            <option value="outro" <%= "outro".equals(request.getAttribute("submittedSubject")) ? "selected" : "" %>>Outro</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="message"><i class="ph ph-chat-text"></i> Mensagem *</label>
                        <textarea id="message" name="message" rows="5" placeholder="Digite sua mensagem..." required><%= request.getAttribute("submittedMessage") != null ? request.getAttribute("submittedMessage") : "" %></textarea>
                    </div>
                    <div class="form-group checkbox-group">
                        <input type="checkbox" id="privacy" name="privacy" value="aceito" required>
                        <label for="privacy">Aceito a <a href="#" class="privacy-link">política de privacidade</a></label>
                    </div>
                    <button type="submit" class="submit-btn" id="submitBtn">
                        <span class="btn-text">Enviar Mensagem</span>
                        <span class="btn-icon"><i class="ph ph-paper-plane-right"></i></span>
                        <span class="btn-loading" style="display: none;"><i class="ph ph-circle-notch"></i> Enviando...</span>
                    </button>
                </form>
            </div>

            <!-- MAPA -->
            <div class="map-card">
                <h2><i class="ph ph-map-trifold"></i> Nossa Localização</h2>
                <div class="map-container">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d551.6940686103882!2m33.458506552670876!3d-19.089184109830978!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x192b3506d645bd41%3A0x476fa2df3e4ea39b!2sAnibal%20Servicos!5e1!3m2!1spt-PT!2smz!4v1773658086035!5m2!1spt-PT!2smz" 
                            width="100%" 
                            height="300" 
                            style="border:0;" 
                            allowfullscreen="" 
                            loading="lazy" 
                            referrerpolicy="no-referrer-when-downgrade">
                    </iframe>
                </div>
            </div>
        </div>
    </div>

    <!-- FAQ -->
    <div class="faq-section">
        <h2><i class="ph ph-question"></i> Perguntas Frequentes</h2>
        <div class="faq-grid">
            <div class="faq-item">
                <div class="faq-question"><span>Qual o prazo de resposta?</span> <i class="ph ph-caret-down"></i></div>
                <div class="faq-answer"><p>Respondemos em até 2 horas úteis. Para urgências, use WhatsApp.</p></div>
            </div>
            <div class="faq-item">
                <div class="faq-question"><span>Fazem entregas em toda a cidade?</span> <i class="ph ph-caret-down"></i></div>
                <div class="faq-answer"><p>Sim, entregamos em toda Chimoio e arredores. Consulte condições.</p></div>
            </div>
            <div class="faq-item">
                <div class="faq-question"><span>Aceitam encomendas por telefone?</span> <i class="ph ph-caret-down"></i></div>
                <div class="faq-answer"><p>Sim, pode ligar ou enviar mensagem pelo WhatsApp para fazer seus pedidos. O mais usado é ligar para o número indicado.</p></div>
            </div>
        </div>
    </div>
</main> <!-- FIM DO MAIN -->

<jsp:include page="footer.jsp" />

