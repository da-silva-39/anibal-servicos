    document.addEventListener('DOMContentLoaded', function() {
        const searchInput = document.getElementById('searchInput');
        const filterButtons = document.querySelectorAll('.filter-btn');
        const categories = document.querySelectorAll('.pricing-category');
        const noResults = document.getElementById('noResults');
        const pricingGrid = document.getElementById('pricingGrid');
        
        let activeFilter = 'all';
        let searchTerm = '';

        // Função de filtro combinada (categoria + pesquisa)
        function filterItems() {
            let hasVisibleItems = false;
            
            categories.forEach(category => {
                const categoryFilter = category.dataset.category;
                const items = category.querySelectorAll('.item-row');
                let categoryHasVisible = false;

                // Verifica se a categoria corresponde ao filtro ativo
                const categoryMatchesFilter = activeFilter === 'all' || activeFilter === categoryFilter;

                items.forEach(item => {
                    const itemText = item.dataset.item || '';
                    const matchesSearch = searchTerm === '' || 
                        itemText.toLowerCase().includes(searchTerm.toLowerCase()) ||
                        item.querySelector('.item-name').textContent.toLowerCase().includes(searchTerm.toLowerCase());

                    // Item visível se: (categoria ativa OU pesquisa ativa) E corresponde à pesquisa
                    const shouldShow = (categoryMatchesFilter || searchTerm !== '') && matchesSearch;
                    
                    item.style.display = shouldShow ? 'flex' : 'none';
                    
                    if (shouldShow) {
                        categoryHasVisible = true;
                        hasVisibleItems = true;
                    }
                });

                // Mostra a categoria apenas se tiver itens visíveis
                if (categoryHasVisible) {
                    category.style.display = 'flex';
                } else {
                    category.style.display = 'none';
                }
            });

            // Mostra/esconde mensagem de "sem resultados"
            if (!hasVisibleItems && searchTerm !== '') {
                noResults.style.display = 'flex';
                pricingGrid.style.display = 'none';
            } else {
                noResults.style.display = 'none';
                pricingGrid.style.display = 'grid';
            }
        }

        // Evento de pesquisa (com debounce para performance)
        let searchTimeout;
        searchInput.addEventListener('input', function(e) {
            clearTimeout(searchTimeout);
            searchTimeout = setTimeout(() => {
                searchTerm = e.target.value.trim();
                filterItems();
            }, 300);
        });

        // Eventos dos botões de filtro
        filterButtons.forEach(btn => {
            btn.addEventListener('click', function() {
                filterButtons.forEach(b => b.classList.remove('active'));
                this.classList.add('active');
                activeFilter = this.dataset.filter;
                filterItems();
                
                // Pequeno feedback visual: scroll suave para a grade
                pricingGrid.style.transition = 'opacity 0.3s';
                pricingGrid.style.opacity = '0.5';
                setTimeout(() => {
                    pricingGrid.style.opacity = '1';
                }, 200);
            });
        });

        // Efeito de clique nos itens (mostra detalhes)
        document.querySelectorAll('.item-row').forEach(item => {
            item.addEventListener('click', function(e) {
                // Remove seleção anterior
                document.querySelectorAll('.item-row.selected').forEach(el => {
                    el.classList.remove('selected');
                });
                
                this.classList.add('selected');
                
                // Pode mostrar um tooltip ou mensagem (opcional)
                const itemName = this.querySelector('.item-name').textContent;
                const itemPrice = this.querySelector('.item-price').textContent;
                
                // Cria um pequeno toast (opcional, descomente se quiser)
                // showToast(`${itemName}: ${itemPrice}`);
            });
        });

        // Animação de entrada para os cards
        categories.forEach((card, index) => {
            card.style.opacity = '0';
            card.style.transform = 'translateY(20px)';
            setTimeout(() => {
                card.style.transition = 'all 0.5s ease';
                card.style.opacity = '1';
                card.style.transform = 'translateY(0)';
            }, 100 + (index * 50));
        });
    });

    // Função opcional para toast (pode remover se não quiser)
    function showToast(message) {
        const toast = document.createElement('div');
        toast.className = 'toast-message';
        toast.textContent = message;
        toast.style.cssText = `
            position: fixed;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            background: #13293D;
            color: white;
            padding: 12px 24px;
            border-radius: 50px;
            font-weight: 500;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            z-index: 9999;
            animation: slideUp 0.3s ease;
        `;
        document.body.appendChild(toast);
        setTimeout(() => {
            toast.remove();
        }, 2000);
    }
