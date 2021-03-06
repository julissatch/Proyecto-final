<%-- 
    Document   : principal
    Created on : 02/03/2017, 12:58:04 PM
    Author     : KEVIN
--%>

<%@page import="model.conexion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Medilab Free Bootstrap HTML5 Template</title>
    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/cita.css">
    <!--<script src="//code.jquery.com/jquery-1.10.2.min.js"></script> -->
    <script src="js/jquery-3.1.1.js"></script>
    <!--<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
    <script src="js/bootstrap.min.js"></script>
    <!-- =======================================================
        Theme Name: Medilab
        Theme URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
        Author: BootstrapMade.com
        Author URL: https://bootstrapmade.com
    ======================================================= -->
    
        
        <%
        //mensaje en caso de usuario incorrecto
        if(request.getSession().getAttribute("reservar")!=null){
            
            String reservar = (String)session.getAttribute("reservar");
            if(reservar.equalsIgnoreCase("ocupado")){
            out.println("<script type=\"text/javascript\">alert(\"Ya hay otra cita en esta misma hora!\");</script>");
            }
            if(reservar.equalsIgnoreCase("mismodia")){
            out.println("<script type=\"text/javascript\">alert(\"Ya tienes una cita en esa especialidad en ese mismo día!\");</script>");
            }
            if(reservar.equalsIgnoreCase("mismahora")){
            out.println("<script type=\"text/javascript\">alert(\"Ya tienes una cita a esa misma hora en otra especialidad!\");</script>");
            }
            request.getSession().setAttribute("reservar",null); 
            
       }

        %>
        
    
  </head>
  <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
      
        <% 

        if(request.getSession().getAttribute("autorizacion")==null){
           //request.getRequestDispatcher("index.jsp").forward(request, response);
           String redirectURL="login.jsp";
            response.sendRedirect(redirectURL);
       }
          
        String code = (String)session.getAttribute("codigo");
        String nombre = (String)session.getAttribute("nombre");
          
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
                                            <form action="cita.jsp" method="post">
                                                <input type="submit" value="Reservar Cita" style="font-size: 14px;font-weight: 300;color: #fff; text-transform: uppercase; background-color: transparent;padding-bottom: 13px;padding-top: 13px;margin-top: 0px;border-color: transparent;background-color: rgba(12, 184, 182, 0.21);">
                                            </form>
                                        </li>
                
                        <%
                                            out.println("<li class=\"\">"
                                                    + "<form action=\"principal.jsp\" method=\"post\">"
                                                    + "<input type=\"submit\" value=\""+nombre+"\" style=\"font-size: 14px;font-weight: 300;color: #fff; text-transform: uppercase; background-color: transparent;padding-bottom: 13px;padding-top: 13px;margin-top: 0px;border-radius: 5px;border-color: transparent;\">"
                                                    + "</form>"
                                                    + "</li>");
                        %>
                                    
                                    <li class="active">
                                            <form action="cerrarsesion" method="post">
                                                <input type="submit" value="Cerrar Sesión" style="font-size: 14px;font-weight: 300;color: #fff; text-transform: uppercase; background-color: transparent;padding-bottom: 13px;padding-top: 13px;margin-top: 0px;border-radius: 5px;border-color: transparent;">
                                            </form>
                                        </li>
                                    
				      </ul>
				    </div>
				</div>
			  </div>
			</nav>
                        
			<div class="container">
                            
            <div class="book form-group row col-md-2">
                
                <form class="form" role="form" method="post" action="validarcita" accept-charset="UTF-8" id="">
            
                <h3 class="boxes">Especialidad</h3>
            <div class="col-10">
                <select class="form-control" id="sel1" name="especialidad">
                        <%
                          try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call especialidad_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        
                        while(resultado.next()){
                            out.println("<option value=\"  "+resultado.getString(2)+"\">"+resultado.getString(2)+"</option>");
                        }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}

                        %>
                 </select>
            </div>    
                
                
            <%
                
            %>
            <h3 class="boxes">Día</h3>
            <div class="col-10">
                <select class="form-control" id="sel1" name="dia">
                        <%
                          try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call dia_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        
                        Calendar now = Calendar.getInstance();
                        int dia=now.get(Calendar.DAY_OF_WEEK)-1;
                            
                        while(resultado.next()){
                            
                            //if (dia==0) {
                                    out.println("<option value=\""+resultado.getString(2)+"\">"+resultado.getString(2)+"</option>");
                              //  }
                            //else{
                            //if (resultado.getInt(1)>dia) {
                                //    out.println("<option value=\"  "+resultado.getString(2)+"\">"+resultado.getString(2)+"</option>");
                                //}
                            //}
                        }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}

                        %>
                 </select>
            </div>    
                
            <h3 class="boxes">Hora</h3>
            <div class="col-10">
                <select class="form-control" id="sel1" name="hora">
                        <%
                          try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call hora_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        
                        while(resultado.next()){
                            out.println("<option value=\"  "+resultado.getString(2)+"\">"+resultado.getString(2)+"</option>");
                        }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}

                        %>
                 </select>
            </div>
                 <br>
                 
                 <%
                     Calendar now = Calendar.getInstance();
 
                     //String fecha=""+now.get(Calendar.DAY_OF_MONTH)+ " - "+ (now.get(Calendar.MONTH) +1)+ " - "+ now.get(Calendar.YEAR);
                     //int day=now.get(Calendar.DAY_OF_MONTH);
                     //int mes=(now.get(Calendar.MONTH) +1);
                     //int anio=now.get(Calendar.YEAR);
                 %>
                 
            <div class="col-10 form-group">
                <input type="hidden" name="codigo" value=<%out.println(code);%>>
                <!--<input type="hidden" name="day" value=<%//out.println(day);%>>-->
                <!--<input type="hidden" name="mes" value=<%//out.println(mes);%>>-->
                <!--<input type="hidden" name="anio" value=<%//out.println(anio);%>>-->
		<button type="submit" class="btn btn-success btn-block">Reservar Cita</button>
            </div>                     
                 
                    </form>
                 
			</div>

      <div class="tablamedico col-sm-12 col-md-5">

      <table class="table table-responsive">
<thead>
<tr>
  <th>Turno</th>
  <th>Cod.Doctor</th>
  <th>Doctor</th>
  <th>Especialidad</th>
</tr>
</thead>
<tbody>
    
    <%
                          try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call doctor_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        
                        while(resultado.next()){
                            if (resultado.getString(4).charAt(0)=='M' || resultado.getString(4).charAt(0)=='m') {
                                    out.println("<tr> <td>Mañana</td> <td>"+resultado.getInt(1)+"</td> <td>"+resultado.getString(2)+"</td> <td>"+resultado.getString(5)+"</td> </tr>");
                                }
                        }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}

    %>



</tbody>
</table>
    </div>
                 
                 
        <div class="tablamedico2 col-sm-12 col-md-5">

      <table class="table table-responsive">
<thead>
<tr>
  <th>Turno</th>
  <th>Cod.Doctor</th>
  <th>Doctor</th>
  <th>Especialidad</th>
</tr>
</thead>
<tbody>
    
    <%
                          try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call doctor_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        
                        while(resultado.next()){
                            if (resultado.getString(4).charAt(0)=='T' || resultado.getString(4).charAt(0)=='t') {
                                    out.println("<tr> <td>Tarde</td> <td>"+resultado.getInt(1)+"</td> <td>"+resultado.getString(2)+"</td> <td>"+resultado.getString(5)+"</td> </tr>");
                                }
                        }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}

    %>



</tbody>
</table>
    </div>


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
