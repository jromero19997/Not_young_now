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
        <style>
            body {
                background-image: url(/style/img/login-cliente.jpg);
                background-repeat: no-repeat;
                background-size: 100%;
            }

            .container {
                margin-top: 8rem;
                position: relative;
                width: 700px;
            }

            .card {
                background-color: rgba(255, 255, 255, 0.6);
                color: black;
                position: relative;
                border-radius: 10px;
            }

            .logo {
                position: absolute;
                top: -50px;
                left: 50%;
                transform: translateX(-50%);
                background-color: #7573F5;
                border-radius: 50%;
                width: 85px;
                height: 95px;
                display: flex;
                align-items: center;
                justify-content: center;
                z-index: 2;
            }

            .logo img {
                width: 60px;
                height: 80px;
            }

            .card-body {
                position: relative;
                z-index: 1;
                padding: 0px 20px 20px 20px;
            }

            label {
                font-size: 20px;
            }

            .form-group input {
                color: black;
            }

            .form-footer {
                display: flex;
                justify-content: center;
                margin-top: 10px;
            }

            .form-footer a {
                color: black;
                text-decoration: none;
                font-size: 20px;
            }

            .form-footer a:hover {
                text-decoration: underline;
            }
        </style>
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
                    <script>
                        window.onload = function() {
                            document.getElementById('email').value = '';
                            document.getElementById('password').value = '';
                        }
                    </script>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>


