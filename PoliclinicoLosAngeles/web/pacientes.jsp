<%-- 
    Document   : pacientes
    Created on : 06/03/2017, 07:04:19 PM
    Author     : KEVIN
--%>

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
				        <li class=""><a href="#">Citas</a></li>
				        <li class="active"><a href="#">Pacientes</a></li>
				        <!--<li class=""><a href="#testimonial">Registro</a></li>-->


				      </ul>
				    </div>
				</div>
			  </div>
			</nav>

			<div class="container">

      <div class="tablamedico col-md-11">

      <table class="table table-hove">
<thead>
<tr>
  <th>Codigo</th>
  <th>Nombre</th>
  <th>Ap.Paterno</th>
  <th>Ap.Materno</th>
  <th>Sexo</th>
  <th>DNI</th>
  <th>Edad</th>
  <th>Peso</th>
  <th>Talla</th>
  <th>Nacimiento</th>
  <th>Opción</th>
</tr>
</thead>
<tbody>
    
    <%
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

    %>
    
    
    
    
    
    
    
<tr>
  <td>kevin</td>
  <td>sevinche</td>
  <td>trinidad</td>
  <td>mefaltamucho</td>
  <td>Otto</td>
  <td>@mdo</td>
  <td>1</td>
  <td>Mark</td>
  <td>Otto</td>
  <td>@mdo</td>
  <form class="form" role="form" method="post" action="validarcita"><td><button type="submit" class="btn btn-success">Actualizar Datos</button></td></form>
</tr>

<tr>
  <td>1</td>
  <td>Mark</td>
  <td>Otto</td>
  <td>@mdo</td>
  <td>1</td>
  <td>Mark</td>
  <td>Otto</td>
  <td>@mdo</td>
</tr>


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
