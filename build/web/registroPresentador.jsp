<%-- 
    Document   : regitroPresentador.jsp
    Created on : 3/08/2019, 08:04:55 AM
    Author     : jonatan rodriguez
--%>

<%@page import="com.app.model.ResultadoModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ResultadoModel resultado = new ResultadoModel();
            String nombre = request.getParameter("nombre");
            session.setAttribute("nombre", nombre);
            int id = resultado.insertName(nombre);
            session.setAttribute("id", String.valueOf(id));
            response.sendRedirect("preguntas.jsp");
        %>
    </body>
</html>
