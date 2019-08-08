<%-- 
    Document   : evaluar
    Created on : 6/08/2019, 12:37:49 AM
    Author     : jonatan rodriguez
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.app.entity.Pregunta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<Pregunta> preguntasSeleccionadas = ( ArrayList<Pregunta>) request.getSession().getAttribute("lista");
            ArrayList<String> respuestas = new ArrayList<String>();
            
            for(int x = 0; x<preguntasSeleccionadas.size();x++)
            {
                String respuesta = request.getParameter(String.valueOf(preguntasSeleccionadas.get(x).getId()));
                respuestas.add(respuesta);
            }
            
            int aciertos = 0;
            int errores = 0;
            
            for(int x = 0; x<preguntasSeleccionadas.size();x++)
            {
                String respuesta = respuestas.get(x);
                String respuestaCorrecta = preguntasSeleccionadas.get(x).getRespuestaCorrecta();
                if(respuesta.equals(respuestaCorrecta))
                {
                    aciertos ++;
                }
                
                else
                {
                    errores ++;
                }
            }
        %>
    </body>
</html>
