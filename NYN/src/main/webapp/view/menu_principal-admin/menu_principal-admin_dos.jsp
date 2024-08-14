<%-- 
    Document   : menu_principal-admin_dos
    Created on : 5 ago. 2024, 15:42:28
    Author     : CESAR
--%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Not Young Now</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-bar-rating/1.2.2/themes/fontawesome-stars.css">
        <link href="../../style/css/menu_principal-admin/menu_principal-admin_dos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <img src="/style/img/logo.png" alt="Logo" width="60" height="80" class="d-inline-block align-text-top">
                    <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Eventos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Transmisión en vivo</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Inventario</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Salir</a>
                            </li>
                        </ul>
                    </div>
                    <img src="/style/img/logo.png" alt="Logo" width="60" height="80" class="d-inline-block align-text-top">
                </div>
            </nav>
        </header>
        
        <main class="container my-5">
            <h1 class="nombre">CESAR DANIEL CARHUAS ALDANA</h1>
            
            <div class="informacion-reporte mt-4">
                <h2>Reportes Registrados</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Fecha</th>
                            <th>Reporte</th>
                            <th>Estado</th>
                            <th>Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>10</td>
                            <td>05/08/2024</td>
                            <td>Tengo problemas con la compra de tickets.</td>
                            <td>EN PROCESO</td>
                            <td><button class="btn btn-primary" onclick="respuesta_reporte()">Respuesta</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <div class="informacion-reporte mt-4">
                <h2>Respuestas Registradas</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Código Respuesta</th>
                            <th>Código Reporte</th>
                            <th>Fecha</th>
                            <th>Respuesta</th>
                            <th>Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>25</td>
                            <td>10</td>
                            <td>05/08/2024</td>
                            <td>Deberías cerrar sesión y volver a ingresar.</td>
                            <td><button class="btn btn-primary" onclick="respuesta_reporte()">Respuesta</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </main>
        
        <footer class="navbar navbar-expand-lg">
            <div class="container-fluid text-center">
                <img src="/style/img/logo.png" alt="Logo" width="60" height="80" class="d-inline-block align-text-top">
                <h1>NOT YOUNG NOW</h1>
                <img src="/style/img/logo.png" alt="Logo" width="60" height="80" class="d-inline-block align-text-top">
            </div>
        </footer>

        <script src="../../style/js/menu_principal-admin_dos.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-bar-rating/1.2.2/jquery.barrating.min.js"></script>
    </body>
</html>




