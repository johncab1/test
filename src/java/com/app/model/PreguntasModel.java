/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.model;

import app.com.db.DB;
import com.app.entity.Pregunta;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jonatan rodriguez
 */
public class PreguntasModel {
    
    DB db = new DB();
    
    

    
    public ArrayList<Pregunta> all()
    {
        ArrayList<Pregunta> preguntas = new ArrayList<Pregunta>();
        try
        {
            if(db.connect())
            {
                Statement st = db.connection.createStatement();
                ResultSet result = st.executeQuery("select * from preguntas");
                
                while(result.next())
                {
                    Pregunta pregunta = new Pregunta();
                    pregunta.setId(result.getInt("id"));
                    pregunta.setPregunta(result.getString("pregunta"));
                    pregunta.setRespuesta1(result.getString("r1"));
                    pregunta.setRespuesta2(result.getString("r2"));
                    pregunta.setRespuesta3(result.getString("r3"));
                    pregunta.setRespuestaCorrecta(result.getNString("rc"));
                    preguntas.add(pregunta);                    
                }
                               
                db.close();
            }
        }
        
        catch(SQLException e)
        {
            return new ArrayList<Pregunta>();
        }
        
        return preguntas;
    }
}
