<%-- 
    Document   : Valoraciones
    Created on : 12 ago 2024, 23:38:14
    Author     : lohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Comentarios y Valoraciones</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <!-- CSS Personalizado -->
        <link href="../style/css/valoraciones/valoraciones.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header class="bg-custom-header text-white p-3">
            <div class="container d-flex justify-content-between align-items-center">
                <div class="header-content d-flex align-items-center">
                    <div class="logo mr-3"><img src="../style/img/soporte/logo.png" alt="Logo" class="img-fluid"></div>
                    <div class="site-name h4 mb-0">NOT YOUNG NOW</div>
                </div>
                <nav>
                    <button class="btn btn-custom-nav me-2">Evento</button>
                    <button class="btn btn-custom-nav me-2">Servicio adicional</button>
                    <button class="btn btn-custom-nav me-2">Cerrar sesión</button>
                    <button class="btn btn-light p-0 user-icon"><img src="../style/img/soporte/icon.jpeg" alt="User Icon" class="img-fluid"></button>
                </nav>
            </div>
        </header>
        <main class="container">
            <section class="valoracion">
                <h2>Seleccionar Valoración</h2>
                <div class="valoracion-opciones">
                    <h1>Morat</h1>
                    <ul class="list-unstyled">
                        <li>Increíble (Opinión 1000 personas) <span class="stars">★★★★★</span></li>
                        <li>Muy Bueno (Opinión 2500 personas) <span class="stars">★★★★☆</span></li>
                        <li>Bueno (Opinión 1000 personas) <span class="stars">★★★☆☆</span></li>
                        <li>Medio (Opinión 100 personas) <span class="stars">★★☆☆☆</span></li>
                        <li>Malo (Opinión 4 personas) <span class="stars">★☆☆☆☆</span></li>
                    </ul>
                </div>
                <div class="boton-anterior text-center">
                    <a href="ReporteVenta.jsp" class="btn btn-dark">Página Anterior</a>
                </div>
                <div class="buscar-cliente mt-3">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Buscar Estrellas">
                        <div class="input-group-append">
                            <button class="btn btn-success" type="button">Aplicar Filtro</button>
                        </div>
                    </div>
                </div>
            </section>
            <section class="comentarios mt-4">
                <h2>Comentarios y Valoraciones</h2>
                <div class="comentario mb-3">
                    <div class="valoracion stars">★★★★★</div>
                    <div class="comentario-texto">
                        "La organización del concierto de Morat fue impecable. El sonido y las luces fueron espectaculares, haciendo de la noche una experiencia inolvidable."
                    </div>
                    <div class="cliente">Alfredo Gonzales</div>
                </div>
                <div class="comentario mb-3">
                    <div class="valoracion stars">★★★★★</div>
                    <div class="comentario-texto">
                        "Excelente organización en el concierto de Morat. Todo estuvo perfectamente coordinado y la banda entregó una actuación increíble."
                    </div>
                    <div class="cliente">Rosa Quispe</div>
                </div>
                <div class="comentario mb-3">
                    <div class="valoracion stars">★★★★☆</div>
                    <div class="comentario-texto">
                        "El concierto de Morat fue una maravilla. La organización estuvo de 10 y la banda se lució en el escenario."
                    </div>
                    <div class="cliente">Rómulo Molina</div>
                </div>
            </section>
        </main>
        <footer class="bg-dark text-white text-center py-3">
            <p>----- > NOT YOUNG NOW < -----</p>
        </footer>
        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>