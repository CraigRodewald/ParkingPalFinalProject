package com.finalproject.parkpal.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


   public class ConnectionManager {

      static Connection con;
      static String url;
            
      public static Connection getConnection()
      {
        
         try
         {
            String url = "jdbc:mysql://localhost:3306/parkingpal"; 
            // assuming "DataSource" is your DataSource name

            Class.forName("com.mysql.jdbc.Driver");
            
            try
            {            	
               con = DriverManager.getConnection(url,"root","sesame"); 
                								
                 
            }
            
            catch (SQLException ex)
            {
               ex.printStackTrace();
            }
         }

         catch(ClassNotFoundException e)
         {
            System.out.println(e);
         }

      return con;
}
   }
