/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.File;
import java.io.IOException;
import java.util.List;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;

/**
 *
 * @author KEVIN
 */
public class LecturaXML {
    
     public static void main(String[] arg){
        
    }
     
    public String[] cargarXml()
    {
        //Se crea un SAXBuilder para poder parsear el archivo
        String [] Archivo=new String [6];
        SAXBuilder builder = new SAXBuilder();
        File xmlFile = new File( "C:\\website\\dbconnectionpla.xml" );
        try
        {

            //Se crea el documento a traves del archivo
           Document document = (Document) builder.build( xmlFile );

           //Se obtiene la raiz 'tables'
           Element rootNode = document.getRootElement();

           //Se obtiene la lista de hijos de la raiz 'tables'
           List list = rootNode.getChildren( "WebAccess" );
           Archivo[0]=Integer.toString(list.size());
           //Se recorre la lista de hijos de 'tables'
           for ( int i = 0; i < list.size(); i++ )
           {
               //Se obtiene el elemento 'tabla'
               Element tabla = (Element) list.get(i);
               //Se obtiene el atributo 'nombre' que esta en el tag 'tabla'
               String nombreTabla = tabla.getAttributeValue("web");
               //System.out.println( "Tabla: " + nombreTabla );
               //Se obtiene la lista de hijos del tag 'tabla'
               List lista_campos = tabla.getChildren();
               //Se recorre la lista de campos
               for ( int j = 0; j < lista_campos.size(); j++ )
               {
                   //Se obtiene el elemento 'campo'
                   Element campo = (Element)lista_campos.get( j );
                   //Se obtienen los valores que estan entre los tags '<Parametros></server>'
                   //Se obtiene el valor que esta entre los tags '<server></server>'
                   Archivo[0] = campo.getChildTextTrim("server");
                   //Se obtiene el valor que esta entre los tags '<port></port>'
                   Archivo[1] = campo.getChildTextTrim("port");
                   //Se obtiene el valor que esta entre los tags '<database></database>'
                   Archivo[2] = campo.getChildTextTrim("database");
                   //Se obtiene el valor que esta entre los tags '<username></username>'
                   Archivo[3] = campo.getChildTextTrim("username");
                   //Se obtiene el valor que esta entre los tags '<password></password>'
                   Archivo[4] = campo.getChildTextTrim("password");
                   //Se obtiene el valor que esta entre los tags '<driver></driver>'
                   Archivo[5] = campo.getChildTextTrim("driver");
                   
               }
           }
        }catch ( IOException io ) {
            System.out.println( io.getMessage() );
        }catch ( JDOMException jdomex ) {
            System.out.println( jdomex.getMessage() );
        }
        return Archivo;
    }
}
