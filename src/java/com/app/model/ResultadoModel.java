/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.model;

import app.com.db.DB;
import com.app.entity.Resultado;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author jonatan rodriguez
 */
public class ResultadoModel {
    
    DB db = new DB();
    
    
        public int insertName(String nombre) throws SQLException
    {
        int id = 0;
        try
        {
            if(db.connect())
            {
                Statement st = db.connection.createStatement();
                Statement stq = db.connection.createStatement();
                st.executeUpdate("insert into resultados (id, nombre) values(" + 0 + ", " + "'" + nombre + "')");
                
                ResultSet result = stq.executeQuery("select id from preguntas order by id desc limit 1");
                
                if(result.next())
                {
                    id = result.getInt("id");
                }
            }
        }
        catch(SQLException e)
        {
            throw new SQLException(e);
        }
        
        return id;
    }
    
    public Resultado getResultado(int id) throws SQLException
    {
        Resultado resultado = new Resultado();
        try
        {
            if(db.connect())
            {
                Statement st = db.connection.createStatement();
                ResultSet result = st.executeQuery("select * from resultados where id = " + id);
                
                if(result.next())
                {
                    resultado.setId(result.getInt("id"));
                    resultado.setNombre(result.getString("nombre"));
                    resultado.setAciertos(result.getInt("aciertos"));
                    resultado.setErrores(result.getInt("errores"));
                    db.close();
                }
            }
            
        }
        catch(SQLException e)
        {
            throw new SQLException(e);
        }
        
        return resultado;
    }
}
