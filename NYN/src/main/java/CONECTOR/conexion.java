/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CONECTOR;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

/**
 *
 * @author CESAR
 */
public class conexion {
    public static Connection conectar(){
        Connection conecta = null;
        try {
            // EJECJUTA CORRECTO
            Class.forName("com.mysql.cj.jdbc.Driver");
            String servidorbd = "jdbc:mysql://localhost/not_young_now";
            String user = "root";
            String pass = "1234";
            conecta = (Connection) DriverManager.getConnection
        (servidorbd,user,pass);
            
            
        } catch (Exception e) {
            System.out.println("error: "+e);
        } 
        return conecta;
    }

    public ResultSet ejecutarConsulta(String sql) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
