/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

/* global Swal */

function respuesta_reporte() {
    Swal.fire({
        title: 'Respuesta al Reporte',
        html: `
            <input type="date" id="fecha" class="swal2-input" placeholder="Fecha (dd/mm/yyyy)">
            <input type="text" id="respuesta" class="swal2-input" placeholder="Respuesta">
        `,
        showCancelButton: true,
        confirmButtonText: 'Enviar',
        cancelButtonText: 'Cancelar',
        preConfirm: () => {
            const fecha = document.getElementById('fecha').value;
            const respuesta = document.getElementById('respuesta').value;
            if (!fecha) {
                Swal.showValidationMessage('Por favor, ingrese la fecha');
            }
            if (!respuesta) {
                Swal.showValidationMessage('Por favor, ingrese la respuesta');
            }
            return { fecha: fecha, respuesta: respuesta };
        }
    }).then((result) => {
        if (result.isConfirmed) {
            const fecha = result.value.fecha;
            const respuesta = result.value.respuesta;
            // Aquí puedes enviar la respuesta y la fecha al servidor (por AJAX u otra forma)
            Swal.fire('Respuesta Enviada', '', 'success');
        }
    });
}

