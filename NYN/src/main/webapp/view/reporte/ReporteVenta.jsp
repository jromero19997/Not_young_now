<%-- 
    Document   : ReporteVenta
    Created on : 12 ago 2024, 23:37:32
    Author     : lohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte de Venta</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="../../style/css/reporte/ReporteVenta.css" rel="stylesheet" type="text/css"/>
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
    <main class="container mt-4">
        <section class="event-details bg-white p-4 mb-4 rounded">
            <h2>Detalles de Eventos</h2>
            <div class="filters d-flex justify-content-between mb-4">
                <select class="form-control w-25">
                    <option>Seleccionar Género Musical</option>
                    <option value="bachata">Bachata</option>
                    <option value="folk-pop">Folk Pop</option>                    
                </select>
                <input type="text" class="form-control w-25" placeholder="Buscar Festival...">
                <input type="month" class="form-control w-25">
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="event-card  p-3 mb-3 rounded d-flex align-items-start">
                        <img src="../../style/img/reporte/aventuras.jpg" alt="Aventura" class="img-fluid rounded-circle me-3">
                        <div class="event-content d-flex flex-column">
                            <div class="event-description mb-3">
                                <p><strong>Fecha del Festival:</strong> 07/05/2024</p>
                                <p><strong>Nombre del Festival:</strong> Aventura</p>
                                <p><strong>Horario:</strong> 7:00 pm - 11:00 pm</p>
                                <p><strong>Ubicación:</strong> Av. 28 de Julio, Lima</p>
                                <p><strong>Género:</strong> Bachata</p>
                            </div>
                            <div class="d-flex">
                                <button class="btn custom-btn me-2" onclick="window.location.href='DetallesReporte.jsp'">Visualizar Venta</button>
                                <button class="btn custom-btn">Visualizar Valoraciones</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="event-card  p-3 mb-3 rounded d-flex align-items-start">
                        <img src="../../style/img/reporte/MORAT.jpg" alt="Morat" class="img-fluid rounded-circle me-3">
                        <div class="event-content d-flex flex-column">
                            <div class="event-description mb-3">
                                <p><strong>Fecha del Festival:</strong> 08/06/2024</p>
                                <p><strong>Nombre del Festival:</strong> Morat</p>
                                <p><strong>Horario:</strong> 7:00 pm - 11:00 pm</p>
                                <p><strong>Ubicación:</strong> Av. 28 de Julio, Lima</p>
                                <p><strong>Género:</strong> Folk Pop</p>
                            </div>    
                            <div class="d-flex">
                                <button class="btn custom-btn me-2" onclick="visualizeSale()">Visualizar Venta</button>
                                <button class="btn custom-btn">Visualizar Valoraciones</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="share-event bg-white p-4 mb-4 rounded text-center">
            <h3>¿Desea compartir el evento?</h3>
            <p>Si desea compartir los eventos actualmente en taquilla contamos con la opción compartir evento, que es este botón rojo que se encuentra de bajo de este texto.</p>
            <button class="btn btn-danger">Compartir Evento</button>
        </section>
        <section class="valuation-button text-center mb-4">
            <a href="Valoraciones.jsp" class="btn custom-btn">Valorización de Evento</a>
        </section>
    </main>
    <footer class="bg-dark text-white text-center p-3">
        <p>NOT YOUNG NOW</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>