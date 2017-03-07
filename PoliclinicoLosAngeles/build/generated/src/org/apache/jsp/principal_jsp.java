package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.swing.JOptionPane;
import java.util.Calendar;
import model.conexion;
import java.sql.*;

public final class principal_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/principal.css\">\n");
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
        JOptionPane.showMessageDialog(null, "Codigo del paciente: "+codigo);
        
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
      out.write("\t\t\t\t        <li class=\"\"><a href=\"#banner\">Reservar Cita</a></li>\n");
      out.write("\t\t\t\t        <!--<li class=\"\"><a href=\"#testimonial\">Registro</a></li>-->\n");
      out.write("\n");
      out.write("                             \n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                \n");
      out.write("                        ");

                            
                                            
                                            out.println("<li class=\"active\"><a href=\"#\">Paciente:  "+nombre+"</a></li>");
                        
                        
                        
                        
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
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                    \n");
      out.write("                            \n");
      out.write("            \n");
      out.write("            <div class=\"citas col-sm-4 \">\n");
      out.write("            <h1 class=\"boxes\">Citas</h1>\n");
      out.write("            ");
                        
                int codigocita=0;
                try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call cita_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        
                        while(resultado.next()){
                            if (resultado.getInt(3)==codigo) {
                out.print("<form action=\"eliminarcita\" method=\"post\">");  
                out.println("<textarea class=\"bookes\" name=\"message\" rows=\"12\" cols=\"85\" disabled=\"\">");
                out.println("                  LUGAR DE CONSULTA :  POLICLÍNICO NUESTRA SEÑORA DE LOS ANGELES");
                out.print("                  CODIGO DE CITA :  ");  out.println(resultado.getInt(1));codigo=resultado.getInt(1);
                out.print("                  PACIENTE :  ");  out.println(nombre.toUpperCase());
                out.print("                  ESPECIALIDAD :  ");  out.println(resultado.getString(2).toUpperCase());
                out.print("                  HORA DE CITA :  ");  out.println(resultado.getString(4));
                out.print("                  DOCTOR(A) :  ");  out.println(resultado.getString(5).toUpperCase());
                out.println("                  COSTO DE CITA :  10.00 SOLES");out.println("");
                out.println("                  El paciente tendrá que acercarse a caja para cancelar el monto de la cita y");
                out.println("                  posteriormente acudir a su cita en el consultorio establecido en el recibo.");
                out.println("                                                                                                                         - Administración");
                out.print("</textarea>");
                                
                //Acá va el form.            
                                  
                out.print("<div class=\"form-group col-md-5  pull-right\">");
                out.print("<button type=\"submit\" class=\"btn btn-primary btn-block\">Eliminar Cita</button>");
                out.print("<input type=\"hidden\" name=\"codigocita\" value=\""+codigo+"\">");
                out.print("</div>");
                out.print("</form>");//JOptionPane.showMessageDialog(null, "Codigo de la cita: "+resultado.getInt(1));
                            }            
                        }
                        conexion.cerrar();
                }catch(Exception ex){out.println(ex.toString());}
                
                
            
      out.write("\n");
      out.write("            <!--\n");
      out.write("            <form action=\"login.jsp\" method=\"post\">\n");
      out.write("                <div class=\"form-group col-md-2\">\n");
      out.write("\t\t<button type=\"submit\" class=\"btn btn-primary btn-block\">Login</button>\n");
      out.write("                </div>\n");
      out.write("            </form>-->\n");
      out.write("            \n");
      out.write("      \n");
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
      out.write("\n");
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
