<%-- 
    Document   : citasemana
    Created on : 06/03/2017, 02:32:23 PM
    Author     : KEVIN
--%>

<%@page import="model.conexion"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Calendar"%>
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
				        <li class="active"><a href="#banner">Citas</a></li>
				        <li class=""><a href="#services">Pacientes</a></li>
				        <li class=""><a href="#contact">Actualizar Datos</a></li>
				        <!--<li class=""><a href="#testimonial">Registro</a></li>-->


				      </ul>
				    </div>
				</div>
			  </div>
			</nav>
                    
                    
                    <% 
                    String especialidad = (String)session.getAttribute("especialidad");
                    %>
                    
                    <div class="container" style="padding-top: 100px;">
    <%
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
                                
                                if (resultado.getString(4).charAt(6)=='P' && resultado.getInt(3)==resultado2.getInt(1) && resultado.getString(7).equalsIgnoreCase(resultado3.getString(2)) && resultado.getString(2).equalsIgnoreCase(especialidad)) {
         
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

    %>



                        </div>



    
    

	</section>
	<!--/ banner-->

    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="contactform/contactform.js"></script>

  </body>
</html>
