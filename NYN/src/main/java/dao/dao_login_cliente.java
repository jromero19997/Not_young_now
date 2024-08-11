/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import CONECTOR.conexion;
import INTERFACE.inter_login_cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import modelo.login_cliente;


/**
 *
 * @author CESAR
 */
public class dao_login_cliente implements inter_login_cliente{

    Connection con;
    conexion cn = new conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r=0;
    
    @Override
    public int validar(login_cliente lc) {
        String sql = "select * from cuenta where email=? and contrasena =?";
        try {
            con =conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, lc.getEmail());            
            ps.setString(2, lc.getPassword());
            rs = ps.executeQuery();
            
            while(rs.next()){
                r = r+1;
                lc.setEmail(rs.getString("email"));
                lc.setPassword(rs.getString("contrasena"));
            }
            
            if(r==1){
                return 1;
            }else{
                return 0;
            }
            
        } catch (Exception e) {
            return 0;
        }
    }
}
