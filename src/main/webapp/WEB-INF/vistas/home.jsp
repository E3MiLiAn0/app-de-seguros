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

    <title>AsegurAPP</title>
</head>
<body>

<header>
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
                        <a class="nav-link" href="login">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ir-a-registrarme">Registrarte</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="suscripcion">Suscripción</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<div class="w-100">
    <div class="fondo-login container-fluid px-2 h-100 w-100 d-flex justify-content-centerfondo-login container-fluid px-2 h-100 w-100 d-flex justify-content-center">
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-10 col-md-offset-3 col-sm-8 col-sm-offset-2">

            <section class="about" data-aos="fade-up">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-md-6 bg-danger d-none d-md-flex rounded-3 p-0">
                            <img src="imagenes/about.jpg" class="h-100 w-100 rounded-3" alt="">
                        </div>

                        <div class="col-12 col-md-6 p-5 pb-0 p-md-1 bg-white rounded-3">

                            <div class="text-center text-decoration-none text-dark fw-bold">
                                <h3>Sobre Nosotros</h3>
                            </div>

                            <br>
                            <br>

                            <div class="fst-italic">
                                <ul>
                                    <li><i class="bi bi-check2-circle"></i> Somos una compañía de seguros con más de 75
                                        años en el mercado acompañando a nuestros clientes, brindándoles tranquilidad y
                                        seguridad en todas las etapas de su vida.
                                    </li>
                                    <li><i class="bi bi-check2-circle"></i> Desde 1939 estamos construyendo una historia
                                        de cercanía y respaldo.
                                    </li>
                                    <li><i class="bi bi-check2-circle"></i> Hoy somos la aseguradora con mayor
                                        patrimonio neto de la Argentina.
                                    </li>
                                    <li><i class="bi bi-check2-circle"></i> Contamos con cobertura para cada una de tus
                                        necesidades.
                                    </li>
                                </ul>
                            </div>

                            <br>
                            <br>

                            <div class="text-center text-decoration-none text-dark fw-bold">
                                <p>
                                    Compará las opciones que te brinda AsegurAPP
                                </p>
                            </div>

                        </div>
                    </div>
                </div>
            </section>

            <br>
            <br>

            <section class="services">
                <div class="container">

                    <div class="row">
                        <div class="text-center text-decoration-none text-dark fw-bold">
                        <h3>Suscripcion Básica</h3>
                        </div>
                        <div class="card border-primary  col-md-3 col-lg-3 mb-3 " style="margin: 2.7em">
                            <div class="card-header text-primary fw-bold">
                                <i class="fas fa-truck-pickup"></i>Servicio de Grúa</div>
                            <div class="card-body text-dark">
                                <p class="card-text">Servicio de Auxilio de Grúas plancha para autos-Camionetas
                                    4x4-Combis y Autoelevadores las 24 Hs todo el año.</p>
                            </div>
                        </div>


                        <div class="card border-primary  col-md-3 col-lg-3 mb-3" style="margin: 2.7em">
                            <div class="card-header text-primary fw-bold">
                                <i class="fab fa-old-republic"></i></i>Asistencia Policial</div>
                            <div class="card-body text-dark">
                                <p class="card-text">Asistencia Policíal en caso de emergencia</p>
                            </div>
                        </div>

                        <div class="card border-primary  col-md-3 col-lg-3 mb-3" style="margin: 2.7em">
                            <div class="card-header text-primary fw-bold">
                                <i class="fas fa-ambulance"></i>Servicio Medico</div>
                            <div class="card-body text-dark">
                                <p class="card-text">Te ofrecemos un cuerpo médico que puede atenderte
                                    rápidamente de forma presencial</p>
                            </div>
                        </div>

                        <div class="text-center text-decoration-none text-dark fw-bold">
                        <h3>Suscripción Premium</h3>
                        </div>
                        <br>
                        <br>
                        <br>
                        <br>
                            <div class="card border-success  col-md-6 col-lg-3 mb-3" style="max-width: 18rem; ">
                                <div class="card-header text-success fw-bold">
                                    <i class="fas fa-wrench"></i>Servicio Mecanico
                                </div>
                                <div class="card-body text-dark">
                                    <p class="card-text">Encontra el profesional que se ajuste a las necesidades de tu vehiculo.</p>
                                </div>
                            </div>

                            <div class="card border-success  col-md-6 col-lg-3 mb-3" style="max-width: 18rem; ">
                                <div class="card-header text-success fw-bold">
                                    <i class="fas fa-tools"></i>Chofer</div>
                                <div class="card-body text-dark">
                                    <p class="card-text">Contrate un chófer privado para su comodidad, seguridad y en tiempo record ... calidad de servicio a prueba de una larga lista de clientes satisfechos.</p>
                                </div>
                            </div>

                            <div class="card border-success  col-md-6 col-lg-3 mb-3" style="max-width: 18rem; ">
                                <div class="card-header text-success fw-bold">
                                    <i class="fas fa-cogs"></i>Repuestos Livianos</div>
                                <div class="card-body text-dark">
                                    <p class="card-text">Nuestros socios cuentan con una flota de auxilio mecánico en todo el país para ayudarlo en todo tipo de incidentes</p>
                                </div>
                            </div>

                            <div class="card border-success  col-md-6 col-lg-3 mb-3" style="max-width: 18rem; ">
                                <div class="card-header text-success fw-bold">
                                    <i class="fas fa-balance-scale"></i>Asistencia Legal</div>
                                <div class="card-body text-dark">
                                    <p class="card-text">Asistencia legal en el momento ante un litigio.</p>
                                </div>
                            </div>

                    </div>
                </div>
            </section>
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
        <div class="footer-copyright text-center py-3"> 2021 Copyright: AsegurAPP
        </div>
    </div>
</footer>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>