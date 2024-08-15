<%-- 
    Document   : crear_cuenta-admin
    Created on : 23 jul. 2024, 21:26:20
    Author     : CESAR
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Cuenta Administrador</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link href="../../style/css/crear-login-admin/crear_cuenta-admin.css" rel="stylesheet" type="text/css"/>
    </head>
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
                            <input type="date" class="form-control" id="fecha-nacimiento">
                        </div>
                        <div class="form-group">
                            <label for="permisos">Permisos:</label>
                            <input type="text" class="form-control" id="permisos" placeholder="Ingresa tipo de permiso">
                        </div>
                        <button type="submit" class="btn btn-primary">Crear cuenta</button>
                        <div class="form-footer">
                            <a href="login-admin.jsp">Iniciar Sesión</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>


