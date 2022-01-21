<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rooms</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Taviraj:300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="assets2/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="assets2/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="assets2/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="assets2/css/linearicons.css" type="text/css">
    <link rel="stylesheet" href="assets2/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="assets2/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="assets2/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="assets2/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="assets2/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="assets2/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header-section other-page">
        <div class="container-fluid">
            <div class="inner-header">
                <div class="logo">
                    <a href="./index.html"><img src="assets2/img/logo.png" alt=""></a>
                </div>
                <div class="top-widget">
                    <div class="top-info address">
                        <img src="assets2/img/placeholder.png" alt="">
                        <span>1525 Boring Lane, Los <br />Angeles, CA</span>
                    </div>
                    <div class="top-info phone-num">
                        <img src="assets2/img/phone.png" alt="">
                        <span>+1 (603)535-4592</span>
                    </div>
                </div>
                <div class="container">
                    <nav class="main-menu mobile-menu">
                        <ul>
                            <li><a href="./home.jsp">Home</a></li>
                            <li><a href="./about-us.html">About</a></li>
                            <li><a href="./rooms.jsp">Rooms</a></li>
                            <li><a href="#">Facilities</a>
                                <ul class="drop-menu">
                                    <li><a href="#">Junior Suit</a></li>
                                    <li><a href="#">Double Room</a></li>
                                    <li><a href="#">Senior Suit</a></li>
                                    <li><a href="#">Single Room</a></li>
                                </ul>
                            </li>
                            <li><a href="./news.html">News</a></li>
                            <li><a href="./contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </div>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Hero Section Begin -->
    <section class="hero-section set-bg" data-setbg="assets2/img/rooms-bg.jpg">
        <div class="hero-text">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1>Rooms</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Rooms Section Begin -->
    <section class="room-section spad" id="section">
    </section>
    
     <section class="contact-section spad" id="reserver">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="contact-form">
                        <h5>Reservation form</h5>
                        <form id="form" >
                            <div class="row">
                                <div class="col-lg-12">
                                   
                                    
                                </div>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                     <p>Check in</p>
                                        <input type="date" placeholder="Check in" id="datedebut">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="input-group phone-num">
                                    	<p>Check out</p>
                                        <input type="date" placeholder="Check out" id="datefin">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                   <div class="input-group ">
                                        <input type="text" placeholder="chambre" id="chambre" disabled>
                                    </div>
                                </div>
                               
                                <div class="col-lg-12">
                                    <button type="submit">Reserver <i class="lnr lnr-arrow-right"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Rooms Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-logo">
                        <a href="#"><img src="assets2/img/logo.png" alt=""></a>
                    </div>
                </div>
            </div>
            <div class="row pb-50">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-footer-widget">
                        <h5>Location</h5>
                        <div class="widget-text">
                            <i class="lnr lnr-map-marker"></i>
                            <p>1525 Boring Lane, <br />Los Angeles, CA</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-footer-widget">
                        <h5>Reception</h5>
                        <div class="widget-text">
                            <i class="lnr lnr-phone-handset"></i>
                            <p>+1 (603)535-4592</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-footer-widget">
                        <h5>Shuttle Service</h5>
                        <div class="widget-text">
                            <i class="lnr lnr-phone-handset"></i>
                            <p>+1 (603)535-4592</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-footer-widget">
                        <h5>Restaurant</h5>
                        <div class="widget-text">
                            <i class="lnr lnr-phone-handset"></i>
                            <p>+1 (603)535-4592</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-area">
            <div class="container">
                <div class="copyright-text"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
                <div class="privacy-links">
                    <a href="#">Privacy Policy</a>
                    <a href="#">Photo Requests</a>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="assets2/js/jquery-3.3.1.min.js"></script>
    <script src="assets2/js/bootstrap.min.js"></script>
    <script src="assets2/js/jquery.magnific-popup.min.js"></script>
    <script src="assets2/js/jquery-ui.min.js"></script>
    <script src="assets2/js/jquery.nice-select.min.js"></script>
    <script src="assets2/js/jquery.slicknav.js"></script>
    <script src="assets2/js/owl.carousel.min.js"></script>
    <script src="assets2/js/main.js"></script>
      <script type="text/javascript" src="scriptjs/rooms.js"></script>

</body>
</html>