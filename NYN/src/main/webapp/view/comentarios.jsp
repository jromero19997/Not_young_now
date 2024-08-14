<%-- 
    Document   : comentario
    Created on : 16 jul. 2024, 17:58:00
    Author     : CESAR
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="CONECTOR.conexion" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comentarios de Eventos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-bar-rating/1.2.2/themes/fontawesome-stars.css">
    <link rel="stylesheet" href="../style/css/comentarios.css">
</head>
<body>
    <div class="container">
        <div class="contenido">
            <img src="https://cdn.teleticket.com.pe/especiales/aventura-lima-2024-2/images/gro015_rs.jpg" alt="Evento">
            <button class="btn btn-primary" onclick="crearComentario()">Nuevo Comentario</button>
        </div>

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
    </div>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-bar-rating/1.2.2/jquery.barrating.min.js"></script>
    <script src="../style/js/comentarios.js"></script>
</body>
</html>






