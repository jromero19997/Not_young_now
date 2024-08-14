/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

/* global Swal */

function crearComentario() {
    Swal.fire({
        title: '¡Nuevo Comentario!',
        html: `
            <select id="rating" class="swal2-input">
                <option value="1">1 estrella</option>
                <option value="2">2 estrellas</option>
                <option value="3">3 estrellas</option>
                <option value="4">4 estrellas</option>
                <option value="5">5 estrellas</option>
            </select>
            <input type="text" id="comentario" class="swal2-input" placeholder="Escribe tu comentario aquí">
        `,
        showCancelButton: true,
        confirmButtonText: 'Enviar',
        cancelButtonText: 'Cancelar',
        didOpen: () => {
            $('#rating').barrating({
                theme: 'fontawesome-stars',
                initialRating: 0,
                onSelect: (value, text, event) => {
                    if (event) {
                        $('#rating').data('rating', value);
                    }
                }
            });
        },
        preConfirm: () => {
            const comentario = document.getElementById('comentario').value;
            const rating = $('#rating').data('rating');
            if (!comentario) {
                Swal.showValidationMessage('Por favor, escribe tu comentario');
            }
            if (!rating) {
                Swal.showValidationMessage('Por favor, selecciona una puntuación');
            }
            return { comentario, rating };
        }
    }).then((result) => {
        if (result.isConfirmed) {
            // Aquí puedes enviar el comentario y la puntuación al servidor
            Swal.fire('Comentario Creado 👍', '', 'success');
        }
    });
}


