<%-- 
    Document   : nuevo
    Created on : 30-mar-2021, 20:04:23
    Author     : Wilber-Zruc
--%>


<%@page import="com.emergentes.modelo.LibroDAO"%>
<%@page import="com.emergentes.modelo.Libro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NUEVO</title>
    </head>
    <body>
        <%
            Libro item = (Libro) request.getAttribute("item");
        %>
        <h1>Editar Libros</h1>
        <form action="Principal" method="post">
            ID: <input type="text" name="id" value="<%= item.getId() %>" size="2" pattern="[1-9]{1}[0-9]*"/>
            <input type="hidden" name="tipo" value="-1" required/>
            <br>
            Titulo: <input type="text" name="titulo" value="<%= item.getTitulo() %>" required/>
            <br>
            Autor: <input type="text" name="autor" value="<%= item.getAutor() %>" />
            <br>
            Estado: <input type="radio" name="estado" value="1" <%= (item.getEstado() == 1) ? "checked":""%> required/>Disponible
            <input type="radio" name="estado" value="2" <%= (item.getEstado() == 2) ? "checked":""%> required/>Prestado
            <br>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
