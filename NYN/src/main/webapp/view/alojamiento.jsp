<%-- 
    Document   : alojamiento
    Created on : 14 ago 2024, 21:40:17
    Author     : COREI5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Alojamiento</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../style/css/alojamiento.css">
</head>
<body>
    <!-- Barra de navegación -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="#">Gestión de Alojamiento</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#alojamientos">Alojamientos</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Encabezado con imagen -->
    <header class="header">
        <div class="container-fluid p-0">
            <img src="../style/img/alojamien/a.jpg" alt="Encabezado de Alojamiento" class="img-fluid">
        </div>
        <div class="caption-text">
            <h5>Alojamiento</h5>
            <p>Disfruta de una estancia confortable y acogedora.</p>
        </div>
    </header>

    <!-- Sección de filtros y búsqueda -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4">
                <input type="text" id="search" class="form-control" placeholder="Buscar por nombre">
            </div>
            <div class="col-md-4">
                <select id="priceFilter" class="form-control">
                    <option value="">Filtrar por precio</option>
                    <option value="low">S/0 - S/100</option>
                    <option value="medium">S/101 - S/200</option>
                    <option value="high">S/201 - S/300</option>
                </select>
            </div>
        </div>
    </div>

    <!-- Sección de Alojamientos -->
    <div class="container" id="alojamientos">
        <h2 class="mt-4 text-center">Lista de Alojamientos</h2>
        <div class="row justify-content-center">
            <!-- Card 1 -->
            <div class="col-md-4 mb-4 alojamiento-card" data-name="Hotel Monasterio" data-price="high">
                <div class="card h-100">
                    <img src="../style/img/alojamien/b.jpg" class="card-img-top" alt="Hotel Monasterio">
                    <div class="card-body">
                        <h5 class="card-title">Hotel Monasterio</h5>
                        <p class="card-text">S/250 por noche</p>
                        <p class="card-description">Perfecto para disfrutar del evento del año con lujo y comodidad.</p>
                        <a href="#" class="btn btn-primary btn-sm">ver más</a>
                    </div>
                </div>
            </div>
            <!-- Card 2 -->
            <div class="col-md-4 mb-4 alojamiento-card" data-name="Hostal Sol de Oro" data-price="low">
                <div class="card h-100">
                    <img src="../style/img/alojamien/c.jpg" class="card-img-top" alt="Hostal Sol de Oro">
                    <div class="card-body">
                        <h5 class="card-title">Hostal Sol de Oro</h5>
                        <p class="card-text">S/70 por noche</p>
                        <p class="card-description">Ideal para tu escapada al festival con amigos.</p>
                        <a href="#" class="btn btn-primary btn-sm">ver más</a>
                    </div>
                </div>
            </div>
            <!-- Card 3 -->
            <div class="col-md-4 mb-4 alojamiento-card" data-name="Hotel Libertador" data-price="medium">
                <div class="card h-100">
                    <img src="../style/img/alojamien/d.jpg" class="card-img-top" alt="Hotel Libertador">
                    <div class="card-body">
                        <h5 class="card-title">Hotel Libertador</h5>
                        <p class="card-text">S/120 por noche</p>
                        <p class="card-description">Alojamiento cómodo para recargar energías entre eventos.</p>
                        <a href="#" class="btn btn-primary btn-sm">ver más</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Pie de página -->
    <footer class="footer bg-primary text-white mt-5">
        <div class="container text-center py-3">
            <p class="mb-0">&copy; 2024 Gestión de Alojamiento. Todos los derechos reservados.</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script src="../style/js/inventario.js"></script>
</body>
</html>

