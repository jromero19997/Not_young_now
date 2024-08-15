<%-- 
    Document   : inventario
    Created on : 11 ago 2024, 20:17:54
    Author     : COREI5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventario de Eventos Musicales</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../style/css/inventario.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4 text-center">Inventario de Eventos Musicales</h2>
        <div class="text-center mb-4">
            <button type="button" class="btn btn-warning btn-add-event" onclick="showAddEventModal()">Añadir Evento</button>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Festival o Concierto</th>
                    <th>VIP</th>
                    <th>General</th>
                    <th>Precio Preventa</th>
                    <th>Precio Regular</th>
                    <th>Entradas Disponibles</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody id="eventsTableBody">
                <tr>
                    <td>Aventura</td>
                    <td>30</td>
                    <td>70</td>
                    <td>$100</td>
                    <td>$120</td>
                    <td>100</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-info btn-update" onclick="showUpdateOptions('Aventura')">Actualizar</button>
                        <button type="button" class="btn btn-warning btn-add" onclick="showAddOptions('Aventura')">Añadir</button>
                    </td>
                </tr>
                <tr>
                    <td>Morat</td>
                    <td>10</td>
                    <td>40</td>
                    <td>$80</td>
                    <td>$100</td>
                    <td>50</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-info btn-update" onclick="showUpdateOptions('Morat')">Actualizar</button>
                        <button type="button" class="btn btn-warning btn-add" onclick="showAddOptions('Morat')">Añadir</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- Agregar un nuevo evento -->
    <div class="modal fade" id="addEventModal" tabindex="-1" aria-labelledby="addEventModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addEventModalLabel">Añadir Nuevo Evento</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="eventName">Nombre del Evento:</label>
                        <input type="text" class="form-control" id="eventName" placeholder="Nombre del Evento">
                    </div>
                    <div class="form-group">
                        <label for="vipTickets">Entradas VIP:</label>
                        <input type="number" class="form-control" id="vipTickets" placeholder="Entradas VIP">
                    </div>
                    <div class="form-group">
                        <label for="generalTickets">Entradas Generales:</label>
                        <input type="number" class="form-control" id="generalTickets" placeholder="Entradas Generales">
                    </div>
                    <div class="form-group">
                        <label for="preSalePrice">Precio Preventa:</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">$</span>
                            </div>
                            <input type="number" class="form-control" id="preSalePrice" placeholder="Precio Preventa">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="regularPrice">Precio Regular:</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">$</span>
                            </div>
                            <input type="number" class="form-control" id="regularPrice" placeholder="Precio Regular">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="availableTickets">Entradas Disponibles:</label>
                        <input type="number" class="form-control" id="availableTickets" placeholder="Entradas Disponibles">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-primary" onclick="addEvent()">Añadir</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Opciones de actualización -->
    <div class="modal fade" id="updateOptionsModal" tabindex="-1" aria-labelledby="updateOptionsModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateOptionsModalLabel">Actualizar Evento</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="updateField">Campo a Actualizar:</label>
                        <select class="form-control" id="updateField">
                            <option value="price">Precio</option>
                            <option value="tickets">Cantidad de Tickets</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="newValue">Nuevo Valor:</label>
                        <input type="number" class="form-control" id="newValue" placeholder="Nuevo Valor">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-primary" onclick="confirmUpdate()">Actualizar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Agregar opciones -->
    <div class="modal fade" id="addOptionsModal" tabindex="-1" aria-labelledby="addOptionsModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addOptionsModalLabel">Añadir Opciones</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="addField">Campo a Añadir:</label>
                        <select class="form-control" id="addField" onchange="toggleAddFields()">
                            <option value="price">Precio</option>
                            <option value="tickets">Tipo de Ticket</option>
                        </select>
                    </div>
                    <div class="form-group" id="priceTypeGroup" style="display: none;">
                        <label for="priceType">Tipo de Precio:</label>
                        <input type="text" class="form-control" id="priceType" placeholder="Ej. VIP, General, etc.">
                    </div>
                    <div class="form-group" id="ticketTypeGroup" style="display: none;">
                        <label for="ticketType">Tipo de Ticket:</label>
                        <input type="text" class="form-control" id="ticketType" placeholder="Ej. Preferencial, Regular, etc.">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-primary" onclick="confirmAdd()">Añadir</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="../style/js/inventario.js"></script>
</body>
</html>
