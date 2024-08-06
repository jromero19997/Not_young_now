<%-- 
    Document   : crear_cuenta-admin
    Created on : 23 jul. 2024, 21:26:20
    Author     : CESAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Cuenta Cliente</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    
    <style>
        body {
            background-image: url(/style/img/crear-cuenta-admin.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
        .container {
            margin: 3rem; /* Espacio superior del contenedor */
            position: relative; /* Necesario para el posicionamiento absoluto del logo */
            width: 1000px; /* Ancho del contenedor ajustado */
            display: flex; /* Usar flexbox para alinear elementos */
            justify-content: flex-end; /* Alinear contenido a la derecha */
        }
        .card {
            background-color: rgba(255, 255, 255, 0.5); /* Fondo blanco con opacidad 0.5 */
            color: black; /* Texto negro para contraste */
            position: relative;
            border-radius: 10px; /* Redondear bordes opcional */
            margin-right: -230px
        }
        .card-body {
            position: relative; /* Asegurarse de que el contenido del card no se sobreponga */
            z-index: 1; /* Asegurarse de que el contenido esté debajo del fondo azul del logo */
        }
        
        .card-body form {
            padding: 0 15px; /* Ajustar el padding del formulario */
        }
        
        h1 {
            border-bottom: 5px solid black;
            margin: 10px 20px;
        }
        
        label {
            font-size: 20px;
            font-family: monospace;
        }
        
        .btn {
            font-size: 20px;
            display: grid;
            margin: auto;
            text-align: center;
            justify-content: center;
        }
        
        .form-footer {
            display: flex;
            justify-content: center; /* Centrar horizontalmente */
            margin-top: 10px; /* Espacio superior para separar del botón de ingresar */
        }
        
        .form-footer a {
            color: black; /* Color del enlace */
            text-decoration: none; /* Quitar subrayado del enlace */
            font-size: 30px; /* Tamaño de fuente del enlace */
            font-family: fantasy
        }
        
        .form-footer a:hover {
            text-decoration: underline; /* Subrayar al pasar el ratón sobre el enlace */
        }
        
    </style>
    
    <body>
        <div class="container">
            <div class="card">
                <h1 class="text-center">NOT YOUNG NOW</h1>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <label for="nombre">Nombre:</label>
                            <input type="text" class="form-control" id="nombre" placeholder="Ingresa tu nombre">
                        </div>
                        <div class="form-group">
                            <label for="apellido">Apellido:</label>
                            <input type="text" class="form-control" id="apellido" placeholder="Ingresa tu apellido">
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" id="email" placeholder="Ingresa tu email">
                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña:</label>
                            <input type="password" class="form-control" id="password" placeholder="Ingresa tu contraseña">
                        </div>
                        <div class="form-group">
                            <label for="fecha-nacimiento">Fecha de nacimiento:</label>
                            <input type="date" class="form-control" id="fecha-nacimiento" placeholder="Ingresa tu fecha de nacimiento">
                        </div>
                        <div class="form-group">
                            <label for="telefono">Permisos:</label>
                            <input type="text" class="form-control" id="permisos" placeholder="Ingresa tipo de permiso">
                        </div>
                        <button type="submit" class="btn btn-primary">Crear cuenta</button>
                        <div class="form-footer">
                            <a href="/view/login-admin.jsp">Iniciar Sesión</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>

