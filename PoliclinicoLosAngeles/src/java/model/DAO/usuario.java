
package model.DAO;

import model.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

public class usuario {
    
    public void SendConsulta(String nombre, String correo, String asunto, String mensaje){
        
        try{
            Connection conex=conexion.obtener();
            PreparedStatement consulta=conex.prepareStatement("call consulta_insert(?,?,?,?);");JOptionPane.showMessageDialog(null, "After!");
            consulta.setString(1,nombre);
            consulta.setString(2,correo);
            consulta.setString(3,asunto);
            consulta.setString(4,mensaje);
            consulta.executeQuery();
            conexion.cerrar();
        }catch(Exception ex){
            JOptionPane.showMessageDialog(null, "Error! "+ex);
        }
    }
    
    public void UpdatePaciente(int codigo, String nombre, String paterno, String materno, String sexo, int dni, int edad, double peso, double talla, String fecha){
        
        try{
            Connection conex=conexion.obtener();
            PreparedStatement consulta=conex.prepareStatement("call pacientegeneral_update(?,?,?,?,?,?,?,?,?,?);");JOptionPane.showMessageDialog(null, "After!");
            consulta.setInt(1,codigo);
            consulta.setString(2,nombre);
            consulta.setString(3,paterno);
            consulta.setString(4,materno);
            consulta.setString(5,sexo);
            consulta.setInt(6,dni);
            consulta.setInt(7,edad);
            consulta.setDouble(8,peso);
            consulta.setDouble(9,talla);
            consulta.setString(10,fecha);
            consulta.executeQuery();
            conexion.cerrar();
        }catch(Exception ex){
            JOptionPane.showMessageDialog(null, "Error! "+ex);
        }
    }
    
    public void DeleteMensaje(int codigomensaje){
            
        try{
            //Actividadlog  Log=new Actividadlog(usuario.class.getName(),"dato1");
            Connection conex=conexion.obtener();
            
            //Actividadlog  Log2=new Actividadlog(usuario.class.getName(),"dato2");
            PreparedStatement consulta=conex.prepareStatement("call mensajes_eliminar(?);");
            consulta.setInt(1,codigomensaje);
            
            ResultSet resultado=consulta.executeQuery();
            
            conexion.cerrar();
        }catch(Exception ex){
        JOptionPane.showMessageDialog(null, "Error! "+ex);}
        
    }
    
    public void DeleteCita(int codigocita){
            
        try{
            //Actividadlog  Log=new Actividadlog(usuario.class.getName(),"dato1");
            Connection conex=conexion.obtener();
            
            //Actividadlog  Log2=new Actividadlog(usuario.class.getName(),"dato2");
            PreparedStatement consulta=conex.prepareStatement("call eliminar_cita(?);");
            consulta.setInt(1,codigocita);
            
            ResultSet resultado=consulta.executeQuery();
            
            conexion.cerrar();
        }catch(Exception ex){
        JOptionPane.showMessageDialog(null, "Error! "+ex);}
        
    }
    
    public void SetCita(String especialidad, int codigopaciente, String hora, String doctor, String fecha, String dia){
        
        try{
            Connection conex=conexion.obtener();
            PreparedStatement consulta=conex.prepareStatement("call cita_insert(?,?,?,?,?,?);");
            consulta.setString(1,especialidad);
            consulta.setInt(2,codigopaciente);
            consulta.setString(3,hora);
            consulta.setString(4,doctor);
            consulta.setString(5,fecha);
            consulta.setString(6,dia);
            consulta.executeQuery();
            //Guardado en el historial de citas
            PreparedStatement consulta2=conex.prepareStatement("call cita_historial_insert(?,?,?);");
            consulta2.setInt(1,codigopaciente);
            consulta2.setString(2,especialidad);
            consulta2.setString(3,fecha);
            consulta2.executeQuery();
            
            conexion.cerrar();
        }catch(Exception ex){
            JOptionPane.showMessageDialog(null, "Error! "+ex);
        }
    }
    
    public String SearchDoctor(String especialidad, String dia, String hora){
        
        String doctor="";
        
        try{
            //Actividadlog  Log=new Actividadlog(usuario.class.getName(),"dato1");
            Connection conex=conexion.obtener();
            
            //Actividadlog  Log2=new Actividadlog(usuario.class.getName(),"dato2");
            PreparedStatement consulta=conex.prepareStatement("call doctor_select();");
            
            ResultSet resultado=consulta.executeQuery();
            while(resultado.next()){
//                JOptionPane.showMessageDialog(null, "Acá: "+resultado.getString(2)+" "+resultado.getString(4)+" "+resultado.getString(7));
                //JOptionPane.showMessageDialog(null, "Acá: "+especialidad+" "+resultado.getString(3).charAt(0));
                if (resultado.getString(5).equalsIgnoreCase(especialidad) && resultado.getString(4).charAt(0)=='M' && hora.charAt(6)=='A') {
                    JOptionPane.showMessageDialog(null, "Mañana!");doctor=resultado.getString(2);break;
                }
                
                if (resultado.getString(5).equalsIgnoreCase(especialidad) && resultado.getString(4).charAt(0)=='T' && hora.charAt(6)=='P') {
                    JOptionPane.showMessageDialog(null, "Tarde!");doctor=resultado.getString(2);break;
                }
                
            }
            conexion.cerrar();
        }catch(Exception ex){
            JOptionPane.showMessageDialog(null, "Error!");}
        return doctor;
    }
    
    public boolean GetCita(String especialidad, String dia, String hora){
        boolean respuesta=true;
        try{
            //Actividadlog  Log=new Actividadlog(usuario.class.getName(),"dato1");
            Connection conex=conexion.obtener();
            
            //Actividadlog  Log2=new Actividadlog(usuario.class.getName(),"dato2");
            PreparedStatement consulta=conex.prepareStatement("call cita_select();");
            
            ResultSet resultado=consulta.executeQuery();
            while(resultado.next()){
//                JOptionPane.showMessageDialog(null, "Acá: "+resultado.getString(2)+" "+resultado.getString(4)+" "+resultado.getString(7));
//                JOptionPane.showMessageDialog(null, "Acá: "+especialidad+" "+hora+" "+dia);
                if (resultado.getString(2).equalsIgnoreCase(especialidad) 
                        && resultado.getString(4).equalsIgnoreCase(hora) && 
                        resultado.getString(7).equalsIgnoreCase(dia)) {JOptionPane.showMessageDialog(null, "Appointment is already booked!");
                    respuesta=false;break;
                }
                //else{respuesta=true;JOptionPane.showMessageDialog(null, "Appointment available!");break;}
            }
            conexion.cerrar();
        }catch(Exception ex){
            JOptionPane.showMessageDialog(null, "Error!");}
        return respuesta;
    }
    
    public boolean GetDniAdminnistrador(int codigo, int dni){
        boolean respuesta=false;
        try{
            //Actividadlog  Log=new Actividadlog(usuario.class.getName(),"dato1");
            Connection conex=conexion.obtener();
            
            //Actividadlog  Log2=new Actividadlog(usuario.class.getName(),"dato2");
            PreparedStatement consulta=conex.prepareStatement("call administrador_login_validar(?);");
            consulta.setInt(1,codigo);
            
            ResultSet resultado=consulta.executeQuery();
            
            while(resultado.next()){
                if (resultado.getInt(1)==dni) {
                    JOptionPane.showMessageDialog(null, "dni Ok");
                    respuesta=true; break;
                }
            }
            conexion.cerrar();
        }catch(Exception ex){
        respuesta=false;}
        return respuesta;
    }
    
    public boolean GetDniDoctor(int codigo, int dni){
        boolean respuesta=false;
        try{
            //Actividadlog  Log=new Actividadlog(usuario.class.getName(),"dato1");
            Connection conex=conexion.obtener();
            
            //Actividadlog  Log2=new Actividadlog(usuario.class.getName(),"dato2");
            PreparedStatement consulta=conex.prepareStatement("call doctor_login_validar(?);");
            consulta.setInt(1,codigo);
            
            ResultSet resultado=consulta.executeQuery();
            
            while(resultado.next()){
                if (resultado.getInt(1)==dni) {
                    JOptionPane.showMessageDialog(null, "dni Ok");
                    respuesta=true; break;
                }
            }
            conexion.cerrar();
        }catch(Exception ex){
        respuesta=false;}
        return respuesta;
    }
    
    public boolean GetDniPaciente(int codigo, int dni){
        boolean respuesta=false;
        int _dni=0;
        try{
            //Actividadlog  Log=new Actividadlog(usuario.class.getName(),"dato1");
            Connection conex=conexion.obtener();
            
            //Actividadlog  Log2=new Actividadlog(usuario.class.getName(),"dato2");
            PreparedStatement consulta=conex.prepareStatement("call pacientegeneral_login_validar(?);");
            consulta.setInt(1,codigo);
            
            ResultSet resultado=consulta.executeQuery();
            
            while(resultado.next()){
                _dni=resultado.getInt(1);
                if (resultado.getInt(1)==dni) {
                    JOptionPane.showMessageDialog(null, "dni Ok");
                    respuesta=true; break;
                }
            }
            conexion.cerrar();
        }catch(Exception ex){
        respuesta=false;}
        return respuesta;
    }
    
    public String GetNombreDoctor(int codigo){
        
        String name="";
        try{
            //Actividadlog  Log=new Actividadlog(usuario.class.getName(),"dato1");
            Connection conex=conexion.obtener();
            
            //Actividadlog  Log2=new Actividadlog(usuario.class.getName(),"dato2");
            PreparedStatement consulta=conex.prepareStatement("call doctor_select();");
            
            ResultSet resultado=consulta.executeQuery();
            
            while(resultado.next()){
                if (resultado.getInt(1)==codigo) {
                    name=resultado.getString(2);
                }
            }
            conexion.cerrar();
        }catch(Exception ex){
            JOptionPane.showMessageDialog(null, "Error!");}
        return name;
    }
    
    public String GetNombrePaciente(int codigo, int dni){
        
        String name="";
        try{
            //Actividadlog  Log=new Actividadlog(usuario.class.getName(),"dato1");
            Connection conex=conexion.obtener();
            
            //Actividadlog  Log2=new Actividadlog(usuario.class.getName(),"dato2");
            PreparedStatement consulta=conex.prepareStatement("call pacientegeneral_select();");
            
            ResultSet resultado=consulta.executeQuery();
            
            while(resultado.next()){
                if (resultado.getInt(1)==codigo) {
                    name=resultado.getString(2)+" "+resultado.getString(3)+" "+resultado.getString(4); 
                }
            }
            conexion.cerrar();
        }catch(Exception ex){
            JOptionPane.showMessageDialog(null, "Error!");}
        return name;
    }
    
    public String GetEspecialidadDoctor(int codigo){
        
        String especialidad="";
        try{
            //Actividadlog  Log=new Actividadlog(usuario.class.getName(),"dato1");
            Connection conex=conexion.obtener();
            
            //Actividadlog  Log2=new Actividadlog(usuario.class.getName(),"dato2");
            PreparedStatement consulta=conex.prepareStatement("call doctor_select();");
            
            ResultSet resultado=consulta.executeQuery();
            
            while(resultado.next()){
                if (resultado.getInt(1)==codigo) {
                    especialidad=resultado.getString(5); 
                }
            }
            conexion.cerrar();
        }catch(Exception ex){
            JOptionPane.showMessageDialog(null, "Error!");}
        return especialidad;
    }
    
    
    public void CambiarClave(String usuario, String clave){
        try{
            Connection conex=conexion.obtener();
            PreparedStatement consulta=conex.prepareStatement("call usp_CambiarClave(?,?);");
            consulta.setString(1,usuario);
            consulta.setString(2,clave);
            
            consulta.executeQuery();
            
            conexion.cerrar();
        }catch(Exception ex){}
    }
    
}
