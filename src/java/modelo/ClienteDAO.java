/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Administrador
 */
public class ClienteDAO extends Conexion{
    
    public boolean autenticacion(String usuario, String password){
        PreparedStatement ps=null;
        ResultSet rs = null;
        
        try {
            String s="SELECT * from CLIENTE WHERE CORREO_CLI=? and  (aes_decrypt(CLAVE_CLI,'aes')) =?";
            ps  = getConnection().prepareStatement(s);
            ps.setString(1, usuario);
            ps.setString(2, password);
            rs=ps.executeQuery(); //Guardo mi consulta en el resultset            
            if(rs.absolute(1)){ //Si existe un registro retorname true;
                return true;
            }            
        } catch (Exception e) {
            System.err.println("Error"+e);
        } finally{
            try {
                if (getConnection()!=null) getConnection();
                if(ps!=null)ps.close();
                if(rs!=null)rs.close();
            } catch (Exception e) {
                System.err.println("Error"+e);
            }
        }        
        return false;
    }
    
    
    public Cliente BuscarCliente(String clave) {
        Cliente inst = new Cliente();
        String sql = "select * from cliente where CLAVE_CLI=?";
        try {
          
            PreparedStatement ps=null;
        ResultSet rs = null;
          ps  = getConnection().prepareStatement(sql);
            ps.setString(1, clave);
           rs = ps.executeQuery();
            while (rs.next()) {
                 inst = new Cliente(
                        rs.getInt("ID_CLI"),
                        rs.getString("DNI_CLI"),
                        rs.getString("NOM_CLI"),
                        rs.getString("FONO_CLI"),
                        rs.getString("CORREO_CLI"),
                        rs.getString("CLAVE_CLI"),
                        rs.getInt("ID_DIS"),
                        rs.getString("DIREC_CLI")
                );

            }
            rs.close();
            ps.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return inst;
    }
    
}
