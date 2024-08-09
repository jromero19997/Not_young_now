<%-- 
    Document   : transferirboletos1
    Created on : 5 ago 2024, 16:10:38
    Author     : camila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Tranferencia de tickets </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" 
              crossorigin="anonymous">
        <link href="../style/tranferir1.css" rel="stylesheet" type="text/css"/>
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
        <nav class="navbar bg-dark py-4">
            <div class="container-fluid">
                <h5  class="text-light bg-dark" href="#">TRANSFERIR TICKET:</h5> 
            </div>
        </nav><br>
        <div class="card bg-dark">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="../style/img/imagen1.jpg" class="img" alt="imagen"/>
                </div>
                <div class="col-md-6">
                    <div class="card-body"><br>
                        <h5 class="card-title pt-4 text-light">AVENTURA</h5>
                        <h5 class="card-title pt-4 text-light">PERÚ</h5>
                        <h5 class="card-title pt-4 text-light">5 ENTRADAS</h5>
                        <p class="card-text pt-4">Detalles del evento</p>
                    </div>
                </div> 
            </div>
        </div>
    </body>
</html>
