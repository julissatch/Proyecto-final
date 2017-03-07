<%-- 
    Document   : actualizarpaciente
    Created on : 06/03/2017, 09:13:08 PM
    Author     : KEVIN
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="model.conexion"%>
<%@page import="java.sql.*"%>
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
    <link rel="stylesheet" type="text/css" href="css/principal.css">
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
				        <li class="active"><a href="#banner">Cita</a></li>
				        <li class=""><a href="#services">Nosotros</a></li>
				        <li class=""><a href="http://www.policlinico.org/especialidades/cardiologia.html">Especialidades</a></li>
				        <li class=""><a href="#contact">Contácto</a></li>
				        <!--<li class=""><a href="#testimonial">Registro</a></li>-->


                <li class="">
                            <a href="#">Paciente: Juan Pérez</a></li>
                </li>


				      </ul>
				    </div>
				</div>
			  </div>
			</nav>
			<div class="container">



            <form class="form col-md-9 container" role="form" method="post" action="validaractualizar" accept-charset="UTF-8" id="" style="margin: 150px;">

            <h1 style="color: #ffffff;">Actualización de Datos</h1>
            
            
            
            <%
                
                int codigopaciente = (int)session.getAttribute("codigopaciente");
                
                
                
                          try{  
                        Connection conex=conexion.obtener();
                        PreparedStatement consulta=conex.prepareStatement("call pacientegeneral_select();");
                        
                        ResultSet resultado=consulta.executeQuery();
                        
                        while(resultado.next()){%>
                                    <!--out.println("<tr> <td>"+resultado.getInt(1)+"</td>"+"<td>"+resultado.getString(2)+"</td>"+
                                            "<td>"+resultado.getString(3)+"</td>"+"<td>"+resultado.getString(4)+"</td>"+
                                            "<td>"+resultado.getString(5)+"</td>"+"<td>"+resultado.getInt(6)+"</td>"+
                                            "<td>"+resultado.getInt(7)+"</td>"+"<td>"+resultado.getDouble(8)+"</td>"+
                                            "<td>"+resultado.getDouble(9)+"</td> <td>"+resultado.getDate(10)   +-->
                                            
                        
            
            
            
            
            
            <%
            
                if (resultado.getInt(1)==codigopaciente) {
                        
                    
            
            %>                                
            <div class="col-md-3" style="margin: 10px;">
            <label for="example-email-input" class="col-2 col-form-label" style="color: #ffffff;">Nombre</label>
            <input class="form-control" name="nombre" type="text" value="<%out.println(resultado.getString(2));%>" required>
            </div>

            <div class="col-md-3" style="margin: 10px;">
            <label for="example-email-input" class="col-2 col-form-label" style="color: #ffffff;">Apellido Paterno</label>
              <input class="form-control" name="paterno" type="text" value="<%out.println(resultado.getString(3));%>" required>
            </div>

            <div class="col-md-3" style="margin: 10px;">
            <label for="example-email-input" class="col-2 col-form-label" style="color: #ffffff;">Apellido Materno</label>
              <input class="form-control" name="materno" type="text" value="<%out.println(resultado.getString(4));%>" required>
            </div>

            <div class="col-md-3" style="margin: 10px;">
            <label for="example-text-input" class="col-2 col-form-label" style="color: #ffffff;">Sexo</label>
              <select class="form-control" name="sexo" id="sel1">
                
                <%
                if (resultado.getString(5).equalsIgnoreCase("M")) {%>
                    <option value="M">Masculino</option>
                    <option value="F">Femenino</option>    
                <%  }  %>
                  
                <%
                if (resultado.getString(5).equalsIgnoreCase("F")) {%>
                    <option value="F">Femenino</option>
                    <option value="M">Masculino</option>
                <%  }  %>
                
              </select>
            </div>

            <div class="col-md-3" style="margin: 10px;">
            <label for="example-email-input" class="col-2 col-form-label" style="color: #ffffff;">DNI</label>
              <input class="form-control" name="dni" type="text" value="<%out.println(resultado.getInt(6));%>" maxlength="7" required>
            </div>

            <div class="col-md-3" style="margin: 10px;">
            <label for="example-email-input" class="col-2 col-form-label" style="color: #ffffff;">Edad</label>
              <input class="form-control" name="edad" type="text" value="<%out.println(resultado.getInt(7));%>" maxlength="3" required>
            </div>

            <div class="col-md-3" style="margin: 10px;">
            <label for="example-email-input" class="col-2 col-form-label" style="color: #ffffff;">Peso(Kg)</label>
              <input class="form-control" name="peso" type="text" value="<%out.println(resultado.getDouble(8));%>" maxlength="5" title="Peso en Kg" required>
            </div>

            <div class="col-md-3" style="margin: 10px;">
            <label for="example-email-input" class="col-2 col-form-label" style="color: #ffffff;">Talla(mts)</label>
              <input class="form-control" name="talla" type="text" value="<%out.println(resultado.getDouble(9));%>" maxlength="4" title="Talla en mts" required>
            </div>
            
            <div class="col-md-3" style="margin: 10px;">
            <label for="example-date-input" class="col-2 col-form-label" style="color: #ffffff;">Fecha de Nacimiento</label>
            <input class="form-control" name="fecha" type="date" value="<%out.print(resultado.getDate(10));%>"required>
            </div>

            <div class="col-md-4" style="margin: 10px;">
		<button type="submit" class="btn btn-warning btn-block">Actualizar Datos</button>
            </div>
                    <input class="form-control" name="codigo" type="hidden" value="<%out.print(resultado.getInt(1));%>">
            </form>

          </div>

            <% } }
                        conexion.cerrar();
                        }catch(Exception ex){out.println(ex.toString());}

            %>                


	</section>
	
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="contactform/contactform.js"></script>

  </body>
</html>
