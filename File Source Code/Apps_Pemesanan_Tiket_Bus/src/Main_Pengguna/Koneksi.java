/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main_Pengguna;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author MiftakhulAziz
 */
public class Koneksi {
    public static Connection con;
    public  static Statement st;
    public static ResultSet rs;
    
    public Koneksi(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/terminal_bus","root", "");
            st = (Statement) con.createStatement();
            System.out.println("Koneksi Berhasil");
        }catch(ClassNotFoundException | SQLException ex){
            System.out.println("Error : "+ex);
        }
    }
    public void koneksi(){
            try{
                String server="jdbc:mysql://localhost:3306/terminal_bus";
                String user="root";
                String password="";
                Class.forName("com.mysql.jdbc.Driver");
                con=(Connection) DriverManager.getConnection(server,user,password);  
                st=(Statement) con.createStatement();
            }catch(Exception x){
                JOptionPane.showMessageDialog(null,"Koneksi GATOT, Pesan error \n"+x);
            }          
    }
    /*
   public static ResultSet login(String query){
     ResultSet rs = null;
     try {
         st = (Statement) con.createStatement();
         rs = st.executeQuery(query);
         return rs;
     } catch (Exception e){
         System.out.println("RS ada yang salah");
     }
     return null;
 }
    public static void exec (String query){
     try {
         st = (Statement)con.createStatement();
         st.executeUpdate(query);
     } catch (Exception e){
         System.out.println("exec ada yang salah");
     }
 }
    
  */  public ResultSet ambilData(String sql){
        ResultSet rs=null;
        try{
            koneksi();
            rs=st.executeQuery(sql);
        }catch(Exception x){
            JOptionPane.showMessageDialog(null,"Ambil Data Gagal, Pesan error : \n"+x);
        }
        return rs;
    }
    public void tutupKoneksi(ResultSet rs){
        try{
            if(rs!=null){
                rs.close();
            }
            st.close();
            con.close();
        }catch(Exception x){
            JOptionPane.showMessageDialog(null,"Tutup Koneksi Gagal, Pesan error \n"+x);
        }
    }
}
