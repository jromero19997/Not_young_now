/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author CESAR
 */
public class login_cliente {
    private int id_cuenta, id_cliente, estado_cuenta;
    private String password,email;

    public login_cliente(){
    }

    public login_cliente(int id_cuenta, int id_cliente, int estado_cuenta, String password, String email) {
        this.id_cuenta = id_cuenta;
        this.id_cliente = id_cliente;
        this.estado_cuenta = estado_cuenta;
        this.password = password;
        this.email = email;
    }
    
    public int getId_cuenta() {
        return id_cuenta;
    }

    public void setId_cuenta(int id_cuenta) {
        this.id_cuenta = id_cuenta;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public int getEstado_cuenta() {
        return estado_cuenta;
    }

    public void setEstado_cuenta(int estado_cuenta) {
        this.estado_cuenta = estado_cuenta;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
}
