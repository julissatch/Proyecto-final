<%-- 
    Document   : especialidades
    Created on : 06/03/2017, 01:54:43 PM
    Author     : KEVIN
--%>

<%@page import="java.sql.*"%>
<%@page import="model.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Medilab Free Bootstrap HTML5 Template</title>
    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/admin.css">
    <!-- =======================================================
        Theme Name: Medilab
        Theme URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
        Author: BootstrapMade.com
        Author URL: https://bootstrapmade.com
    ======================================================= -->
  </head>
  <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
      
      <%
        if(request.getSession().getAttribute("autorizacion")==null){
           //request.getRequestDispatcher("index.jsp").forward(request, response);
           String redirectURL="login.jsp";
            response.sendRedirect(redirectURL);
       }
        %>

      <!--banner-->
	<section id="banner" class="banner">
		<div class="bg-color">
			<nav class="navbar navbar-default navbar-fixed-top">
			  <div class="container">
			  	<div class="col-md-12">
				    <div class="navbar-header">
				      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
				      <a class="navbar-brand" href="#"><img src="img/logo.png" class="img-responsive" style="width: 140px; margin-top: -16px;"></a>
				    </div>
				    <div class="collapse navbar-collapse navbar-right" id="myNavbar">
				      <ul class="nav navbar-nav">
				        <li class="active">
                                            <form action="especialidades.jsp" method="post">
                                                <input type="submit" value="Especialidades" style="font-size: 14px;font-weight: 300;color: #fff; text-transform: uppercase; background-color: transparent;padding-bottom: 13px;padding-top: 13px;margin-top: 0px;border-color: transparent;background-color: rgba(12, 184, 182, 0.21);">
                                            </form>
                                        </li>
                                        <li class="">
                                            <form action="pacientes.jsp" method="post">
                                                <input type="submit" value="Pacientes" style="font-size: 14px;font-weight: 300;color: #fff; text-transform: uppercase; background-color: transparent;padding-bottom: 13px;padding-top: 13px;margin-top: 0px;border-radius: 5px;border-color: transparent;">
                                            </form>
                                        </li>
                                        <li class="">
                                            <form action="mensajes.jsp" method="post">
                                                <input type="submit" value="Mensajes" style="font-size: 14px;font-weight: 300;color: #fff; text-transform: uppercase; background-color: transparent;padding-bottom: 13px;padding-top: 13px;margin-top: 0px;border-radius: 5px;border-color: transparent;">
                                            </form>
                                        </li>
                                        <li class="">
                                            <form action="historialdecitas.jsp" method="post">
                                                <input type="submit" value="Historial de Citas" style="font-size: 14px;font-weight: 300;color: #fff; text-transform: uppercase; background-color: transparent;padding-bottom: 13px;padding-top: 13px;margin-top: 0px;border-radius: 5px;border-color: transparent;">
                                            </form>
                                        </li>
                                        <li class="">
                                            <form action="cerrarsesion" method="post">
                                                <input type="submit" value="Cerrar Sesión" style="font-size: 14px;font-weight: 300;color: #fff; text-transform: uppercase; background-color: transparent;padding-bottom: 13px;padding-top: 13px;margin-top: 0px;border-radius: 5px;border-color: transparent;">
                                            </form>
                                        </li>
				        
				        <!--<li class=""><a href="#testimonial">Registro</a></li>-->

				      </ul>
				    </div>
				</div>
			  </div>
			</nav>

                    <section id="doctor-team" class="section-padding" style="padding-top: 100px;">
    		<div class="container">
    			<div class="row">
    				<div class="col-md-12">
                                    <h3 class="ser-title" style="color: #ffffff;">Escoja una Especialidad para ver la citas de la semana</h3>
    					<hr class="botm-line">
    				</div>
                            
                            
                            
                            <%
                          try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call especialidad_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        int n=1;
                        while(resultado.next()){
                            out.println("<div class=\"col-md-4 col-sm-3 col-xs-6\">");
                            out.println("<form class=\"form\" role=\"form\" method=\"post\" action=\"redireccionar\">");
                            out.println("<div class=\"thumbnail\">");
                            out.println("<a href=\"#\" class=\"thumb\">");
                            out.println("<img src=\"img/"+n+".png\" class=\"team-img\">");
                            out.println("</a>");
                            out.println("<input type=\"submit\" name=\"especialidad\" value=\""+resultado.getString(2)+"\">");
                            out.println("</div>");
                            out.println("</form>");
                            out.println("</div>");
                            n++;
                        }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}
                        %>

    			</div>
    		</div>
    	</section>

	</section>
	<!--/ banner-->

    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="contactform/contactform.js"></script>

  </body>
</html>
