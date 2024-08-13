<%-- 
    Document   : medio_pago
    Created on : 13 ago. 2024, 00:28:40
    Author     : CESAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link href="../style/css/medio_pago_ticket.css" rel="stylesheet" type="text/css"/>
    <title>Selección de medio de pago</title>
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
            <div class="col-lg-8 col-12 izquierda">
                <h2 class="titulo-general">Selecciona tu medio de pago</h2>
                <div class="medio-pago">
                    <!-- Tarjeta -->
                    <div class="tarjeta">
                        <div class="titulo" data-bs-toggle="collapse" data-bs-target="#collapseTarjeta" aria-expanded="false" aria-controls="collapseTarjeta">
                            <img src="../style/img/visa-mastercard.png" alt=""/>
                            <h3>Tarjeta de credito / debito</h3>
                            <i class="bi bi-chevron-down ms-auto"></i>
                        </div>
                        
                        <div id="collapseTarjeta" class="collapse">
                            <div class="contenido">
                                <p>Revisa el detalle de la compra y el monto 
                                a pagar antes de Continuar, una vez procesado 
                                el pago no existen cambios ni devoluciones</p>
                            </div>
                            <button class="pagar">Pagar</button>
                        </div>
                    </div>
                    
                    <!-- Billeteras Electronicas -->
                    <div class="billeteras-electronicas">
                        <div class="titulo" data-bs-toggle="collapse" data-bs-target="#collapseBilleteras" aria-expanded="false" aria-controls="collapseBilleteras">
                            <img src="../style/img/billeteras.png" alt=""/>
                            <h3>Billeteras Electronicas</h3>
                            <i class="bi bi-chevron-down ms-auto"></i>
                        </div>
                        
                        <div id="collapseBilleteras" class="collapse">
                            <div class="contenido">
                                <p>Pagar con CÓDIGO QR es muy simple</p>
                                <ol>
                                    <li>Escanea el código QR de tu marca favorita desde tu app</li>                                
                                    <li>Verifica que el monto sea correcto</li>
                                    <li>Tienes 15 minutos para realizar el pago</li>
                                </ol>
                                <div class="img-billetera">
                                    <img src="../style/img/img-billetera/Agora.png" alt=""/>
                                    <img src="../style/img/img-billetera/BBVA Wallet.png" alt=""/>
                                    <img src="../style/img/img-billetera/Scotiabank.png" alt=""/>
                                    <img src="../style/img/img-billetera/Yape.png" alt=""/>
                                    <img src="../style/img/img-billetera/plin-logo.png" alt=""/>
                                    <img src="../style/img/img-billetera/tunki.png" alt=""/>
                                </div>
                            </div>
                            <button class="pagar">Pagar</button>
                        </div>
                    </div>
                    
                    <!-- Pago Efectivo -->
                    <div class="pago-efectivo">
                        <div class="titulo" data-bs-toggle="collapse" data-bs-target="#collapsePagoEfectivo" aria-expanded="false" aria-controls="collapsePagoEfectivo">
                            <img src="../style/img/pago-efectivo.png" alt=""/>
                            <h3>Pago Efectivo</h3>
                            <i class="bi bi-chevron-down ms-auto"></i>
                        </div>
                        
                        <div id="collapsePagoEfectivo" class="collapse">
                            <div class="contenido">
                                <p>Banca móvil, Agentes y Bodegas vía PagoEfectivo,
                                genera un código de 9 dígitos y págalo a través de:</p>
                                <ul>
                                    <li>
                                        <h4>Banca Móvil / Internet:</h4>
                                        <p>Paga en BBVA, BCP, Interbank, Scotiabank, BanBif, 
                                            Caja Arequipa y Banco Pichincha, a través de la 
                                            banca por internet o banca móvil en la opción 
                                            pago de servicios.</p>
                                    </li>
                                    
                                    <li>
                                        <h4>Agentes y Bodegas:</h4>
                                        <p>Deposita en BBVA, BCP, Interbank, Scotiabank, BanBif, 
                                            Wester Union, Tambo+, Kasanet, Ya Ganaste, Red Digital,
                                            Comercio Multiservicios Niubiz, MoneyGram, 
                                            Caja Arequipa, Disashop, Cellpower.</p>
                                    </li>
                                </ul>
                                <button class="no-disponible">Medio de pago no disponible.</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-4 d-none d-lg-block text-center derecha">
                <img src="../style/img/aventura.png" alt="aventura" class="img-fluid"/>
                <h2>AVENTURA 2024</h2>
                <p>Viernes 20 de octubre del 2024 / 18:00hrs</p>
            </div>
        </div>
    </main>
    
    <footer class="bg-dark text-white">
        <p>@copyright; 2024 NOT YOUNG NOW. Todos los derechos reservados.</p>
    </footer>

    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="../style/js/medio_pago_ticket.js" type="text/javascript"></script>
</body>
</html>



