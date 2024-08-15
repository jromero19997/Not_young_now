/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


// Función para mostrar el modal de añadir evento
function showAddEventModal() {
    $('#addEventModal').modal('show');
}

// Función para mostrar las opciones de actualización
function showUpdateOptions(eventName) {
    $('#updateOptionsModal').modal('show');
}

// Función para mostrar las opciones de añadir campo
function showAddOptions(eventName) {
    $('#addOptionsModal').modal('show');
}

// Función para añadir un evento con validación y alerta de éxito o error
function addEvent() {
    const eventName = $('#eventName').val();
    const vipTickets = $('#vipTickets').val();
    const generalTickets = $('#generalTickets').val();
    const preSalePrice = $('#preSalePrice').val();
    const regularPrice = $('#regularPrice').val();
    const availableTickets = $('#availableTickets').val();

    if (eventName && vipTickets && generalTickets && preSalePrice && regularPrice && availableTickets) {
        Swal.fire({
            title: '¿Está seguro de que desea añadir el evento?',
            text: `El evento '${eventName}' será añadido con los siguientes datos:\n\nVIP: ${vipTickets}\nGeneral: ${generalTickets}\nPrecio Preventa: $${preSalePrice}\nPrecio Regular: $${regularPrice}\nEntradas Disponibles: ${availableTickets}`,
            icon: 'question',
            showCancelButton: true,
            confirmButtonColor: '#28a745',
            cancelButtonColor: '#dc3545',
            confirmButtonText: 'Añadir',
            cancelButtonText: 'Cancelar'
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire({
                    title: '¡Evento Añadido!',
                    text: `El evento '${eventName}' ha sido añadido con éxito.`,
                    icon: 'success',
                    confirmButtonColor: '#28a745'
                }).then(() => {
                    $('#addEventModal').modal('hide');
                    // Aquí puedes agregar el código para añadir el evento a la tabla
                });
            }
        });
    } else {
        Swal.fire({
            title: 'Error',
            text: 'Por favor, complete todos los campos.',
            icon: 'error',
            confirmButtonColor: '#dc3545'
        });
    }
}

// Función para confirmar la actualización con alerta de éxito o error
function confirmUpdate() {
    const updateField = $('#updateField').val();
    const newValue = $('#newValue').val();

    let fieldName;
    switch (updateField) {
        case 'price':
            fieldName = 'Precio';
            break;
        case 'tickets':
            fieldName = 'Cantidad de Tickets';
            break;
        default:
            fieldName = 'Campo Desconocido';
    }

    if (updateField && newValue) {
        Swal.fire({
            title: '¿Está seguro de que desea actualizar el evento?',
            text: `Se actualizará el campo '${fieldName}' con el nuevo valor '${newValue}'.`,
            icon: 'question',
            showCancelButton: true,
            confirmButtonColor: '#28a745',
            cancelButtonColor: '#dc3545',
            confirmButtonText: 'Actualizar',
            cancelButtonText: 'Cancelar'
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire({
                    title: '¡Actualización Confirmada!',
                    text: `Se ha actualizado el campo '${fieldName}' con el nuevo valor '${newValue}'.`,
                    icon: 'success',
                    confirmButtonColor: '#28a745'
                }).then(() => {
                    $('#updateOptionsModal').modal('hide');
                    // Aquí puedes agregar el código para actualizar el evento en la tabla
                });
            }
        });
    } else {
        Swal.fire({
            title: 'Error',
            text: 'Por favor, complete todos los campos.',
            icon: 'error',
            confirmButtonColor: '#dc3545'
        });
    }
}

// Función para confirmar la adición de un campo con alerta de éxito o error
function confirmAdd() {
    const addField = $('#addField').val();
    const newValue = addField === 'price' ? $('#priceType').val() : $('#ticketType').val();

    let fieldName;
    switch (addField) {
        case 'price':
            fieldName = 'Precio';
            break;
        case 'tickets':
            fieldName = 'Tickets';
            break;
        default:
            fieldName = 'Campo Desconocido';
    }

    if (addField && newValue) {
        Swal.fire({
            title: '¿Está seguro de que desea añadir el nuevo campo?',
            text: `Se añadirá el campo '${fieldName}' con el valor '${newValue}'.`,
            icon: 'question',
            showCancelButton: true,
            confirmButtonColor: '#28a745',
            cancelButtonColor: '#dc3545',
            confirmButtonText: 'Añadir',
            cancelButtonText: 'Cancelar'
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire({
                    title: '¡Campo Añadido!',
                    text: `Se ha añadido el campo '${fieldName}' con el valor '${newValue}'.`,
                    icon: 'success',
                    confirmButtonColor: '#28a745'
                }).then(() => {
                    $('#addOptionsModal').modal('hide');
                    // Aquí puedes agregar el código para añadir el campo al evento en la tabla
                });
            }
        });
    } else {
        Swal.fire({
            title: 'Error',
            text: 'Por favor, complete todos los campos.',
            icon: 'error',
            confirmButtonColor: '#dc3545'
        });
    }
}

// Función para mostrar u ocultar los campos según la selección en el formulario de añadir campo
$('#addField').on('change', function() {
    const value = $(this).val();
    if (value === 'price') {
        $('#priceTypeGroup').show();
        $('#ticketTypeGroup').hide();
    } else if (value === 'tickets') {
        $('#priceTypeGroup').hide();
        $('#ticketTypeGroup').show();
    }
});
