/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


/* global bootstrap, Swal */

document.addEventListener('DOMContentLoaded', function() {
    const btnComentar = document.getElementById('btnComentar');
    const comentarioModal = new bootstrap.Modal(document.getElementById('comentarioModal'));

    btnComentar.addEventListener('click', function() {
        comentarioModal.show();
    });

    document.getElementById('comentarioForm').addEventListener('submit', function(event) {
        event.preventDefault();
        const valoracion = document.getElementById('valoracion').value;
        const comentario = document.getElementById('comentario').value;

        if (valoracion >= 1 && valoracion <= 5) {
            Swal.fire({
                icon: 'success',
                title: 'COMENTARIO EXITOSO',
                text: 'Gracias por tu feedback!'
            }).then(() => {
                comentarioModal.hide();
            });
        } else {
            Swal.fire({
                icon: 'error',
                title: 'Valoración inválida',
                text: 'Por favor, ingresa un número entre 1 y 5.'
            });
        }
    });
});



