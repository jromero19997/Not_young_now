<%-- 
    Document   : login-cliente
    Created on : 23 jul. 2024, 21:23:45
    Author     : CESAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Cliente</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>

    <style>
        body {
            background-image: url(/style/img/login-cliente.jpg);
            background-repeat: no-repeat;
            background-size: 100%;
        }
        
        .container {
            margin-top: 8rem; /* Espacio superior del contenedor */
            position: relative; /* Necesario para el posicionamiento absoluto del logo */
        }
        
        .card {
            background-color: rgba(255, 255, 255, 0.6); /* Fondo blanco con opacidad 0.7 */
            color: black; /* Texto negro para contraste */
            position: relative;
            border-radius: 10px; /* Redondear bordes opcional */
        }
        
        .logo {
            position: absolute;
            top: -50px; /* Posicionar fuera del card */
            left: 50%;
            transform: translateX(-50%);
            background-color: #7573F5; /* Fondo azul medio */
            border-radius: 50%; /* Opcional: redondear el fondo */
            width: 85px; /* Ajustar tamaño según sea necesario */
            height: 95px; /* Ajustar tamaño según sea necesario */
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 2; /* Asegurar que el logo esté al frente */
        }
        
        .logo img {
            width: 60px; /* Tamaño del logo dentro del fondo */
            height: 80px; /* Tamaño del logo dentro del fondo */
        }
        
        .card-body {
            position: relative; /* Asegurarse de que el contenido del card no se sobreponga */
            z-index: 1; /* Asegurarse de que el contenido esté debajo del fondo azul del logo */
        }
        
        .container{
            width: 700px
        }
        
        label{
            font-size: 20px
        }
        
        .card-body{
            padding: 0px 20px 20px 20px;
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
            color: black; /* Color del enlace */
            text-decoration: none; /* Quitar subrayado del enlace */
            font-size: 20px; /* Tamaño de fuente del enlace */
        }
        
        .form-footer a:hover {
            text-decoration: underline; /* Subrayar al pasar el ratón sobre el enlace */
        }
        
    </style>
    
    <body>
        <div class="container">
            <div class="logo">
                <img src="/style/img/logo.png" alt="Logo">
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <h1 class="text-center mt-5">NOT YOUNG NOW</h1>
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
                                        <a href="/view/crear_cuenta-cliente.jsp">Crear cuenta</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>






