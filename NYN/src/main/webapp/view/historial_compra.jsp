<%-- 
    Document   : historial_compra
    Created on : 14 ago 2024, 23:16:26
    Author     : COREI5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Historial de Compras</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../style/css/historialdecompra.css">
</head>
<body>
    <!-- Barra de navegación -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="#">Historial de Compras</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#compras">Compras</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Encabezado -->
    <header class="header">
        <img src="../style/img/historialc.jpg" alt="Imagen de Fondo" class="header-img">
        <div class="header-content">
            <h1>Historial de Compras</h1>
            <p>Consulta tu historial de compras de manera sencilla y rápida</p>
        </div>
    </header>

    <!-- Sección de Compras -->
    <div class="container" id="compras">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="table-responsive">
                    <table class="table table-striped table-hover mt-4">
                        <thead class="table-primary">
                            <tr>
                                <th scope="col">Fecha</th>
                                <th scope="col">Evento/Producto</th>
                                <th scope="col">Cantidad de tickets</th>
                                <th scope="col">Total</th>
                                <th scope="col">Método de Pago</th>
                                <th scope="col">Estado</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>2024-07-15</td>
                                <td>Concierto Aventura</td>
                                <td>2</td>
                                <td>S/600</td>
                                <td>Tarjeta de Crédito</td>
                                <td>Completado</td>
                            </tr>
                            <tr>
                                <td>2024-07-20</td>
                                <td>Concierto Morat</td>
                                <td>3</td>
                                <td>S/580</td>
                                <td>PayPal</td>
                                <td>En Proceso</td>
                            </tr>
                            <!-- Más filas aquí -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- Pie de página -->
    <footer class="footer bg-primary text-white mt-5">
        <div class="container text-center py-3">
            <p class="mb-0">&copy; 2024 Historial de Compras. Todos los derechos reservados.</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>

