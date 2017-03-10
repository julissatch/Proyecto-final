
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class conexion {
    
    static String Server="";
    static String port,database,username,password,driver;
    static Connection cnx=null;
    public conexion() {
    }
    public static void main(String[] arg){
        datos();
    }
    
    
    private static void datos(){
        LecturaXML objXML=new LecturaXML();
        String[] Access=objXML.cargarXml();
        Server=Access[0];
        port=Access[1];
        database=Access[2];
        username=Access[3];
        password=Access[4];
        driver=Access[5];
        
        for (int i = 0; i < Access.length; i++) {
            System.out.println(Access[i]);
        }
    }

    
    public static Connection obtener(){
        
        if (cnx==null) {
            
            try{
                //Actividadlog  Log2=new Actividadlog(conexion.class.getName(),"dato 1");
                //Class.forName("com.mysql.jdbc.Driver");
//                JOptionPane.showMessageDialog(null, "37");
                datos();
                
                Class.forName(driver);
                
                //Actividadlog  Log3=new Actividadlog(conexion.class.getName(),"dato 1"+driver);
//                cnx=DriverManager.getConnection(""
//                        + "jdbc:mysql://localhost/SistemaWeb",
//                        "root","");

                cnx=DriverManager.getConnection(Server+database,username,password);

            }catch(SQLException | ClassNotFoundException ex){
                Actividadlog  Log=new Actividadlog(conexion.class.getName(),ex.getMessage());
            }
        }
        return cnx;
    }
    
    public static void cerrar(){
        try{
            if (cnx!=null) {
                cnx.close();
                cnx=null;}
        }catch(SQLException ex){
                Actividadlog  Log=new Actividadlog(conexion.class.getName(),ex.getMessage());
        }
    }
    
}
