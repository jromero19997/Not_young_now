<%-- 
    Document   : Soporte
    Created on : 12 ago 2024, 23:37:12
    Author     : lohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soporte del Cliente</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            body {
                background-color: #f8f9fa;
            }
            .header-content .logo img {
                height: 50px;
            }
            .user-icon img {
                height: 40px;
            }
            .request-section, .faq-section {
                background-size: cover;
                background-position: center;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                margin-bottom: 30px;
            }
            .request-section {
                background-image: url('img/sop.jpg');
            }
            .faq-section {
                background-image: url('img/sup.jpg');
            }
            .content-overlay {
                background-color: rgba(255, 255, 255, 0.8);
                padding: 20px;
                border-radius: 8px;
            }
            .footer-links a {
                display: block;
                color: #ffffff;
                text-decoration: none;
                margin-bottom: 5px;
            }
            .footer-links a:hover {
                text-decoration: underline;
            }
            .social-media img {
                height: 30px;
            }
        </style>
    </head>
    <body>
        <header class="bg-primary text-white p-3">
            <div class="container d-flex justify-content-between align-items-center">
                <div class="header-content d-flex align-items-center">
                    <div class="logo mr-3"><img src="img/WOLF.jpg" alt="Logo" class="img-fluid"></div>
                    <div class="site-name h4 mb-0">NOT YOUNG NOW</div>
                </div>
                <nav>
                    <button class="btn btn-light mx-2">Evento</button>
                    <button class="btn btn-light mx-2">Servicio adicional</button>
                    <button class="btn btn-light mx-2">Cerrar sesión</button>
                    <button class="btn btn-light p-0 user-icon"><img src="img/icon.jpeg" alt="User Icon" class="img-fluid"></button>
                </nav>
            </div>
        </header>
        <main class="container my-5">
            <section class="request-section p-5">
                <div class="content-overlay">
                    <h2>Realizar Solicitud</h2>
                    <form action="submitRequest" method="post">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="problem">Describe tu problema:</label>
                            <textarea class="form-control" id="problem" name="problem" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary mt-3">Enviar Solicitud</button>
                    </form>
                </div>
            </section>
            <section class="faq-section p-5">
                <div class="content-overlay">
                    <h2>Preguntas Frecuentes</h2>
                    <div class="faq-item mb-3">
                        <h3>¿Cómo compro un ticket en línea?</h3>
                        <p>Para comprar un ticket en línea, simplemente selecciona el evento que deseas asistir, elige la cantidad de tickets que deseas comprar y sigue las instrucciones de pago.</p>
                    </div>
                    <div class="faq-item mb-3">
                        <h3>¿Cuál es el proceso de devolución?</h3>
                        <p>El proceso de devolución está detallado en nuestra página de políticas de devolución.</p>
                    </div>
                    <div class="faq-item mb-3">
                        <h3>¿Cómo puedo contactar al soporte?</h3>
                        <p>Puedes contactar al soporte a través del formulario de solicitud en esta página o llamando a nuestro número de soporte.</p>
                    </div>
                    <div class="faq-item mb-3">
                        <h3>¿Cuál es el límite de tickets que puedo comprar?</h3>
                        <p>El límite de tickets que puedes comprar varía según el evento. Por favor, verifica la información del evento para obtener más detalles.</p>
                    </div>
                    <div class="faq-item">
                        <h3>¿Puedo cambiar o cancelar mis tickets?</h3>
                        <p>Por favor, verifica la política de cambios y cancelaciones para cada evento. En general, no se permiten cambios o cancelaciones después de que se hayan comprado los tickets.</p>
                    </div>
                </div>
            </section>
        </main>
        <footer class="bg-dark text-white text-center py-3">
            <div class="container">
                <div class="social-media mb-3">
                    <a href="#" class="text-white mx-2"><img src="facebook_icon.png" alt="Facebook" class="img-fluid"></a>
                    <a href="#" class="text-white mx-2"><img src="twitter_icon.png" alt="Twitter" class="img-fluid"></a>
                    <a href="#" class="text-white mx-2"><img src="instagram_icon.png" alt="Instagram" class="img-fluid"></a>
                </div>
                <div class="footer-links d-flex justify-content-around">
                    <div>
                        <p>Otros:</p>
                        <a href="#">Deja un comentario</a>
                        <a href="#">Historial de compras</a>
                        <a href="#">Notificaciones</a>
                        <a href="#">Oferta</a>
                    </div>
                    <div>
                        <p>Solicitudes:</p>
                        <a href="#">Transmisión en vivo</a>
                        <a href="#">Reembolso</a>
                        <a href="#">Transferir ticket</a>
                        <a href="#">Solicitar soporte</a>
                    </div>
                </div>
            </div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>    
    </body>
</html>