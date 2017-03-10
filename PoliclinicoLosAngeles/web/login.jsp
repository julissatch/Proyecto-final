<%-- 
    Document   : login
    Created on : 02/03/2017, 11:07:36 AM
    Author     : KEVIN
--%>

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
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- =======================================================
        Theme Name: Medilab
        Theme URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
        Author: BootstrapMade.com
        Author URL: https://bootstrapmade.com
    ======================================================= -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    
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
				        <li class="active"><a href="#banner">Inicio</a></li>
				        <li class=""><a href="#services">Nosotros</a></li>
				        <li class=""><a href="#contact">Contacto</a></li>
				        <!--<li class=""><a href="#testimonial">Registro</a></li>-->
				      </ul>

              <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login<span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
					 <div class="row">
							<div class="col-md-12">
								 
                                                            <form class="form" role="form" method="post" action="validar" accept-charset="UTF-8" id="login-nav" style="margin: 10px;">
										<div class="form-group">
											 <label class="sr-only" >codigo</label>
											 <input type="text" name="codigo" class="form-control" id="exampleInputEmail2" placeholder="Código" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" >dni</label>
											 <input type="text" name="dni" class="form-control" id="exampleInputPassword2" placeholder="DNI" required>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Login</button>
										</div>Ingresar como:
                                                                                <div class="">
                                                                                         <input type="radio" name="tipodelogin" value="paciente" checked>Paciente<br>
                                                                                         <input type="radio" name="tipodelogin" value="doctor">Doctor<br>
                                                                                         <input type="radio" name="tipodelogin" value="admin">Administrador
										</div>
								 </form>
							</div>
							<div class="bottom text-center">
								¿ Quiéres reservar una cita ? <b>Conéctate</b>
							</div>
					 </div>
				</li>
			</ul>
        </li>
      </ul>

				    </div>
				</div>
			  </div>
			</nav>
			<div class="container">
				<div class="row">
					<div class="banner-info">
						<div class="banner-logo text-center">
							<img src="img/logo.png" class="img-responsive">
						</div>
						<div class="banner-text text-center">
							<h1 class="white">Haga su cita ya!!</h1>
							<p>Prueba nuestro nuevo Servivio de Reserva de Citas Online <br>y ahórrese las colas</p>
							<a href="#contact" class="btn btn-appoint">Hacer una Cita</a>
						</div>
						<div class="overlay-detail text-center">
			               <a href="#service"><i class="fa fa-angle-down"></i></a>
			             </div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/ banner-->


        <div>
            
        </div>
        
        <script class="text/javascript">   
        
        $('.myCheckbox').click(function() {
        $(this).siblings('input:checkbox').prop('checked', false);
    });


    //Every checkboxes in the page
    /*$('.selectme input:checkbox').click(function() {
        $('.selectme input:checkbox').not(this).prop('checked', false);
    }); */

        </script>



  <section id="services" class="section-padding">

          <div class="container">

          <article class="post"> <!--Clearfix xq si no tendrá problemas con el float-->

            <h2 class="post-titlee">
              ¿Quiénes Somos?
            </h2>


            <a href="#" class="thumb pull-left">
              <img class="img-thumbnail" src="img/policlinico.jpg"> <!--Imagen-->
            </a>



            <p class="quienes">
              <br>
              Somos Franciscanos del Convento de los Descalzos en en el colonial barrio del Rímac, en Lima. Parte importante de nuestra Acción Social es el <strong>Policlínico Parroquial "Nuestra señora de los Ángeles"</strong>. Constituye una alternativa válida en el Área de la Salud, ofreciendo servicios médicos integrales, de una alta calidad y seguridad dentro de una estructura de costos sociales razonables.
              <br><br>
              El <strong>POLICLINICO NUESTRA SEÑORA DE LOS ANGELES</strong> cuenta una constante adquisición y renovación de los más avanzados, mejores y sofisticados Equipos Médicos para proporcionar y garantizar una moderna, actualizada y excelente atención a sus Pacientes; y que además cuenta, con un Grupo de Médicos de los más destacados Profesionales en el Campo de la Medicina y sus Especialidades afines.
              <br><br>
            </p>

            </div>

              <div class="visionmision container">
              <h2>VISIÓN</h2> <p>
                <br>
              Lograr la mejor proyección comunitaria de un Centro de Atención Médica, Organizando sus servicios con tecnología moderna y mística profesional; con gente consagrada y emprendedora que permita ofrecer un servicio magnifico a sus pacientes con seguridad terapéutica, manteniendo los más altos niveles de calidad.
              </p>
                <br>
              <h2>MISION</h2> <p>
                <br>
              Proporcionar un servicio confiable, seguro, eficiente, responsable, cordial y humano a nuestros pacientes; prestándoles excelente atención y el mejor tratamiento en una atmósfera de tranquilidad y buen trato. Estamos consagrados al paciente y nuestros servicios están dirigidos a satisfacer sus necesidades
              </p>
              </div>

              <div class="overlay-detail text-center">
  			               <a href="#services"><i class="fa fa-angle-down"></i></a>
  			             </div>

          </article>




  </section>











  <!--contact-->
  <section id="contact" class="section-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="ser-title">Contáctanos</h2>
          <hr class="botm-line">
        </div>
        <div class="col-md-4 col-sm-4">
            <h3>Información</h3>
            <div class="space"></div>
            <p><i class="fa fa-map-marker fa-fw pull-left fa-2x"></i>Alameda Los Bobos 199<br>
              Rímac 15093</p>
            <div class="space"></div>
            <p><i class="fa fa-envelope-o fa-fw pull-left fa-2x"></i>info@policlinola.com</p>
            <div class="space"></div>
            <p><i class="fa fa-phone fa-fw pull-left fa-2x"></i>+51 990 437 191</p>
          </div>
        <div class="col-md-8 col-sm-8 marb20">
          <div class="contact-info">
              <h3 class="cnt-ttl">Hacer una consulta</h3>
              <div class="space"></div>
                            <div id="sendmessage">Your message has been sent. Thank you!</div>
                            <div id="errormessage"></div>
              <form action="consulta" method="post" role="form" class="contactForm">
                  <div class="form-group">
                                    <input required type="text" name="nombre" class="form-control br-radius-zero" id="name" placeholder="Nombre" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group">
                                    <input required type="email" class="form-control br-radius-zero" name="correo" id="email" placeholder="Correo" data-rule="email" data-msg="Please enter a valid email" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group">
                                    <input required type="text" class="form-control br-radius-zero" name="asunto" id="subject" placeholder="Asunto" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group">
                                    <textarea required class="form-control br-radius-zero" name="mensaje" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Mensaje"></textarea>
                                    <div class="validation"></div>
                                </div>

                <div class="form-action">
                  <button type="submit" class="btn btn-form">Enviar Mensaje</button>
                </div>
              </form>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ contact-->














	<!--footer-->
	<footer id="footer">
		<div class="top-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-4 marb20">
							<div class="ftr-tle">
								<h4 class="white no-padding">About Us</h4>
							</div>
							<div class="info-sec">
								<p>Praesent convallis tortor et enim laoreet, vel consectetur purus latoque penatibus et dis parturient.</p>
							</div>
					</div>
					<div class="col-md-4 col-sm-4 marb20">
						<div class="ftr-tle">
							<h4 class="white no-padding">Quick Links</h4>
						</div>
						<div class="info-sec">
							<ul class="quick-info">
								<li><a href="index.html"><i class="fa fa-circle"></i>Inicio</a></li>
								<li><a href="#service"><i class="fa fa-circle"></i>Especialidades</a></li>
								<li><a href="#contact"><i class="fa fa-circle"></i>Contáctenos</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 marb20">
						<div class="ftr-tle">
							<h4 class="white no-padding">Síguenos en</h4>
						</div>
						<div class="info-sec">
							<ul class="social-icon">
								<li class="bglight-blue"><i class="fa fa-facebook"></i></li>
								<li class="bgred"><i class="fa fa-google-plus"></i></li>
								<li class="bgdark-blue"><i class="fa fa-linkedin"></i></li>
								<li class="bglight-blue"><i class="fa fa-twitter"></i></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-line">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						© Copyright Medilab Theme. All Rights Reserved
                        <div class="credits">
                            <!--
                                All the links in the footer should remain intact.
                                You can delete the links only if you purchased the pro version.
                                Licensing information: https://bootstrapmade.com/license/
                                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Medilab
                            -->
                            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                        </div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--/ footer-->

    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="contactform/contactform.js"></script>

  </body>
</html>

