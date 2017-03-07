<%-- 
    Document   : principal
    Created on : 03/03/2017, 03:44:23 PM
    Author     : KEVIN
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.Calendar"%>
<%@page import="model.conexion"%>
<%@page import="java.sql.*"%>
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
    <link rel="stylesheet" type="text/css" href="css/principal.css">
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
    
    <script type="text/javascript">
        
        $('#demoSelect').change(function(){
    $('#demoInput').val($(this).val());
});
        
    </script>
    
  </head>
  <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
      
      <% 
        //String codigo = (String)session.getAttribute("codigo");
        int codigo = (int)session.getAttribute("codigo");
        String nombre = (String)session.getAttribute("nombre");
        JOptionPane.showMessageDialog(null, "Codigo del paciente: "+codigo);
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
				        <li class="">
                                        
                                            <form action="cita.jsp" method="post">
                                                <input type="submit" value="Reservar Cita" style="font-size: 14px;font-weight: 300;color: #fff; text-transform: uppercase; background-color: transparent;padding-bottom: 13px;padding-top: 13px;margin-top: 0px;border-radius: 5px;border-color: transparent;">
                                            </form>
                                        
                                        </li>
				                
        <!--.focus{background-color: yellow;}
        
        color: #fff;
	text-transform: uppercase;
	font-size: 14px;
	font-weight: 300;
        color: #fff;
    text-transform: uppercase;
    background-color: rgba(12, 184, 182, 0.21);
    
        -->                                         
                        <%
                                            //out.println("<li class=\"active\">"
                                                    
                                              //      + "<a href=\"#\">Paciente:  "+nombre+"</a>"
                                                    
                                                //    + "</li>");
                        %>                               
                                            
                             
                                        
                                        
                
                        <%
                            
                                            
                                            out.println("<li class=\"active\">"
                                                    + "<form action=\"principal.jsp\" method=\"post\">"
                                                    + "<input type=\"submit\" value=\""+nombre+"\" style=\"font-size: 14px;font-weight: 300;color: #fff; text-transform: uppercase; background-color: transparent;padding-bottom: 13px;padding-top: 13px;margin-top: 0px;border-color: transparent;background-color: rgba(12, 184, 182, 0.21);\">"
                                                    + "</form>"
                                                    + "</li>");
                        
                        
                        
                        %>
                        


				      </ul>
				    </div>
				</div>
			  </div>
			</nav>
                        
                        
                        
                        
                        
                        
                        
                        
			<div class="container">

                            
                            
                    
                            
            
            <div class="citas col-sm-4 ">
            <h1 class="boxes">Citas</h1>
            <%                        
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
                out.print("                  CODIGO DE CITA :  ");  out.println(resultado.getInt(1));codigocita=resultado.getInt(1);
                out.print("                  PACIENTE :  ");  out.println(nombre.toUpperCase());
                out.print("                  ESPECIALIDAD :  ");  out.println(resultado.getString(2).toUpperCase());
                out.print("                  FECHA :  ");  out.println(resultado.getString(6));
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
                out.print("<input type=\"hidden\" name=\"codigocita\" value=\""+codigocita+"\">");
                out.print("</div>");
                out.print("</form>");//JOptionPane.showMessageDialog(null, "Codigo de la cita: "+resultado.getInt(1));
                            }            
                        }
                        conexion.cerrar();
                }catch(Exception ex){out.println(ex.toString());}
                
                
            %>
            <!--
            <form action="login.jsp" method="post">
                <div class="form-group col-md-2">
		<button type="submit" class="btn btn-primary btn-block">Login</button>
                </div>
            </form>-->
            
      

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

