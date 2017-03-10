package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.conexion;
import java.sql.*;

public final class pacientes_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\t\t\t        <li class=\"\"><a href=\"#\">Citas</a></li>\n");
      out.write("\t\t\t\t        <li class=\"active\"><a href=\"#\">Pacientes</a></li>\n");
      out.write("\t\t\t\t        <!--<li class=\"\"><a href=\"#testimonial\">Registro</a></li>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\t      </ul>\n");
      out.write("\t\t\t\t    </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t  </div>\n");
      out.write("\t\t\t</nav>\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\n");
      out.write("      <div class=\"tablamedico col-md-11\">\n");
      out.write("\n");
      out.write("      <table class=\"table table-hove\">\n");
      out.write("<thead>\n");
      out.write("<tr>\n");
      out.write("  <th>Codigo</th>\n");
      out.write("  <th>Nombre</th>\n");
      out.write("  <th>Ap.Paterno</th>\n");
      out.write("  <th>Ap.Materno</th>\n");
      out.write("  <th>Sexo</th>\n");
      out.write("  <th>DNI</th>\n");
      out.write("  <th>Edad</th>\n");
      out.write("  <th>Peso</th>\n");
      out.write("  <th>Talla</th>\n");
      out.write("  <th>Nacimiento</th>\n");
      out.write("  <th>Opción</th>\n");
      out.write("</tr>\n");
      out.write("</thead>\n");
      out.write("<tbody>\n");
      out.write("    \n");
      out.write("    ");

                          try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call pacientegeneral_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        
                        while(resultado.next()){
                                    out.println("<tr> <td>"+resultado.getInt(1)+"</td>"+"<td>"+resultado.getString(2)+"</td>"+
                                            "<td>"+resultado.getString(3)+"</td>"+"<td>"+resultado.getString(4)+"</td>"+
                                            "<td>"+resultado.getString(5)+"</td>"+"<td>"+resultado.getInt(6)+"</td>"+
                                            "<td>"+resultado.getInt(7)+"</td>"+"<td>"+resultado.getDouble(8)+"</td>"+
                                            "<td>"+resultado.getDouble(9)+"</td> <td>"+resultado.getDate(10)   +
                                            "</td> "
                                            + "<form class=\"form\" role=\"form\" method=\"post\" action=\"redireccionar2\"><td><button type=\"submit\" class=\"btn btn-success\">Actualizar Datos</button></td> <input type=\"hidden\" name=\"codigopaciente\" value=\""+resultado.getInt(1)+"\"> </form> </tr>");
                        }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}

    
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("<tr>\n");
      out.write("  <td>kevin</td>\n");
      out.write("  <td>sevinche</td>\n");
      out.write("  <td>trinidad</td>\n");
      out.write("  <td>mefaltamucho</td>\n");
      out.write("  <td>Otto</td>\n");
      out.write("  <td>@mdo</td>\n");
      out.write("  <td>1</td>\n");
      out.write("  <td>Mark</td>\n");
      out.write("  <td>Otto</td>\n");
      out.write("  <td>@mdo</td>\n");
      out.write("  <form class=\"form\" role=\"form\" method=\"post\" action=\"validarcita\"><td><button type=\"submit\" class=\"btn btn-success\">Actualizar Datos</button></td></form>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("  <td>1</td>\n");
      out.write("  <td>Mark</td>\n");
      out.write("  <td>Otto</td>\n");
      out.write("  <td>@mdo</td>\n");
      out.write("  <td>1</td>\n");
      out.write("  <td>Mark</td>\n");
      out.write("  <td>Otto</td>\n");
      out.write("  <td>@mdo</td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("</tbody>\n");
      out.write("</table>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
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
