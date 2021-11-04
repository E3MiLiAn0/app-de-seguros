<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">

		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
			  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link href="css/Login.css" rel="stylesheet">
	<title>Generar Denuncia</title>
	</head>
	<body class=" h-100">
	
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="login">AsegurApp</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						
						<li class="nav-item">
							<a class="nav-link" aria-current="page" href="traerEspecialidades">Contratar</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="perfilUsuario">Perfil</a>
						</li>
						<li class="nav-item">
							<a class="nav-link active" href="denunciarAsistente">Nueva Denuncia</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	<div class=" h-100 w-100">
		<div class="fondo-login container-fluid px-2 h-100 w-100 d-flex justify-content-centerfondo-login container-fluid px-2 h-100 w-100 d-flex justify-content-center">
			<div id="loginbox" style="margin-top:50px;" class="mainbox col-md-10 col-md-offset-3 col-sm-8 col-sm-offset-2">
		<h1>Bienvenido A SegurAPP</h1>

			<form action="" >
			<label for="listaPrestaciones">Est�s denunciando a:</label>
			Eric Cuevas
				<br>
				<label for="listaEspecialidadDesplegable">Seleccione motivo:</label> 
				<select name="listaEspecialidadDesplegable">
					<c:forEach items="${motivoDenuncias}" var="motivoDenuncias">
						<option value="${motivoDenuncias.id}">${motivoDenuncias.descripcion}</option>
					</c:forEach>
				</select><br>
				<label>Comentario: </label> 
				<textarea rows="4" cols="50"></textarea>
				
				<button class="btn btn-lg btn-primary btn-block" Type="Submit">Confirmar</button>
			</form>


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