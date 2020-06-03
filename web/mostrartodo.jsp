<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Persona"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : mostrartodo
    Created on : 28-may-2020, 13:56:24
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
        <h1>Personas</h1>
        <br><br>
        <a href="RegistrarPersonaMVC/Index.jsp">Agregar nuevo</a>
        <table border="1">
            <thead>
                <tr>
                    <th>dui_persona</th>
                    <th>apellidos_persona</th>
                    <th>nombre_persona</th>
                </tr>
            </thead>
            <%
                Persona dao = new Persona();
                List<Persona>list = dao.consultarRegistros();
                Iterator<Persona>iter = list.iterator();
                Persona per = null;
                while(iter.hasNext()){
                    per = iter.next();
                
            %>
            <tbody>
                <tr>
                    <td><%= per.getDui() %></td>
                    <td><%= per.getApellidos() %></td>
                    <td><%= per.getNombres() %></td>
                    <td>
                        <a href="Controlador?accion=editar&id=<%= per.getDui() %>">Editar</a>
                        <a>Remover</a>
                    </td>
                </tr>
                
                <% } %>
            </tbody>
        </table>
    </body>
</html>
