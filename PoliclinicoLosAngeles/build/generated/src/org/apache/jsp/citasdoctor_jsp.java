package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.conexion;
import java.sql.*;
import java.util.Calendar;

public final class citasdoctor_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
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
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/admin.css\">\n");
      out.write("    <!-- =======================================================\n");
      out.write("        Theme Name: Medilab\n");
      out.write("        Theme URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/\n");
      out.write("        Author: BootstrapMade.com\n");
      out.write("        Author URL: https://bootstrapmade.com\n");
      out.write("    ======================================================= -->\n");
      out.write("  </head>\n");
      out.write("  <body id=\"myPage\" data-spy=\"scroll\" data-target=\".navbar\" data-offset=\"60\">\n");
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
      out.write("\t\t\t\t        <li class=\"active\"><a href=\"#banner\">Citas</a></li>\n");
      out.write("\t\t\t\t        <li class=\"\"><a href=\"#services\">Pacientes</a></li>\n");
      out.write("\t\t\t\t        <li class=\"\"><a href=\"#contact\">Actualizar Datos</a></li>\n");
      out.write("\t\t\t\t        <!--<li class=\"\"><a href=\"#testimonial\">Registro</a></li>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\t      </ul>\n");
      out.write("\t\t\t\t    </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t  </div>\n");
      out.write("\t\t\t</nav>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    ");
 
                    String especialidad = (String)session.getAttribute("especialidad");
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <div class=\"container\" style=\"padding-top: 100px;\">\n");
      out.write("    ");

                          try{
                              Connection conex=conexion.obtener();
                              
                        Calendar now = Calendar.getInstance();
                        int dia=now.get(Calendar.DAY_OF_WEEK)-1;
                        
                        PreparedStatement consulta3=conex.prepareStatement("call dia_select();");
                        ResultSet resultado3=consulta3.executeQuery();
                            
                            while(resultado3.next()){
                                
                                if(resultado3.getInt(1)>=dia){
                                
                                    out.println("<div class=\"container\">");
                                    out.println("<div class=\"tablamedico col-md-10\">");
                                    out.println("<table class=\"table table-hove\">");
                                    out.println("<thead>");
                                    out.println("<tr><th>Cod.Cita</th><th>Cod.Paciente</th><th>Nombre</th><th>Ap.Paterno</th><th>Ap.Materno</th><th>Especialidad</th><th>Hora</th><th>Doctor</th><th>Opción</th></tr>");
                                    out.println("</thead>");
                                    out.println("<tbody>");
                                    
                                    out.println("<h3>"+resultado3.getString(2)+" (Mañana)</h3>");
                                    
                            PreparedStatement consulta=conex.prepareStatement("call cita_select();");
                            ResultSet resultado=consulta.executeQuery();        
                                
                            PreparedStatement consulta2=conex.prepareStatement("call pacientegeneral_select();");
                            ResultSet resultado2=consulta2.executeQuery();
                        
                            while(resultado2.next()){
                                
                            while(resultado.next()){
                                
                                if (resultado.getString(4).charAt(6)=='A' && resultado.getInt(3)==resultado2.getInt(1) && resultado.getString(7).equalsIgnoreCase(resultado3.getString(2)) && resultado.getString(2).equalsIgnoreCase(especialidad)) {
         
                            out.println("<tr> <td>"+resultado.getInt(1)+"</td> <td>"+resultado.getInt(3)+"</td> <td>"+resultado2.getString(2)+
                                    "</td> <td>"+resultado2.getString(3)+"</td>  <td>"+resultado2.getString(4)+"</td>  <td>"+resultado.getString(2)+
                                    "</td>  <td>"+resultado.getString(4)+"</td>  <td>"+resultado.getString(5)+"</td> <form class=\"form\" role=\"form\" method=\"post\" action=\"validarcita\"><td><button type=\"submit\" class=\"btn btn-success\">Eliminar Cita</button></td></form></tr>");
                            
                                    }
                                
                            }    
                            }
                                    out.println("</tbody>");
                                    out.println("</table>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    
                                    
                                }
                                    
                            }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}
                          

                        try{
                              Connection conex=conexion.obtener();
                              
                        Calendar now = Calendar.getInstance();
                        int dia=now.get(Calendar.DAY_OF_WEEK)-1;
                        
                        PreparedStatement consulta3=conex.prepareStatement("call dia_select();");
                        ResultSet resultado3=consulta3.executeQuery();
                            
                            while(resultado3.next()){
                                
                                if(resultado3.getInt(1)>=dia){
                                
                                    out.println("<div class=\"container\">");
                                    out.println("<div class=\"tablamedico col-md-10\">");
                                    out.println("<table class=\"table table-hove\">");
                                    out.println("<thead>");
                                    out.println("<tr><th>Cod.Cita</th><th>Cod.Paciente</th><th>Nombre</th><th>Ap.Paterno</th><th>Ap.Materno</th><th>Especialidad</th><th>Hora</th><th>Doctor</th></tr>");
                                    out.println("</thead>");
                                    out.println("<tbody>");
                                    
                                    out.println("<h3>"+resultado3.getString(2)+" (Tarde)</h3>");
                                    
                            PreparedStatement consulta=conex.prepareStatement("call cita_select();");
                            ResultSet resultado=consulta.executeQuery();        
                                
                            PreparedStatement consulta2=conex.prepareStatement("call pacientegeneral_select();");
                            ResultSet resultado2=consulta2.executeQuery();
                        
                            while(resultado2.next()){
                                
                            while(resultado.next()){
                                
                                if (resultado.getString(4).charAt(6)=='P' && resultado.getInt(3)==resultado2.getInt(1) && resultado.getString(7).equalsIgnoreCase(resultado3.getString(2)) && resultado.getString(2).equalsIgnoreCase(especialidad)) {
         
                            out.println("<tr> <td>"+resultado.getInt(1)+"</td> <td>"+resultado.getInt(3)+"</td> <td>"+resultado2.getString(2)+
                                    "</td> <td>"+resultado2.getString(3)+"</td>  <td>"+resultado2.getString(4)+"</td>  <td>"+resultado.getString(2)+
                                    "</td>  <td>"+resultado.getString(4)+"</td>  <td>"+resultado.getString(5)+"</td> </tr>");
                            
                                    }
                                
                            }    
                            }
                                    out.println("</tbody>");
                                    out.println("</table>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    
                                }
                            }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}

    
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("\n");
      out.write("\t</section>\n");
      out.write("\t<!--/ banner-->\n");
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
