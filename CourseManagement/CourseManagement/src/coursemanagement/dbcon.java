/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package coursemanagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author DELL
 */
public class dbcon {
    
    
    
    public static Connection connect() {
        
        Connection conn = null;
        String host = "jdbc:mysql://localhost:3306/tutora";
        String uName = "root";
        String uPass = "";
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            
            conn = DriverManager.getConnection(host, uName, uPass);
            
            System.out.println("Connection Success to DB");
            
        }
        
        catch (Exception err) {
            System.out.println(err);
            
        }
        return conn;
    }
        
}

