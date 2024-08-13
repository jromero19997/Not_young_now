<%-- 
    Document   : ventas_ticket
    Created on : 11 ago. 2024, 15:13:41
    Author     : CESAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="../style/css/venta_ticket.css" rel="stylesheet" type="text/css"/>
    <title>Selección de Tickets</title>
</head>
<body>
    <header>
        <nav class="navbar">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img src="../style/img/logo.png" alt="Logo" width="50" height="60" class="d-inline-block align-text-top">
                    <h1>NOT YOUNG NOW</h1>
                </a>
            </div>
        </nav>
    </header>
    
    <main class="container-fluid">
        <div class="row">
            <div class="col-lg-8 col-12 mb-3">
                <div class="info-escenario">
                    <h2>MAPA DEL ESCENARIO:</h2>
                    <img src="../style/img/escenario.png" alt="escenario" class="img-fluid"/>
                </div>

                <div class="tabla-escenario table-responsive">
                    <table class="table table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">Tipo de Ticket</th>
                                <th scope="col">Precio</th>
                                <th scope="col">Cantidad</th>
                                <th scope="col" class="btn-accion">Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">GENERAL</th>
                                <td>S/ 250</td>
                                <td><input type="text" class="form-control mx-auto"></td>
                                <td>
                                    <div class="d-flex flex-column flex-md-row justify-content-center btn-accion">
                                        <button class="btn btn-success mb-2 mb-md-0 mx-1">AGREGAR</button>
                                        <button class="btn btn-primary mx-1">ACTUALIZAR</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">SUPER VIP</th>
                                <td>S/ 400</td>
                                <td><input type="text" class="form-control mx-auto"></td>
                                <td>
                                    <div class="d-flex flex-column flex-md-row justify-content-center btn-accion">
                                        <button class="btn btn-success mb-2 mb-md-0 mx-1">AGREGAR</button>
                                        <button class="btn btn-primary mx-1">ACTUALIZAR</button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="total-pagar">
                    <h2>TOTAL A PAGAR:</h2>
                    <p>S/ 0</p>
                </div>

                <!-- Botón CONTINUAR agregado para pantallas pequeñas -->
                <div class="d-block d-lg-none text-center mt-3">
                    <button class="btn btn-danger continuar">CONTINUAR</button>
                </div>
            </div>
            
            <div class="col-lg-4 d-none d-lg-block text-center derecha">
                <img src="../style/img/aventura.png" alt="aventura" class="img-fluid"/>
                <h2>AVENTURA 2024</h2>
                <p>Viernes 20 de octubre del 2024 / 18:00hrs</p>
                <button class="btn btn-danger continuar">CONTINUAR</button>
            </div>
        </div>
    </main>
    
    <footer>
        
    </footer>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>









