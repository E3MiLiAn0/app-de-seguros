<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
	<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
			  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link href="css/Login.css" rel="stylesheet">
		
		<script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=true"></script>
        <script type="text/javascript">
            function mostrar_mapa(centinela){
                //Ubicacion inicial del mapa.
                var ubicacion = new google.maps.LatLng(-34.666991893913085, -58.56839056121045); //Latitud y Longitud
                //Parametros Iniciales
                var opciones={zoom:14, //acercamiento
                    center: ubicacion,
                    mapTypeId: google.maps.MapTypeId.ROADMAP //Las posibles opciones son ROADMAP/SATELLITE/HYBRID/TERRA                    
                };
            
                //Creacion del mapa
                var map = new google.maps.Map(document.getElementById("mapa"),opciones);
                
                
              //recuperar ubicacion donde hago click
                var iw = new google.maps.InfoWindow(
                            {content: 'verifique su ubicacion', 
                             position: ubicacion});
                iw.open(map);
                // configurar evento click sobre el mapa
                map.addListener('click', function(mapsMouseEvent) {                 
                  iw.close();
                  iw = new google.maps.InfoWindow({position: mapsMouseEvent.latLng});
                  iw.setContent(mapsMouseEvent.latLng.toString());
                  iw.open(map);
                });
                

                if (centinela==1){
                    //Colocar una marca sobre el Mapa
                    mi_ubicacion = new google.maps.Marker({
                       position: new google.maps.LatLng(position),//PosiciÃ³n de la marca
                       icon: 'ubicacion.png', //Imagen que aparecerÃ¡ en la marca, debe estar en el server
                       map: map, //Mapa donde estarÃ¡ la marca
                       title: 'Confirmar mi ubicacion' //TÃ­tulo all hacer un mouseover
                    });

                    //Mostrar InformaciÃ³n al hacer click en la marca
                    var infowindow = new google.maps.InfoWindow({
                        content: 'establecer ubicacion'
                    });

                    google.maps.event.addListener(mi_ubicacion, 'click',function(){
                        //Calling the open method of the InfoWindow
                       infowindow.open(map, mi_ubicacion);
                    });
                };
            }  

        </script>       
		<title>Busqueda Prestadores</title>
	</head>
	<body onload="mostrar_mapa(0)" >

	<header>
		<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="home">AsegurApp</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item">
                        	<a class="nav-link" aria-current="page" href="home">Home</a>
                    	</li>
						<li class="nav-item">
							<a class="nav-link active" aria-current="page" href="traerEspecialidades">Contratar</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="perfilUsuario">Perfil</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="suscripcion">Suscripción</a>
						</li>

                   		<form:form action="cerrarSesion" method="POST">
                       		<button >
                           		cerrarSesion
                       		</button>
               			</form:form>

					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div class=" h-100 w-100" >
		<div class="fondo-login container-fluid px-2 h-100 w-100 d-flex justify-content-centerfondo-login container-fluid px-2 h-100 w-100 d-flex justify-content-center">
			<div id="loginbox" style="margin-top:50px;" class="mainbox col-md-10 col-md-offset-3 col-sm-8 col-sm-offset-2">

		<h1 style="text-align: center">Bienvenido a AsegurAPP</h1>

			<div class="container">
				<div class="row">
				<div class="card border-primary col-md-3 col-lg-3 mb-3" style="margin: 2.7em">
					<form action="usuarioEspecialidadElegida" >
					<div class="card-header text-center fw-bold"><label for="listaEspecialistas">Servicios</label>
					</div>
					<div class="card-body text-primary">
						<i class="fab fa-stripe-s colorIconoLogin"></i> Seleccione el servicio
						<br>
						<br>
						<select name="usuarioEspecialidades">
							<c:forEach items="${especialidades}" var="especialidad">
								<option value="${especialidad.id}">${especialidad.descripcion}</option>
							</c:forEach>
						</select>
						<br>
						<br>
						<br>
						<br>
						<button class="fondo-login rounded-3 btn btn-primary border-0 w-100 shadow-sm " Type="Submit">Confirmar</button>
					</div>
					</form>
				</div>

				<div class="card border-primary col-md-3 col-lg-3 mb-3" style="margin: 2.7em">
					<form action="usuarioProvinciaElegida" >
						<div class="card-header text-center fw-bold"><label for="usuariosPorProvincia">Provincias</label>
						</div>
						<div class="card-body text-primary">
							<i class="fas fa-map-marker-alt colorIconoLogin"></i> Seleccione su provincia
							<br>
							<br>
							<select name="usuarioProvincia">
								<c:forEach items="${provincias}" var="provincia">
									<option value="${provincia.id}">${provincia.nombre}</option>
								</c:forEach>
							</select>
							<br>
							<br>
							<br>
							<br>
							<button class="fondo-login rounded-3 btn btn-primary border-0 w-100 shadow-sm " Type="Submit">Confirmar</button>

						</div>
					</form>
				</div>


				<div class="card border-primary col-md-3 col-lg-3 mb-3" style="margin: 2.7em">
					<form action="especialidadElegida" >
						<div class="card-header text-center fw-bold"><label for="listaEspecialidadDesplegable">Servicios y Provincias</label>
						</div>
						<div class="card-body text-primary">
							<i class="fab fa-stripe-s colorIconoLogin"></i> <i class="fas fa-map-marker-alt colorIconoLogin"></i> Seleccione los parametros
							<br>
							<br>
							<select name="listaEspecialidadDesplegable">
								<c:forEach items="${especialidades}" var="especialidad">
									<option value="${especialidad.id}">${especialidad.descripcion}</option>
								</c:forEach>
							</select>
							<br>
							<br>
							<select name="listaProvinciaDesplegable">
								<c:forEach items="${provincias}" var="provincia">
									<option value="${provincia.id}">${provincia.nombre}</option>
								</c:forEach>
							</select>
							<br>
							<br>
							<button class="fondo-login rounded-3 btn btn-primary border-0 w-100 shadow-sm " Type="Submit">Confirmar</button>

						</div>
					</form>
				</div>
				</div>
				</div>

				<h3 style="text-align: center">Establecer mi ubicacion real <i class="fas fa-arrow-circle-down"></i></h3><br>

				<div class="container">
					<div class="row">
						<div class="col-12 " style="margin-left: 15em;margin-right: 15em">
							<div id="mapa" style="width: 600px; height: 280px; border: 3px groove #006600;"></div><br>
							<div style="margin-left: 12em; margin-right: 15em">
		            		<input class="btn btn-dark btn-sm" type="button" value="Mi ubicación" onclick="mostrar_mapa(1)"/>
		            		<input class="btn btn-dark btn-sm"  type="button" value="Limpiar ubicación" onclick="mostrar_mapa(0)"/>
							</div>
						</div>
					</div>
				</div>
				<br>
				<br>
				<br>
			</div>
		</div>
	</div>

	<footer class="page-footer font-small color-light bg-dark text-light">

		<div>
			<div class="container">

				<div class="col-md-6 col-lg-7 text-center text-md-right">

					<a class="fb-ic">
						<i class="fab fa-facebook-f white-text mr-4"> </i>
					</a>

					<a class="tw-ic">
						<i class="fab fa-twitter white-text mr-4"> </i>
					</a>

					<a class="gplus-ic">
						<i class="fab fa-google-plus-g white-text mr-4"> </i>
					</a>

					<a class="li-ic">
						<i class="fab fa-linkedin-in white-text mr-4"> </i>
					</a>

					<a class="ins-ic">
						<i class="fab fa-instagram white-text"> </i>
					</a>

				</div>


			</div>

		</div>
		</div>


		<div class="container text-center text-md-left mt-5">


			<div class="row mt-3">


				<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

					<h6 class="text-uppercase font-weight-bold">Acceso directo</h6>
					<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
					<p>
						<a href="#!">Login</a>
					</p>
					<p>
						<a href="#!">Registro</a>
					</p>

					<p>
						<a href="#!">Ayuda</a>
					</p>

				</div>

				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

					<h6 class="text-uppercase font-weight-bold">Contacto</h6>
					<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
					<p>
						<i class="fas fa-home mr-3"></i> calle Siempre viva 742, Springfield</p>
					<p>
						<i class="fas fa-envelope mr-3"></i> info@asegurapp.com</p>
					<p>
						<i class="fas fa-phone mr-3"></i> +011 4444-4444 </p>

				</div>

			</div>
			<div class="footer-copyright text-center py-3">� 2021 Copyright: AsegurAPP
			</div>
		</div>

	</footer>
	</body>
</html>





