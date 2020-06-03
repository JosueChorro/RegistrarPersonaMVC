<%-- 
    Document   : Index
    Created on : 26-may-2020, 19:46:23
    Author     : JCH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de personas</h1>
        
        <form action="recibir.do" method="POST">
            DUI:    <input type="text" name="txtDui" value="" /><br>
            Apellidos:    <input type="text" name="txtApellidos" value="" /><br>
            Nombre:    <input type="text" name="txtNombre" value="" /><br>
            <input type="submit" value="Registrar Nueva Persona" />
        </form>
        <br><br>
        <a href="/RegistrarPersonaMVC/mostrartodo.jsp">Regrear</a>
        
        
    </body>
</html>
