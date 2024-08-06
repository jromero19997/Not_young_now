<%-- 
    Document   : menu_principal-admin_dos
    Created on : 5 ago. 2024, 15:42:28
    Author     : CESAR
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-bar-rating/1.2.2/themes/fontawesome-stars.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-bar-rating/1.2.2/jquery.barrating.min.js"></script>
        <style>
            header, footer{
                background-color: #7573F5;
            }

            .collapse{
                display: flex;
                justify-content: center;
                align-content: center;
            }

            .nav-item{
                background-color: #fff;
                border: 3px solid black;
                margin: auto 5px;
                border-radius: 10px;
            }

            main{
                padding: 20px 50px;
                margin-bottom: 301px;
            }

            .nav-link {
                color: inherit; /* Inherit color from parent elements */
                text-decoration: none; /* Remove underline */
            }

            .nav-link:hover {
                color: #7573F5; /* Color when hovered */
                text-decoration: none; /* Underline on hover */
            }

            .nombre{
                font-family: monospace;
            }

            .informacion-reporte{
                margin: 10px 0;
            }

            .informacion-reporte h2{
                font-family: cursive;
            }

            .informacion-reporte p{
                font-family: serif;
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <img src="/style/img/logo.png" alt="Logo" width="60" height="80" class="d-inline-block align-text-top">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Eventos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Transmision en vivo</a>
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
        
        <main>
            <h1 class="nombre">CESAR DANIEL CARHUAS ALDANA</h1>
            <div class="informacion-reporte">
                <h2>Reportes Registrados</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Codigo</th>
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
                            <td>tengo problemas con la compra de tickets.</td>
                            <td>EN PROCESO</td>
                            <td><button class="btn btn-primary" onclick="respuesta_reporte()">Respuesta</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <div class="informacion-reporte">
                <h2>Respuestas Registradas</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Codigo Respuesta</th>
                            <th>Codigo Reporte</th>
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
                            <td>deberias realizar cerrar sesion y volver a ingresar.</td>
                            <td><button class="btn btn-primary" onclick="respuesta_reporte()">Respuesta</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
        </main>
        
        <footer>
            <div class="navbar navbar-expand-lg">
                <div class="container-fluid">
                    <img src="/style/img/logo.png" alt="Logo" width="60" height="80" class="d-inline-block align-text-top">
                    <h1>---> NOT YOUNG NOW <---</h1>
                    <img src="/style/img/logo.png" alt="Logo" width="60" height="80" class="d-inline-block align-text-top">
                </div>
            </div>
        </footer>
        
        <script>
            function respuesta_reporte() {
                Swal.fire({
                    title: 'Respuesta al Reporte',
                    html: `
                        <input type="date" id="fecha" class="swal2-input" placeholder="Fecha (dd/mm/yyyy)">
                        <input type="text" id="respuesta" class="swal2-input" placeholder="Respuesta">
                    `,
                    showCancelButton: true,
                    confirmButtonText: 'Enviar',
                    cancelButtonText: 'Cancelar',
                    preConfirm: () => {
                        const fecha = document.getElementById('fecha').value;
                        const respuesta = document.getElementById('respuesta').value;
                        if (!fecha) {
                            Swal.showValidationMessage('Por favor, ingrese la fecha');
                        }
                        if (!respuesta) {
                            Swal.showValidationMessage('Por favor, ingrese la respuesta');
                        }
                        return { fecha: fecha, respuesta: respuesta };
                    }
                }).then((result) => {
                    if (result.isConfirmed) {
                        const fecha = result.value.fecha;
                        const respuesta = result.value.respuesta;
                        // Aquí puedes enviar la respuesta y la fecha al servidor (por AJAX u otra forma)
                        Swal.fire('Respuesta Enviada', '', 'success');
                    }
                });
            }
        </script>
    </body>
</html>



