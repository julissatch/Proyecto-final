package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.swing.JOptionPane;
import model.conexion;
import java.sql.*;

public final class actualizarpaciente_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/principal.css\">\n");
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
      out.write("\t\t\t\t        <li class=\"active\"><a href=\"#banner\">Cita</a></li>\n");
      out.write("\t\t\t\t        <li class=\"\"><a href=\"#services\">Nosotros</a></li>\n");
      out.write("\t\t\t\t        <li class=\"\"><a href=\"http://www.policlinico.org/especialidades/cardiologia.html\">Especialidades</a></li>\n");
      out.write("\t\t\t\t        <li class=\"\"><a href=\"#contact\">Contácto</a></li>\n");
      out.write("\t\t\t\t        <!--<li class=\"\"><a href=\"#testimonial\">Registro</a></li>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("                <li class=\"\">\n");
      out.write("                            <a href=\"#\">Paciente: Juan Pérez</a></li>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\t      </ul>\n");
      out.write("\t\t\t\t    </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t  </div>\n");
      out.write("\t\t\t</nav>\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <form class=\"form col-md-9 container\" role=\"form\" method=\"post\" action=\"validaractualizar\" accept-charset=\"UTF-8\" id=\"\" style=\"margin: 150px;\">\n");
      out.write("\n");
      out.write("            <h1 style=\"color: #ffffff;\">Actualización de Datos</h1>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            ");

                
                int codigopaciente = (int)session.getAttribute("codigopaciente");
                
                
                
                          try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call pacientegeneral_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        
                        while(resultado.next()){
      out.write("\n");
      out.write("                                    <!--out.println(\"<tr> <td>\"+resultado.getInt(1)+\"</td>\"+\"<td>\"+resultado.getString(2)+\"</td>\"+\n");
      out.write("                                            \"<td>\"+resultado.getString(3)+\"</td>\"+\"<td>\"+resultado.getString(4)+\"</td>\"+\n");
      out.write("                                            \"<td>\"+resultado.getString(5)+\"</td>\"+\"<td>\"+resultado.getInt(6)+\"</td>\"+\n");
      out.write("                                            \"<td>\"+resultado.getInt(7)+\"</td>\"+\"<td>\"+resultado.getDouble(8)+\"</td>\"+\n");
      out.write("                                            \"<td>\"+resultado.getDouble(9)+\"</td> <td>\"+resultado.getDate(10)   +-->\n");
      out.write("                                            \n");
      out.write("                        \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            ");

            
                if (resultado.getInt(1)==codigopaciente) {
                        
                    
            
            
      out.write("                                \n");
      out.write("            <div class=\"col-md-3\" style=\"margin: 10px;\">\n");
      out.write("            <label for=\"example-email-input\" class=\"col-2 col-form-label\" style=\"color: #ffffff;\">Nombre</label>\n");
      out.write("            <input class=\"form-control\" name=\"nombre\" type=\"text\" value=\"");
out.println(resultado.getString(2));
      out.write("\" required>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-3\" style=\"margin: 10px;\">\n");
      out.write("            <label for=\"example-email-input\" class=\"col-2 col-form-label\" style=\"color: #ffffff;\">Apellido Paterno</label>\n");
      out.write("              <input class=\"form-control\" name=\"paterno\" type=\"text\" value=\"");
out.println(resultado.getString(3));
      out.write("\" required>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-3\" style=\"margin: 10px;\">\n");
      out.write("            <label for=\"example-email-input\" class=\"col-2 col-form-label\" style=\"color: #ffffff;\">Apellido Materno</label>\n");
      out.write("              <input class=\"form-control\" name=\"materno\" type=\"text\" value=\"");
out.println(resultado.getString(4));
      out.write("\" required>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-3\" style=\"margin: 10px;\">\n");
      out.write("            <label for=\"example-text-input\" class=\"col-2 col-form-label\" style=\"color: #ffffff;\">Sexo</label>\n");
      out.write("              <select class=\"form-control\" name=\"sexo\" id=\"sel1\">\n");
      out.write("                <option value=\"M\">Masculino</option>\n");
      out.write("                <option value=\"F\">Femenino</option>\n");
      out.write("              </select>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-3\" style=\"margin: 10px;\">\n");
      out.write("            <label for=\"example-email-input\" class=\"col-2 col-form-label\" style=\"color: #ffffff;\">DNI</label>\n");
      out.write("              <input class=\"form-control\" name=\"dni\" type=\"text\" value=\"");
out.println(resultado.getInt(6));
      out.write("\" required>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-3\" style=\"margin: 10px;\">\n");
      out.write("            <label for=\"example-email-input\" class=\"col-2 col-form-label\" style=\"color: #ffffff;\">Edad</label>\n");
      out.write("              <input class=\"form-control\" name=\"edad\" type=\"text\" value=\"");
out.println(resultado.getInt(7));
      out.write("\" required>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-3\" style=\"margin: 10px;\">\n");
      out.write("            <label for=\"example-email-input\" class=\"col-2 col-form-label\" style=\"color: #ffffff;\">Peso</label>\n");
      out.write("              <input class=\"form-control\" name=\"peso\" type=\"text\" value=\"");
out.println(resultado.getDouble(8));
      out.write("\" required>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-3\" style=\"margin: 10px;\">\n");
      out.write("            <label for=\"example-email-input\" class=\"col-2 col-form-label\" style=\"color: #ffffff;\">Talla</label>\n");
      out.write("              <input class=\"form-control\" name=\"talla\" type=\"text\" value=\"");
out.println(resultado.getDouble(9));
      out.write("\" required>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("              ");

                  JOptionPane.showMessageDialog(null, resultado.getDate(10));
              
      out.write("\n");
      out.write("            \n");
      out.write("            <div class=\"col-md-3\" style=\"margin: 10px;\">\n");
      out.write("            <label for=\"example-date-input\" class=\"col-2 col-form-label\" style=\"color: #ffffff;\">Fecha de Nacimiento</label>\n");
      out.write("            <input class=\"form-control\" name=\"fecha\" type=\"date\" value=\"2011-01-01");
//out.println(resultado.getDate(10));
      out.write("\"required>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-4\" style=\"margin: 10px;\">\n");
      out.write("\t\t<button type=\"submit\" class=\"btn btn-warning btn-block\">Actualizar Datos</button>\n");
      out.write("            </div>\n");
      out.write("                    <input class=\"form-control\" name=\"codigo\" type=\"hidden\" value=\"");
out.print(resultado.getInt(1));
      out.write("\">\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("            ");
 } }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}

            
      out.write("                \n");
      out.write("\n");
      out.write("\n");
      out.write("\t</section>\n");
      out.write("\t\n");
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
