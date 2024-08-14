<%-- 
    Document   : finalizar_compra
    Created on : 13 ago. 2024, 16:39:48
    Author     : CESAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="../../style/css/proceso comprar ticket/finalizar_compra.css" rel="stylesheet" type="text/css"/>
    <title>finalizar compra</title>
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
        <div>
            <div class="contenido">
                <img src="../../style/img/finalizar compra/aventura.png" alt="aventura" class="img-fluid"/>
                <h2>AVENTURA 2024</h2>
                <p>Viernes 20 de octubre del 2024 / 18:00hrs</p>
                
                <div class="btn-general">
                    <button class="btn btn-danger" id="btnComentar">COMENTAME TU EXPERENCIA!</button>
                    <button class="btn btn-success">INICIO</button>
                </div>
            </div>
        </div>
    </main>
    
    <footer class="bg-dark text-white">
        <p>&copy; 2024 NOT YOUNG NOW. Todos los derechos reservados.</p>
    </footer>
    
    <!-- Modal -->
    <div class="modal fade" id="comentarioModal" tabindex="-1" aria-labelledby="comentarioModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="comentarioModalLabel">Tu Experiencia</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="comentarioForm" class="text-center">
                        <div class="mb-3">
                            <label for="valoracion" class="form-label">Valoración (1 a 5):</label>
                            <input type="number" class="form-control" id="valoracion" min="1" max="5" required>
                        </div>
                        <div class="mb-3">
                            <label for="comentario" class="form-label">Comentario:</label>
                            <textarea class="form-control" id="comentario" rows="3" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="../../style/js/finalizar_compra.js" type="text/javascript"></script>
</body>
</html>


