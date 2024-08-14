<%-- 
    Document   : seguro_adicional
    Created on : 12 ago. 2024, 21:12:30
    Author     : CESAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="../../style/css/proceso comprar ticket/seguro_adicional.css" rel="stylesheet" type="text/css"/>
    <title>Selección de seguro</title>
</head>
<body>
    <header>
        <nav class="navbar">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img src="../../style/img/logo.png" alt="Logo" width="50" height="60" class="d-inline-block align-text-top">
                    <h1>NOT YOUNG NOW</h1>
                </a>
            </div>
        </nav>
    </header>
    
    <main class="container-fluid">
        <div class="row">
            <div class="col-lg-8 col-12 izquierda">
                <h2 class="titulo-producto">SELECCIONA PRODUCTOS ADICIONALES</h2>
                <div class="contenido-seguro">
                    <div class="seguro-ticket">
                        <h3>SEGURO DE TICKET</h3>
                        <p>Este seguro estaria vinculado para la compra 
                            de ticket para que tengas la oportunidad de 
                            tener la devolucion de tu dinero completo.</p>
                        <h4>Producto no disponible por el momento.</h4>
                    </div>

                    <div class="seguro-servicio-adicional">
                        <h3>SEGURO DE SERVICIO ADICIONAL</h3>
                        <p>Este seguro estaria vinculado para las compras como alojamiento y/o 
                            transporte para que tengas la oportunidad de tener la devolución 
                            de tu dinero completo.</p>
                        <h4>Producto no disponible por el momento.</h4>
                    </div>
                
                
                <!-- Botón CONTINUAR agregado para pantallas pequeñas -->
                    <div class="d-block d-lg-none text-center mt-3">
                        <button class="btn btn-danger continuar">CONTINUAR</button>
                    </div>
                </div>

            </div>
            
            <div class="col-lg-4 d-none d-lg-block text-center derecha">
                <img src="../../style/img/aventura.png" alt="aventura" class="img-fluid"/>
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
