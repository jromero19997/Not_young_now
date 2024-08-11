<%-- 
    Document   : index
    Created on : 6 ago. 2024, 13:33:37
    Author     : CESAR
--%>

<%@page import="CONECTOR.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (conexion.conectar() != null) {
        %>

            <div class="contenido">
                <h1>coneccion correcta</h1>
            </div>

        <%
            } else {
        %>
            <h1>Hubo un error al conectar tu BD</h1>
        <%
            }
        %>
    </body>
</html>
