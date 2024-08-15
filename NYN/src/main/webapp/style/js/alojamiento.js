/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


document.addEventListener('DOMContentLoaded', function () {
    const searchInput = document.getElementById('search');
    const priceFilter = document.getElementById('priceFilter');
    const cards = document.querySelectorAll('.alojamiento-card');

    searchInput.addEventListener('input', function () {
        const searchValue = searchInput.value.toLowerCase();
        filterCards(searchValue, priceFilter.value);
    });

    priceFilter.addEventListener('change', function () {
        filterCards(searchInput.value.toLowerCase(), priceFilter.value);
    });

    function filterCards(searchValue, priceValue) {
        cards.forEach(card => {
            const name = card.getAttribute('data-name').toLowerCase();
            const price = card.getAttribute('data-price');

            if (
                (name.includes(searchValue) || searchValue === '') &&
                (price === priceValue || priceValue === '')
            ) {
                card.style.display = 'block';
            } else {
                card.style.display = 'none';
            }
        });
    }
});
