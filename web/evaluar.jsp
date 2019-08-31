<%-- 
    Document   : evaluar
    Created on : 6/08/2019, 12:37:49 AM
    Author     : jonatan rodriguez
--%>

<%@page import="com.app.model.ResultadoModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.app.entity.Pregunta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<Pregunta> preguntasSeleccionadas = ( ArrayList<Pregunta>) request.getSession().getAttribute("lista");
            ArrayList<String> respuestas = new ArrayList<String>();
            
            String nombre = (String) session.getAttribute("nombre");
            String identificador = (String) session.getAttribute("id");
            int id = Integer.parseInt(identificador);
            ResultadoModel resultadoModel = new ResultadoModel();
            
            
            int aciertos = 0;
            int errores = 0;
            
            for(int x = 0; x<preguntasSeleccionadas.size();x++)
            {
                String respuesta = request.getParameter(String.valueOf(preguntasSeleccionadas.get(x).getId()));
                respuestas.add(respuesta);
                
                String respuestaEscogida = respuestas.get(x);
                String respuestaCorrecta = preguntasSeleccionadas.get(x).getRespuestaCorrecta();
                
                if(respuestaEscogida.equals(respuestaCorrecta))
                {
                    aciertos ++;
                }
                
                else
                {
                    errores ++;
                }
            }
            resultadoModel.insertResultado(id, aciertos, errores);
        %>
        
        <div id="resultados">
            <div id="texto">
                <center>
                    <h3> <%= nombre %></h3>
                    <h4>Aciertos: <%= aciertos %>
                    Errores: <%= errores %> </h4>   
                    <a href="index.html" class="btn btn-primary">Finalizar</a>
                </center>
            </div>
        </div>
    </body>
</html>
