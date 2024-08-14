<%-- 
    Document   : menu_principal-admin
    Created on : 23 jul. 2024, 21:25:37
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
        <link href="../../style/css/menu_principal-admin/menu_principal-admin.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <img src="../../style/img/logo.png" alt="Logo" width="60" height="80" class="d-inline-block align-text-top">
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
                    <img src="../../style/img/logo.png" alt="Logo" width="60" height="80" class="d-inline-block align-text-top">
                </div>
            </nav>
        </header>

        <main class="container my-5">
            <h2>Buscar Cliente:</h2>
            <form class="row g-3">
                <div class="col-auto d-flex">
                    <input type="text" class="form-control" id="ingresa-correo" placeholder="Ingresa correo electronico">
                    <button type="submit" class="btn btn-primary mb-3 ml-2" href="menu_principal-admin_dos.jsp">Buscar</button>
                </div>
            </form>
        </main>

        <footer class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid justify-content-between text-center">
                <img src="../../style/img/logo.png" alt="Logo" width="60" height="80" class="d-inline-block align-text-top">
                <h1>---> Not Young Now <---</h1>
                <img src="../../style/img/logo.png" alt="Logo" width="60" height="80" class="d-inline-block align-text-top">
            </div>
        </footer>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>



