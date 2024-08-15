<%-- 
    Document   : transporte
    Created on : 14 ago 2024, 21:40:02
    Author     : COREI5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Transporte</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../style/css/transporte.css">
</head>
<body>
    <!-- Barra de navegación -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="#">Gestión de Transporte</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#transportes">Transportes</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Encabezado -->
    <header class="header">
        <div class="container-fluid p-0">
            <img src="../style/img/transporte/b.jpg" alt="Encabezado de Alojamiento" class="img-fluid">
        </div>
        <div class="caption-text">
            <h5>Transporte</h5>
            <p>Viaja con comodidad y seguridad a tu destino.</p>
        </div>
    </header>

    <!-- Sección de Transportes -->
    <div class="container" id="transportes">
        <h2 class="mt-5 mb-4 text-center">Nuestros Servicios de Transporte</h2>
        <hr class="underline">
        <div class="row">
            <!-- Tarjeta de Transporte Económico -->
            <div class="col-md-6 mb-4 d-flex justify-content-center">
                <div class="card transport-card border-0 rounded shadow-lg">
                    <img src="../style/img/transporte/bus.jpg" class="card-img-top" alt="Transporte Económico">
                    <div class="card-body d-flex flex-column text-center">
                        <h5 class="card-title">Transporte Económico</h5>
                        <div class="card-description">
                            <p>Viaja en un bus cómodo y asequible, ideal para eventos con grupos grandes. Disfruta de un transporte confiable a un costo accesible.</p>
                        </div>
                        <p class="card-cost">Costo: S/30</p>
                        <a href="#" class="btn btn-custom">Ver más</a>
                    </div>
                </div>
            </div>
            <!-- Tarjeta de Transporte Premium -->
            <div class="col-md-6 mb-4 d-flex justify-content-center">
                <div class="card transport-card border-0 rounded shadow-lg">
                    <img src="../style/img/transporte/t.jpg" class="card-img-top" alt="Transporte Premium">
                    <div class="card-body d-flex flex-column text-center">
                        <h5 class="card-title">Transporte Premium</h5>
                        <div class="card-description">
                            <p>Disfruta de la máxima comodidad y privacidad en un taxi exclusivo. Perfecto para quienes buscan un viaje lujoso y personalizado.</p>
                        </div>
                        <p class="card-cost">Costo: S/150</p>
                        <a href="#" class="btn btn-custom">Ver más</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Pie de página -->
    <footer class="footer bg-dark text-white mt-5">
        <div class="container text-center py-3">
            <p class="mb-0">&copy; 2024 Gestión de Transporte. Todos los derechos reservados.</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>

