/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package koneksi;

import java.sql.*;

/**
 *
 * @author Kelompok 7
 * S1SI
 * 07A
 */
public class koneksi {
    private Connection koneksi;
    public Connection connect(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("berhasil konek");
        }
        catch(ClassNotFoundException ex){
            System.out.println("Gagal konek "+ex);
        }
        String url = "jdbc:mysql://localhost/classkeeper";
        try{
            koneksi = DriverManager.getConnection(url,"root","");
            System.out.println("Berhasil konek database");
        }
        catch(SQLException ex){
            System.out.println("Gagal koneksi database"+ex);
        }
        return koneksi;
    }
}
