<%-- 
    Document   : login-admin
    Created on : 23 jul. 2024, 21:25:59
    Author     : CESAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Admin</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    
    <style>
        body {
            background-image: url(/style/img/login-administrador.jpg);
            background-repeat: no-repeat;
            background-size: 100%;
        }
        .container {
            margin-top: 6rem; /* Espacio superior del contenedor */
            position: relative; /* Necesario para el posicionamiento absoluto del logo */
            width: 1000px; /* Ancho del contenedor */
        }
        .card {
            background-color: rgba(0, 0, 0, 0.5); /* Fondo negro con transparencia para el formulario */
            color: black; /* Texto negro para contraste */
            position: relative;
            border-radius: 10px; /* Redondear bordes opcional */
            padding: 10px; /* Padding para el card */
        }

        .logo {
            align-items: center;
            justify-content: center;
            text-align: center;
            color: #fff;
            width: 200px;
        }
        .logo img {
            width: 200px; /* Tamaño del logo dentro del fondo */
            height: 300px; /* Tamaño del logo dentro del fondo */
        }
        .card-body {
            padding: 0px 20px;
            color: white; /* Texto blanco para contraste */
        }
        .text-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center; /* Centrado vertical y horizontal */
        }
        .text-container h1 {
            margin-bottom: 20px;
            color: white; /* Texto blanco para contraste */
        }
        
        label {
            font-size: 20px;
        }
        
        .form-group input {
            color: black; /* Texto del input en negro para mejor legibilidad */
        }

        .form-footer {
            display: flex;
            justify-content: center; /* Centrar horizontalmente */
            margin-top: 10px; /* Espacio superior para separar del botón de ingresar */
        }
        
        .form-footer a {
            color: white; /* Color del enlace */
            text-decoration: none; /* Quitar subrayado del enlace */
            font-size: 20px; /* Tamaño de fuente del enlace */
        }
        
        .form-footer a:hover {
            text-decoration: underline; /* Subrayar al pasar el ratón sobre el enlace */
        }
        
        h1{
            background-color: rgba(0, 0, 0, 0.5); /* Fondo negro con transparencia para el formulario */
        }
        
    </style>
    
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 d-flex justify-content-center align-items-center">
                    <div class="card">
                        <div class="text-container">
                            <div class="card-body">
                                <form>
                                    <div class="form-group">
                                        <label for="email">Email:</label>
                                        <input type="email" class="form-control" id="email" placeholder="Ingresa tu email">
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Contraseña:</label>
                                        <input type="password" class="form-control" id="password" placeholder="Ingresa tu contraseña">
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-block">Ingresar</button>
                                    <div class="form-footer">
                                        <a href="/view/crear_cuenta-admin.jsp">Crear cuenta</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 d-flex justify-content-center align-items-center">
                    <div class="logo-container">
                        <div class="logo">
                            <img src="/style/img/logo.png" alt="Logo">
                            <h1 class="text-center">NOT YOUNG NOW</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>


