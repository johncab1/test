/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.com.db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author jonatan rodriguez
 */
public class DB {
    
    static String user = "root";
    static String password = "vertrigo";
    static String url = "jdbc:mysql://localhost/prueba";
    public static Connection connection = null; 
    
    public Boolean connect()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection(url, user, password);
            
            if(connection != null)
            {
                return true;
            }
            
            else
            {
                return false;
            }
        }

        catch(Exception e)
        {
            e.printStackTrace();
            return false;
        }
    }
    
    
    public void close()
    {
        try
        {
            if(connection != null)
            {
                connection.close();
            }
        }
        
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
    
    

}
