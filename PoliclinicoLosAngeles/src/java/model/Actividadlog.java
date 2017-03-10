/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Saulo
 */
public class Actividadlog {
    
    private String Ventana;
    private String Mensaje;

    public Actividadlog(String ventana, String Mensaje) {
        
        String Fecha;
        Calendar c1 = Calendar.getInstance();
        Fecha= Integer.toString(c1.get(Calendar.YEAR))+Integer.toString(c1.get(Calendar.MONTH))+
                        Integer.toString(c1.get(Calendar.DATE));
        
        String ruta = "C:\\website\\LogPLA"+Fecha+".txt";
        String nuevalinea = System.getProperty("line.separator");
        
        File archivo = new File(ruta);
        //File archivo2 = new File(ruta2);
        BufferedWriter bw;
        BufferedReader br = null;
        //FileReader fr=null;
        try {
            if(!archivo.exists()) {
                bw = new BufferedWriter(new FileWriter(archivo));
                bw.write("Error: " +  ventana+" -->> " + Mensaje );
            } else {
                br = new BufferedReader(new FileReader(ruta));
		String line = "",texto="";
		
                while((line = br.readLine())!=null){
                    texto=texto+line+nuevalinea;
        	}
                bw = new BufferedWriter(new FileWriter(archivo));
                bw.write(texto+
                        Fecha+" "+
                        Integer.toString(c1.get(Calendar.HOUR))+":"+
                        Integer.toString(c1.get(Calendar.MINUTE))+"."+
                        Integer.toString(c1.get(Calendar.MILLISECOND))+
                        " ==> : Error: " +  ventana+" -->> " + Mensaje );
            }
            
            bw.close();
        } catch (IOException ex) {
                Logger.getLogger(Actividadlog.class.getName()).log(Level.SEVERE, null, ex);
                
        }
    }

   
    public String getVentana() {
        return Ventana;
    }

    public void setVentana(String ventana) {
        this.Ventana = ventana;
    }

    public String getMensaje() {
        return Mensaje;
    }

    public void setMensaje(String mensaje) {
        this.Mensaje = mensaje;
    }
    
    
    
}
