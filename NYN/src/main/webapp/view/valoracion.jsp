<%-- 
    Document   : comentario
    Created on : 16 jul. 2024, 17:58:00
    Author     : CESAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="CONECTOR.conexion" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Comentarios de Eventos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-bar-rating/1.2.2/themes/fontawesome-stars.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-bar-rating/1.2.2/jquery.barrating.min.js"></script>
    <style>
        body {
            background-color: #3c3c3c;
            padding: 20px;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 40px;
            padding: 20px;
        }

        .contenido {
            display: grid;
            justify-content: center;
            align-content: center;
        }

        .contenido button {
            margin: 10px auto;
        }

        .comentarios {
            width: 700px;
            justify-content: center;
            align-content: center;
            margin: 10px auto;
            font-family: sans-serif;
        }

        .valoracion {
            display: flex;
            border-bottom: 3px solid black;
        }

        .estrella {
            font-size: 30px;
        }

        .estrella:hover {
            color: yellow;
        }

        .swal2-popup .swal2-html-container {
            overflow: visible !important;
        }

        .swal2-select {
            display: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            if (conexion.conectar() != null) {
        %>

            <div class="contenido">
                <img src="https://cdn.teleticket.com.pe/especiales/aventura-lima-2024-2/images/gro015_rs.jpg">
                <button class="btn btn-primary" onclick="crearComentario()">Nuevo Comentario</button>
            </div>

        <%
            } else {
        %>
            <h1>Hubo un error al conectar tu BD</h1>
        <%
            }
        %>

        <!-- Visualización de Comentarios -->
        <div class="comentarios">
            <div class="card">
                <div class="valoracion">
                    <h5 class="card-header">Cesar Carhuas</h5>
                    <div class="estrella">
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                    </div>
                </div>
                <div class="card-body">
                    <p class="card-text">La fiesta estuvo demasiado buena!</p>
                </div>
            </div>
        </div>
        
        <div class="comentarios">
            <div class="card">
                <div class="valoracion">
                    <h5 class="card-header">Cesar Carhuas</h5>
                    <div class="estrella">
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                    </div>
                </div>
                <div class="card-body">
                    <p class="card-text">La fiesta estuvo demasiado buena!</p>
                </div>
            </div>
        </div>
        
        <div class="comentarios">
            <div class="card">
                <div class="valoracion">
                    <h5 class="card-header">Cesar Carhuas</h5>
                    <div class="estrella">
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                    </div>
                </div>
                <div class="card-body">
                    <p class="card-text">La fiesta estuvo demasiado buena!</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Script para SweetAlert y Estrellas -->
    <script>
        function crearComentario() {
            Swal.fire({
                title: '¡Nuevo Comentario!',
                html: `
                    <select id="rating" name="rating" class="swal2-input" data-live-search="true">
                        <option class="bi bi-star-fill" value="1">1 estrella</option>
                        <option class="bi bi-star-fill" value="2">2 estrellas</option>
                        <option class="bi bi-star-fill" value="3">3 estrellas</option>
                        <option class="bi bi-star-fill" value="4">4 estrellas</option>
                        <option class="bi bi-star-fill" value="5">5 estrellas</option>
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
                            if (typeof(event) !== 'undefined') {
                                // Rating was selected by a user
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
                    return { comentario: comentario, rating: rating };
                }
            }).then((result) => {
                if (result.isConfirmed) {
                    const comentario = result.value.comentario;
                    const rating = result.value.rating;
                    // Aquí puedes enviar el comentario y la puntuación al servidor (por AJAX u otra forma)
                    Swal.fire('Comentario Creado 👍','', 'success');
                }
            });
        }
    </script>
</body>
</html>




