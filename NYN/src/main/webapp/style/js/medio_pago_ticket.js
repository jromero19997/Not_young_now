/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

/* global Swal */

document.addEventListener('DOMContentLoaded', function() {
    // Handle the 'Pagar' button for credit/debit card
    document.querySelector('.tarjeta .pagar').addEventListener('click', function() {
        Swal.fire({
            title: 'Pago con Tarjeta de Credito/Debito',
            html: `
                <input type="text" id="card-number" class="swal2-input" placeholder="Número de tarjeta">
                <input type="text" id="card-name" class="swal2-input" placeholder="Nombre en la tarjeta">
                <input type="text" id="card-expiry" class="swal2-input" placeholder="Fecha de expiración (MM/AA)">
                <input type="text" id="card-cvc" class="swal2-input" placeholder="CVC">
                <p>Total a pagar: $XXX.XX</p>
            `,
            confirmButtonText: 'Confirmar Pago',
            showCancelButton: true,
            cancelButtonText: 'Cancelar',
            preConfirm: () => {
                const cardNumber = document.getElementById('card-number').value;
                const cardName = document.getElementById('card-name').value;
                const cardExpiry = document.getElementById('card-expiry').value;
                const cardCvc = document.getElementById('card-cvc').value;
                
                if (!cardNumber || !cardName || !cardExpiry || !cardCvc) {
                    Swal.showValidationMessage('Por favor, completa todos los campos');
                    return false;
                }

                // Here you would send the card data to your server for processing
                return { cardNumber, cardName, cardExpiry, cardCvc };
            }
        }).then((result) => {
            if (result.isConfirmed) {
                // Handle successful payment logic here
                Swal.fire('Pago Exitoso', 'Tu pago ha sido procesado correctamente', 'success');
            }
        });
    });

    // Handle the 'Pagar' button for digital wallets
    document.querySelector('.billeteras-electronicas .pagar').addEventListener('click', function() {
        Swal.fire({
            title: 'Pago con Billeteras Electronicas',
            html: `
                <p>Escanea el código QR de tu marca favorita desde tu app y confirma el pago.</p>
                <div>
                    <img src="../../style/img/img-billetera/codigo QR.png" alt="codigo QR" class="img-fluid" style="max-width: 100px; margin: 10px;">
                </div>
                <p>Total a pagar: $XXX.XX</p>
            `,
            confirmButtonText: 'He Realizado el Pago',
            showCancelButton: true,
            cancelButtonText: 'Cancelar',
            preConfirm: () => {
                // Add logic to verify the payment (e.g., checking if the payment was received)
                return true;
            }
        }).then((result) => {
            if (result.isConfirmed) {
                // Handle successful payment logic here
                Swal.fire('Pago Confirmado', 'Tu pago ha sido procesado correctamente', 'success');
            }
        });
    });
});

