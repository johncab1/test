<%-- 
    Document   : preguntas.jsp
    Created on : 3/08/2019, 08:59:08 AM
    Author     : jonatan rodriguez
--%>

<%@page import="com.app.model.PreguntasModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.app.entity.Pregunta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            String nombre = (String) session.getAttribute("nombre");
            String identificador = (String) session.getAttribute("id");
            int id = Integer.parseInt(identificador);
            
            PreguntasModel preguntasModel = new PreguntasModel();
            ArrayList<Pregunta> preguntas = preguntasModel.all();
            
            ArrayList<Integer> idPreguntas = new ArrayList<Integer>();
            
            int contador = 0;
            
            while(contador < 20)
            {
                Boolean repetido = false;
                int numero = (int)(Math.random()*30+1);
                for(int idPregunta : idPreguntas)
                {
                    if(idPregunta == numero - 1)
                    {
                        repetido = true;
                    }
                }
                
                if(repetido == false)
                {                    
                    idPreguntas.add(numero - 1);
                    contador ++;
                }
            }
            
            
            ArrayList<Pregunta> preguntasSeleccionadas = new ArrayList<Pregunta>();
            
            for(int x = 0; x< idPreguntas.size(); x++)
            {
                preguntasSeleccionadas.add(preguntas.get(idPreguntas.get(x)));
            }           
        %>
    <center>
        <h3>Test de Historia Universal</h3>
        <h4>Presentado Por: <%= nombre %></h4>
    </center>
        <form action="evaluar.jsp" method="post">
            <div class="container">
            <%
                for(int x  = 0; x<preguntasSeleccionadas.size();x++)
                {
                    %>
                    <p class="question">Pregunta: <%= x + 1 %></p>
                    <p><%=preguntasSeleccionadas.get(x).getPregunta()%></p>
                    
                    <%
                        int numero = (int)(Math.random()*4+1);
                        
                        if(numero == 1)
                        {
                            %>
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuestaCorrecta() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuestaCorrecta() %>        
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuesta1() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuesta1() %>                          
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuesta3() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuesta3() %>
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuesta2() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuesta2() %>                            
                            <%
                        }
                        
                        
                        if(numero == 2)
                        {
                            %>
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuesta3() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuesta3() %> 
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuestaCorrecta() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuestaCorrecta() %>  
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuesta1() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuesta1() %>             
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuesta2() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuesta2() %>
                            
                            <%
                        }
                        
                        if(numero == 3)
                        {
                            %>
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuesta2() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuesta2() %>
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuesta1() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuesta1() %>       
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuestaCorrecta() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuestaCorrecta() %>
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuesta3() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuesta3() %>                            
                            <%
                        }
                        
                        
                        if(numero == 4)
                        {
                            %>
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuesta1() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuesta1() %>
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuesta3() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuesta3() %>              
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuesta2() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuesta2() %>       
                            <input type="radio" name="<%= preguntasSeleccionadas.get(x).getId() %>" value="<%= preguntasSeleccionadas.get(x).getRespuestaCorrecta() %>">
                            <%= preguntasSeleccionadas.get(x).getRespuestaCorrecta() %>                            
                            <%
                        }
                        
                        session.setAttribute("lista", preguntasSeleccionadas);
                        
                    %>
                    
                    
                    
                    <%
                }
            %>
            <br><br>
            <input type="submit" class="btn btn-primary" value="Enviar">
            </div>
            
            
        </form>
    </body>
</html>
