<%-- 
    Document   : menu_principal-admin
    Created on : 23 jul. 2024, 21:25:37
    Author     : CESAR
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Not Young Now</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
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
            
            h1{
                align-items: center;
                text-align: center;
            }
            
            main{
                padding: 20px 50px;
                margin-bottom: 301px;
            }
            
            .col-auto{
                display: flex;
            }
            
            input{
                margin-right: 10px;
            }

            .nav-link {
                color: inherit; /* Inherit color from parent elements */
                text-decoration: none; /* Remove underline */
            }

            .nav-link:hover {
                color: #7573F5; /* Color when hovered */
                text-decoration: none; /* Underline on hover */
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
            <h2>BUSCAR CLIENTE:</h2>
            <form class="row g-3">
                <div class="col-auto">
                  <input type="text" class="form-control" id="inputPassword2">
                  <button type="submit" class="btn btn-primary mb-3" href="/view/menu_principal-admin_dos.jsp">Buscar</button>
                </div>
            </form>
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
    </body>
</html>


