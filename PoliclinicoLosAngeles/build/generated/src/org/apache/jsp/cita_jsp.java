package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.conexion;
import java.util.ArrayList;
import java.sql.*;
import javax.swing.JOptionPane;
import java.util.Calendar;

public final class cita_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"es\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <title>Medilab Free Bootstrap HTML5 Template</title>\n");
      out.write("    <meta name=\"description\" content=\"Free Bootstrap Theme by BootstrapMade.com\">\n");
      out.write("    <meta name=\"keywords\" content=\"free website templates, free bootstrap themes, free template, free bootstrap, free website template\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/font-awesome.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/cita.css\">\n");
      out.write("    <!--<script src=\"//code.jquery.com/jquery-1.10.2.min.js\"></script> -->\n");
      out.write("    <script src=\"js/jquery-3.1.1.js\"></script>\n");
      out.write("    <!--<script src=\"//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js\"></script> -->\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <!-- =======================================================\n");
      out.write("        Theme Name: Medilab\n");
      out.write("        Theme URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/\n");
      out.write("        Author: BootstrapMade.com\n");
      out.write("        Author URL: https://bootstrapmade.com\n");
      out.write("    ======================================================= -->\n");
      out.write("    \n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        \n");
      out.write("        $('#demoSelect').change(function(){\n");
      out.write("    $('#demoInput').val($(this).val());\n");
      out.write("});\n");
      out.write("        \n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("  </head>\n");
      out.write("  <body id=\"myPage\" data-spy=\"scroll\" data-target=\".navbar\" data-offset=\"60\">\n");
      out.write("      \n");
      out.write("      ");
 
        //String codigo = (String)session.getAttribute("codigo");
        int codigo = (int)session.getAttribute("codigo");
        String nombre = (String)session.getAttribute("nombre");
        
        
        
        
      out.write(" \n");
      out.write("      \n");
      out.write("  \t<!--banner-->\n");
      out.write("\t<section id=\"banner\" class=\"banner\">\n");
      out.write("\t\t<div class=\"bg-color\">\n");
      out.write("\t\t\t<nav class=\"navbar navbar-default navbar-fixed-top\">\n");
      out.write("\t\t\t  <div class=\"container\">\n");
      out.write("\t\t\t  \t<div class=\"col-md-12\">\n");
      out.write("\t\t\t\t    <div class=\"navbar-header\">\n");
      out.write("\t\t\t\t      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("\t\t\t\t        <span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t        <span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t        <span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t      </button>\n");
      out.write("\t\t\t\t      <a class=\"navbar-brand\" href=\"#\"><img src=\"img/logo.png\" class=\"img-responsive\" style=\"width: 140px; margin-top: -16px;\"></a>\n");
      out.write("\t\t\t\t    </div>\n");
      out.write("\t\t\t\t    <div class=\"collapse navbar-collapse navbar-right\" id=\"myNavbar\">\n");
      out.write("\t\t\t\t      <ul class=\"nav navbar-nav\">\n");
      out.write("\t\t\t\t        <li class=\"active\"><a href=\"#banner\">Reservar Cita</a></li>\n");
      out.write("\t\t\t\t        <!--<li class=\"\"><a href=\"#testimonial\">Registro</a></li>-->\n");
      out.write("\n");
      out.write("                             \n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                \n");
      out.write("                        ");

                            
                                            
                                            out.println("<li><a href=\"#\">Paciente:  "+nombre+"</a></li>");
                        
                        
                        
                        
      out.write("\n");
      out.write("                        \n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\t      </ul>\n");
      out.write("\t\t\t\t    </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t  </div>\n");
      out.write("\t\t\t</nav>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                    ");
//JOptionPane.showMessageDialog(null, "");
      out.write("    \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("            <div class=\"book form-group row col-md-2\">\n");
      out.write("                \n");
      out.write("                <form class=\"form\" role=\"form\" method=\"post\" action=\"validarcita\" accept-charset=\"UTF-8\" id=\"\">\n");
      out.write("            \n");
      out.write("                <h3 class=\"boxes\">Especialidad</h3>\n");
      out.write("            <div class=\"col-10\">\n");
      out.write("                <select class=\"form-control\" id=\"sel1\" name=\"especialidad\">\n");
      out.write("                        ");

                          try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call especialidad_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        
                        while(resultado.next()){
                            out.println("<option value=\"  "+resultado.getString(2)+"\">"+resultado.getString(2)+"</option>");
                        }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}

                        
      out.write("\n");
      out.write("                 </select>\n");
      out.write("            </div>    \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            ");

                
            
      out.write("\n");
      out.write("            <h3 class=\"boxes\">Día</h3>\n");
      out.write("            <div class=\"col-10\">\n");
      out.write("                <select class=\"form-control\" id=\"sel1\" name=\"dia\">\n");
      out.write("                        ");

                          try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call dia_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        
                        Calendar now = Calendar.getInstance();
                        int dia=now.get(Calendar.DAY_OF_WEEK)-1;
                            //JOptionPane.showMessageDialog(null, "Día: "+dia);
                        while(resultado.next()){
                            
                            //if (dia==7) {
                                    out.println("<option value=\""+resultado.getString(2)+"\">"+resultado.getString(2)+"</option>");
                              //  }
                            //else{
                            //if (resultado.getInt(1)>dia) {
                                    //out.println("<option value=\"  "+resultado.getString(2)+"\">"+resultado.getString(2)+"</option>");
                                //}
                            //}
                        }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}

                        
      out.write("\n");
      out.write("                 </select>\n");
      out.write("            </div>    \n");
      out.write("                \n");
      out.write("            <h3 class=\"boxes\">Hora</h3>\n");
      out.write("            <div class=\"col-10\">\n");
      out.write("                <select class=\"form-control\" id=\"sel1\" name=\"hora\">\n");
      out.write("                        ");

                          try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call hora_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        
                        while(resultado.next()){
                            out.println("<option value=\"  "+resultado.getString(2)+"\">"+resultado.getString(2)+"</option>");
                        }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}

                        
      out.write("\n");
      out.write("                 </select>\n");
      out.write("            </div>\n");
      out.write("                 <br>\n");
      out.write("                 \n");
      out.write("                 ");

                     Calendar now = Calendar.getInstance();
 
                     String fecha=""+now.get(Calendar.DAY_OF_MONTH)+ " - "+ (now.get(Calendar.MONTH) +1)+ " - "+ now.get(Calendar.YEAR);
                     int day=now.get(Calendar.DAY_OF_MONTH);
                     int mes=(now.get(Calendar.MONTH) +1);
                     int anio=now.get(Calendar.YEAR);
                 
      out.write("\n");
      out.write("                 \n");
      out.write("            <div class=\"col-10 form-group\">\n");
      out.write("                <input type=\"hidden\" name=\"codigo\" value=");
out.println(codigo);
      out.write(">\n");
      out.write("                <input type=\"hidden\" name=\"day\" value=");
out.println(day);
      out.write(">\n");
      out.write("                <input type=\"hidden\" name=\"mes\" value=");
out.println(mes);
      out.write(">\n");
      out.write("                <input type=\"hidden\" name=\"anio\" value=");
out.println(anio);
      out.write(">\n");
      out.write("\t\t<button type=\"submit\" class=\"btn btn-success btn-block\">Reservar Cita</button>\n");
      out.write("            </div>                     \n");
      out.write("                 \n");
      out.write("                    </form>\n");
      out.write("                 \n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("      <div class=\"tablamedico col-sm-12 col-md-5\">\n");
      out.write("\n");
      out.write("      <table class=\"table table-responsive\">\n");
      out.write("<thead>\n");
      out.write("<tr>\n");
      out.write("  <th>Turno</th>\n");
      out.write("  <th>Cod.Doctor</th>\n");
      out.write("  <th>Doctor</th>\n");
      out.write("  <th>Especialidad</th>\n");
      out.write("</tr>\n");
      out.write("</thead>\n");
      out.write("<tbody>\n");
      out.write("    \n");
      out.write("    ");

                          try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call doctor_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        
                        while(resultado.next()){
                            if (resultado.getString(3).charAt(0)=='M' || resultado.getString(3).charAt(0)=='m') {
                                    out.println("<tr> <td>Mañana</td> <td>"+resultado.getInt(1)+"</td> <td>"+resultado.getString(2)+"</td> <td>"+resultado.getString(3)+"</td> </tr>");
                                }
                        }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}

    
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</tbody>\n");
      out.write("</table>\n");
      out.write("    </div>\n");
      out.write("                 \n");
      out.write("                 \n");
      out.write("        <div class=\"tablamedico2 col-sm-12 col-md-5\">\n");
      out.write("\n");
      out.write("      <table class=\"table table-responsive\">\n");
      out.write("<thead>\n");
      out.write("<tr>\n");
      out.write("  <th>Turno</th>\n");
      out.write("  <th>Cod.Doctor</th>\n");
      out.write("  <th>Doctor</th>\n");
      out.write("  <th>Especialidad</th>\n");
      out.write("</tr>\n");
      out.write("</thead>\n");
      out.write("<tbody>\n");
      out.write("    \n");
      out.write("    ");

                          try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call doctor_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        
                        while(resultado.next()){
                            if (resultado.getString(3).charAt(0)=='T' || resultado.getString(3).charAt(0)=='t') {
                                    out.println("<tr> <td>Tarde</td> <td>"+resultado.getInt(1)+"</td> <td>"+resultado.getString(2)+"</td> <td>"+resultado.getString(3)+"</td> </tr>");
                                }
                        }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}

    
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</tbody>\n");
      out.write("</table>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\t</section>\n");
      out.write("\t<!--/ banner-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("    <script src=\"js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.easing.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/custom.js\"></script>\n");
      out.write("    <script src=\"contactform/contactform.js\"></script>\n");
      out.write("\n");
      out.write("  </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
