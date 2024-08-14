<%-- 
    Document   : login-admin
    Created on : 23 jul. 2024, 21:25:59
    Author     : CESAR
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión Administrador</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link href="../../style/css/crear-login-admin/login-admin.css" rel="stylesheet" type="text/css"/>
    </head>
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



