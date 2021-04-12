package conn;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author moumen
 */
public class MyConnection {
        public static Connection cnx;
    public static Connection getMyConnection(){
        try{
        if (cnx==null){
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(MyConnection.class.getName()).log(Level.SEVERE, null, ex);
            }
            cnx=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","PFE","Nxiv8338");
            
            
        }
        System.out.println("cnx created");
    }catch (SQLException ex){
                System.out.println("cnx is already exist");
                
        }
        return cnx;
    }
    
}
