/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model_Pengguna;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import Main_Pengguna.Koneksi;
/**
 *
 * @author MiftakhulAziz
 */
public class pengguna {
     Koneksi db=null;
     String hakakses,email,nama,username,password,kode_user,alamat,notelp,jenkel;
    
    public pengguna(){
        db=new Koneksi();
    }
    public void setEmail(String email){
        this.email = email;
    }
    public String getEmail(){
        return email;
    }
     public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }
     public String getUsername() {
        return username;
    }

    public void setUsername(String user) {
        this.username = user;
    }
    public String getKode_user() {
        return kode_user;
    }

    public void setKode_user(String kd_user) {
        this.kode_user = kd_user;
    }

    public void setAlamat(String alamat){
        this.alamat = alamat;
    }
    public String getAlamat(){
        return alamat;
    }
    public void setNopon(String notelp){
        this.notelp = notelp;
    }
    public String getNopon(){
        return notelp;
    }
   
    public void setJenkel(String jenkel){
        this.jenkel = jenkel;
    }
    public String jenkel(){
        return jenkel;
    }
     public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;   
    }
    public String getHakakses() {
        return hakakses;
    }

    public void setHakakses(String hakakses) {
        this.hakakses = hakakses;
    }
    
    public List cariLogin(String user,String pass){
        List<pengguna> data=new ArrayList<>();
        ResultSet rs=null;
        
        try{
            
            String sql="SELECT * FROM penumpang WHERE USERNAME='"+user+"' AND PASSWORD='"+pass+"'";
            rs=db.ambilData(sql);
                        
            while(rs.next()){                   
                pengguna pm=new pengguna();   
                pm.setKode_user(rs.getString("kode_user"));
                pm.setNama(rs.getString("nama"));
                pm.setUsername(rs.getString("username"));
                pm.setPassword(rs.getString("password"));  
                pm.setEmail(rs.getString("email"));
                pm.setNopon(rs.getString("no_telp"));
                pm.setAlamat(rs.getString("alamat"));
                pm.setJenkel(rs.getString("jenis_kelamin"));
                pm.setHakakses(rs.getString("HakAkses"));   
                data.add(pm);
            }               
            //db.tutupKoneksi(rs);
        }catch(Exception x){
            JOptionPane.showMessageDialog(null, "Login gagal, Pesan Error : \n"+x);
        }        
        return data;
    }     
    
}
