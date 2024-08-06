<%-- 
    Document   : menuprincipal
    Created on : 5 ago 2024, 18:33:11
    Author     : camila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Menu principal </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" 
              crossorigin="anonymous">
        <link href="menu.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-success">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">NOT YOUNG NOW</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Eventos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Servicio Adicional</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Cerrar sesion</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    <body> 
       
        <div id="carouselExampleFade" class="carousel slide carousel-fade">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/imagen2.jpg" class="d-block  "  alt="imagen1"/>
                </div>
                <div class="carousel-item">
                    <img src="img/juane.jpg"  class="d-block " alt="imagen2"/>
                </div>
                <div class="carousel-item">
                    <img src="img/aventuraa_c.jpg" class="d-block " alt="imagen3"/>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card">
                    <img src="img/aventura.png" class="card-img-top" alt="imagen1"/>
                    <div class="card-body">
                        <h5 class="card-title">ESTADIO NACIONAL LIMA/MUSICA</h5>
                        <H5 class="card-text">AVENTURA EN LIMA</H5>
                        <p class="card-text"> 16 de octubre del 2024-17 de</p>
                        <p class="card-text"> octubre 2024</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="img/morat.png" class="card-img-top" alt="imagen2"/>
                    <div class="card-body">
                        <h5 class="card-title">ESTADIO NACIONAL LIMA/MUSICA</h5>
                        <H5 class="card-text">MORAT LOS ESTADIOS.ANTES DE  </H5>
                        <H5 class="card-text">DE QUE AMANEZCA</H5>
                        <P class="card-text">14 de octubre 2024</p>
                    </div> 
                </div>
            </div>
        </div>
    </div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
