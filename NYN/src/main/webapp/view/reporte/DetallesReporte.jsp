<%-- 
    Document   : DetallesReporte
    Created on : 12 ago 2024, 23:38:01
    Author     : lohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalles de Reporte</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="../../style/css/reporte/DetallesReporte.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header class="bg-custom-header text-white p-3">
            <div class="container d-flex justify-content-between align-items-center">
                <div class="logo"><img src="../../style/img/reporte/logo.png" alt="Logo" class="img-fluid"></div>
                <nav>
                    <button class="btn btn-custom-nav me-2">Inicio</button>
                    <button class="btn btn-custom-nav me-2">Eventos</button>
                    <button class="btn btn-custom-nav me-2">Transmisión en vivo</button>
                    <button class="btn btn-custom-nav me-2">Inventario</button>
                    <button class="btn btn-custom-nav">Salir</button>
                    <button class="btn btn-light p-0 user-icon"><img src="../../style/img/reporte/icon.jpeg" alt="User Icon" class="img-fluid"></button>
                </nav>
            </div>
        </header>
        <main class="container my-4">
            <!-- Festival Detalles -->
            <section class="bg-custom-section">
                <div class="text-center-custom">
                    <h1 class="heading-dark">Detalles del Festival</h1>
                </div>
                <div class="row">
                    <div class="col-md-6 text-center">
                        <img src="../../style/img/reporte/grup.jpg" alt="Aventura" class="img-fluid mb-3" style="max-width: 80%; height: auto;">
                    </div>
                    <div class="col-md-6">
                        <p><strong>Fecha del Festival:</strong> 07/05/2024</p>
                        <p><strong>Nombre del Festival:</strong> Aventura</p>
                        <p><strong>Horario:</strong> 7:00 pm - 11:00 pm</p>
                        <p><strong>Ubicación:</strong> Av. 28 de Julio, Lima</p>
                        <p><strong>Género:</strong> Bachata</p>
                        <p><strong>Capacidad de Personas:</strong> 1000 personas</p> 
                    </div>
                </div>
            </section>
            <!-- Ticket Info -->
            <section class="ticket-info">
                <div class="text-center-custom">
                    <h3 class="heading-dark">Detalles de Tickets</h3>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="bg-light p-3 rounded mb-3">
                            <h5>Campo A</h5>
                            <p><strong>Tickets Vendidos:</strong> 300</p>
                            <p><strong>Precio:</strong> s/ 120</p>
                            <p><strong>Dinero Recaudado:</strong> s/ 36,000.00</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="bg-light p-3 rounded mb-3">
                            <h5>Campo B</h5>
                            <p><strong>Tickets Vendidos:</strong> 300</p>
                            <p><strong>Precio:</strong> s/ 80</p>
                            <p><strong>Dinero Recaudado:</strong> s/ 24,000.00</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="bg-light p-3 rounded mb-3">
                            <h5>Campo C</h5>
                            <p><strong>Tickets Vendidos:</strong> 250</p>
                            <p><strong>Precio:</strong> s/ 40</p>
                            <p><strong>Dinero Recaudado:</strong> s/ 10,000.00</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="bg-light p-3 rounded mb-3">
                            <h5>Campo A</h5>
                            <p><strong>Tickets No Vendidos:</strong> <span class="result-red">100</span></p> <!-- Adjusted color -->
                            <p><strong>Precio:</strong> s/ 120</p>
                            <p><strong>Dinero No Recaudado:</strong> s/ 12,000.00</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="bg-light p-3 rounded mb-3">
                            <h5>Campo B</h5>
                            <p><strong>Tickets No Vendidos:</strong> <span class="result-red">50</span></p> <!-- Adjusted color -->
                            <p><strong>Precio:</strong> s/ 80</p>
                            <p><strong>Dinero No Recaudado:</strong> s/ 4,000.00</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="bg-light p-3 rounded mb-3">
                            <h5>Campo C</h5>
                            <p><strong>Tickets No Vendidos:</strong> <span class="result-red">0</span></p> <!-- Adjusted color -->
                            <p><strong>Precio:</strong> s/ 40</p>
                            <p><strong>Dinero No Recaudado:</strong> s/ 0.00</p>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Summary Section -->
            <section class="bg-custom-section">
                <div class="text-center-custom">
                    <h2 class="heading-dark">Resumen de Venta</h2>
                </div>
                <div class="summary">
                    <p><strong>Dinero Recaudado:</strong> <span class="result-red">s/ 70,000.00</span></p>
                    <p><strong>Dinero No Recaudado:</strong> <span class="result-red">s/ 15,000.00</span></p>
                    <p><strong>Tickets Vendidos:</strong> <span class="result-red">850</span></p>
                    <p><strong>Tickets No Vendidos:</strong> <span class="result-red">150</span></p> <!-- Adjusted color -->
                </div>
            </section>
            <!-- Action Buttons -->
            <div class="mt-4 text-center">
                <a href="ReporteVenta.jsp" class="btn btn-prev mt-3">Página Anterior</a>
                <button class="btn btn-custom-export mt-3">Exportar Documentación</button>
            </div>
        </main>
        <footer class="bg-dark text-white text-center p-3">
            <p>NOT YOUNG NOW</p>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>