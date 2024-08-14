<%-- 
    Document   : login-cliente
    Created on : 23 jul. 2024, 21:23:45
    Author     : CESAR
--%>

<%@page import="dao.dao_login_cliente"%>
<%@page import="modelo.login_cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Cliente</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link href="../../style/css/crear-login-cliente/login-cliente.css" rel="stylesheet" type="text/css"/>
    </head>
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
                            <form method="post">
                                <div class="form-group">
                                    <label for="email">Email:</label>
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Ingresa tu email" required>
                                </div>
                                <div class="form-group">
                                    <label for="password">Contraseña:</label>
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Ingresa tu contraseña" required>
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Ingresar</button>
                                <div class="form-footer">
                                    <a href="/view/crear_cuenta-cliente.jsp">Crear cuenta</a>
                                </div>
                            </form>
                            <%
                                if ("POST".equalsIgnoreCase(request.getMethod())) {
                                    String email = request.getParameter("email");
                                    String password = request.getParameter("password");

                                    login_cliente lc = new login_cliente();
                                    lc.setEmail(email);
                                    lc.setPassword(password);

                                    dao_login_cliente dao_lc = new dao_login_cliente();
                                    int r = dao_lc.validar(lc);

                                    if (r == 1) {
                                        response.sendRedirect("valoracion.jsp");
                                    } else {
                                        out.println("<div class='alert alert-danger mt-3' role='alert'>Email o contraseña incorrectos.</div>");
                                    }
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="../../style/js/login-cliente.js" type="text/javascript"></script>
    </body>
</html>



