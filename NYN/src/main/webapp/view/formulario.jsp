<%-- 
    Document   : formulario
    Created on : 15 jul 2024, 17:46:59
    Author     : camila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>fromulario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
          rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" 
          crossorigin="anonymous">
    </head>
    <body class="bg-dark text-white"> 
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
        <div class = "container mt-4 col-lg-8">
            <div class="card">
                <div class="card-bady text-center">
                    <form>
                        <div class="form-group">
                            <h5 class="mt-3">INGRESA LOS DATOS DEL RECEPTOR</h5>
                        </div>
                        <div class="container mt-3">
                            <div class="form-group col-md-13">
                                <label for="exampleInputEmail1" class="form-label">NOMBRES:</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                            <div class="container mt-3">
                                <div class="form-group col-md-13">
                                    <label for="exampleInputEmail1" class="form-label">APELLIDOS:</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                </div>
                            </div>
                            <div class="container mt-3">
                                <div class="form-group col-md-13">
                                    <label for="exampleInputEmail1" class="form-label">EMAIL:</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                </div>
                                <div class="mb-3 form-check"> <br>
                                    <label class="form-check-label" for="exampleCheck1">Verique si los datos ingresados son los correctos</label>
                                </div>
                                <button type="submit" class="btn btn-success mr-7">TRANSFERIR</button> <br><br>
                                </form>
                            </div>
                        </div>
                </div>
                </body>
                </html>
