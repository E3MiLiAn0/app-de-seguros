<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="css/Login.css" rel="stylesheet">
    <title>Document</title>
</head>
<body class="fondo-login">

<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="home">AsegurApp</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="perfilUsuario">Perfil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="suscripcion">Suscripción</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="w-100 container-fluid  mt-5  rounded-3 bg-light" style="max-width: 1024px;">
    <div class="card card-body p-5 ">
        <div class="row">
            <div class="col text-end">

                <!-- Badge -->
                <div class="badge bg-danger">
                    Overdue
                </div>

            </div>
        </div> <!-- / .row -->

        <div class="row">
            <div class="col text-center">

                <!-- Logo -->
                <img src="assets/img/logo.svg" alt="..." class="img-fluid mb-4" style="max-width: 2.5rem;">

                <!-- Title -->
                <h2 class="mb-2">
                    Servicio de ${prestacion.usuarioAsistente.especialidad.descripcion}
                </h2>

                <!-- Text -->
                <p class="text-muted mb-6">
                    N° Factura: ${prestacion.id}
                </p>

            </div>
        </div> <!-- / .row -->

        <div class="row">
            <div class="col-12 col-md-6">

                <!-- Heading -->
                <h6 class="text-uppercase text-muted">
                    Usuario Solicitante<span class="badge bg-danger-soft">Danger</span>
                </h6>

                <!-- Text -->
                <p class="text-muted mb-4">
                    <strong class="text-body"> ${prestacion.usuarioSolicitante.nombre} ${prestacion.usuarioSolicitante.apellido}</strong> <br>
                    ${prestacion.usuarioSolicitante.email} <br>
                    Argentino <br>
                    ${prestacion.usuarioSolicitante.provincia.nombre}
                </p>
            </div>
            <div class="col-12 col-md-6 text-md-end">

                <!-- Heading -->
                <h6 class="text-uppercase text-muted">
                    Usuario Asistente
                </h6>

                <!-- Text -->
                <p class="text-muted mb-4">
                    <strong class="text-body">${prestacion.usuarioAsistente.nombre} ${prestacion.usuarioAsistente.apellido}</strong> <br>
                    ${prestacion.usuarioAsistente.email}<br>
                    Argentino <br>
                    ${prestacion.usuarioAsistente.provincia.nombre}
                </p>

            </div>
        </div> <!-- / .row -->

        <div class="row">
            <div class="col-12">

                <!-- Table -->
                <div class="table-responsive">
                    <table class="table my-4">
                        <thead>
                        <tr>
                            <th class="px-0 bg-transparent border-top-0">
                                <span class="h6">Description</span>
                            </th>
                            <th class="px-0 bg-transparent border-top-0">
                                <span class="h6">Hours</span>
                            </th>
                            <th class="px-0 bg-transparent border-top-0 text-end">
                                <span class="h6">Cost</span>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="px-0">
                                Custom theme development
                            </td>
                            <td class="px-0">
                                125
                            </td>
                            <td class="px-0 text-end">
                                $6,250
                            </td>
                        </tr>
                        <tr>
                            <td class="px-0">
                                Logo design
                            </td>
                            <td class="px-0">
                                15
                            </td>
                            <td class="px-0 text-end">
                                $750
                            </td>
                        </tr>
                        <tr>
                            <td class="px-0 border-top border-top-2">
                                <strong>Total amount due</strong>
                            </td>
                            <td colspan="2" class="px-0 text-end border-top border-top-2">
                                    <span class="h3">
                                        $7,000
                                    </span>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <hr class="my-3">

                /////////////////////////////////////////////////////
                <!-- Title -->
                <h2 class="text-uppercase">
                    Empezar affcad
                </h2>

                <!-- Text -->
                <div class="container-fluid kanban-container">
                    <div class="row">
                        <div class="col-md-6">

                            <!-- Card -->
                            <div class="card">
                                <div class="card-body">

                                    <!-- Category -->
                                    <div class="kanban-category">
                                        <c:if test="${prestacion.estado=='finalizado'}">

                                        <!-- Item -->
                                        <div class="kanban-item"><h4 class="text-uppercase">Califica el Servicio</h4>

                                                <%--@elvariable id="prestacion" type="ar.edu.unlam.tallerweb1.modelo.Prestacion"--%>
                                            <form:form action="clienteCalificaPrestacion" method="post" modelAttribute="prestacion">


                                                <p class="clasificacion">
                                                    <input id="radio1" type="radio" name="estrellas" value="5"><!--
                                              --><label class="labelFormCalificar" for="radio1">★</label><!--
                                              --><input id="radio2" type="radio" name="estrellas" value="4"><!--
                                              --><label class="labelFormCalificar" for="radio2">★</label><!--
                                              --><input id="radio3" type="radio" name="estrellas" value="3"><!--
                                              --><label class="labelFormCalificar" for="radio3">★</label><!--
                                              --><input id="radio4" type="radio" name="estrellas" value="2"><!--
                                              --><label class="labelFormCalificar" for="radio4">★</label><!--
                                              --><input id="radio5" type="radio" name="estrellas" value="1"><!--
                                              --><label class="labelFormCalificar" for="radio5">★</label>
                                                </p>
                                                <button type="submit" class="btn btn-primary">Calificar Prestacion</button>
                                            </form:form>
                                        </div>
                                        </c:if>

                                        <c:if test="${prestacion.estado=='activo'}">
                                            <%--@elvariable id="prestacion" type="ar.edu.unlam.tallerweb1.modelo.Prestacion"--%>
                                            <form:form action="finalizarPrestacion" method="post" modelAttribute="prestacion">
                                                <form:input type="hidden"  path="id" id="id" value="${prestacion.id}"/>
                                                <form:input type="hidden" path="estado" id="estado" value="${prestacion.estado}"/>


                                                <button type="submit" class="btn btn-primary">Finalizar Prestacion</button>
                                            </form:form>
                                        </c:if>
                                    </div>


                                </div>
                            </div>

                        </div>
                        <div class="col-md-6">

                            <!-- Card -->
                            <div class="card">
                                <div class="card-body">

                                    <!-- Category -->
                                    <div class="kanban-category">

                                        <!-- Item -->
                                        <div class="kanban-item">...</div>

                                    </div>

                                </div>
                            </div>

                        </div>
                    </div> <!-- / .row -->
                </div>

            </div>
        </div> <!-- / .row -->
    </div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
