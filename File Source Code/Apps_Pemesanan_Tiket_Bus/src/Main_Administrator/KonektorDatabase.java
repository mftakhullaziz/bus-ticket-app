/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main_Administrator;

/**
 *
 * @author MiftakhulAziz
 */

import java.sql.Connection;
import java.sql.DriverManager;

public class KonektorDatabase {

    static Connection conn;
    
    
    static Connection Conn(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/terminal_bus","root","");
            System.out.println("berhasil");
            
        }catch(Exception a){
            System.out.println(a.getMessage());
        }
        return conn;
    }
    
    public static void main(String args[]){
        System.out.println(KonektorDatabase.Conn());
    }
    
}


