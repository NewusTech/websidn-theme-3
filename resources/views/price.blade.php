<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Glamour Glow</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=PT+Serif:wght@400;700&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="{{ asset('lib/animate/animate.min.css') }}" rel="stylesheet">
    <link href="{{ asset('lib/lightbox/css/lightbox.min.css') }}" rel="stylesheet">
    <link href="{{ asset('lib/owlcarousel/assets/owl.carousel.min.css') }}" rel="stylesheet">


    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
</head>

    <body>

        <!-- Spinner Start -->
        <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" role="status"></div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar start -->
        <div class="container-fluid sticky-top px-0">           
            <div class="container-fluid bg-light">
                <div class="container px-0">
                    <nav class="navbar navbar-light navbar-expand-lg">
                        <a href="index.html" class="navbar-brand">
                            <h1 class="text-primary display-8">Glamour Glow</h1>
                        </a>
                        <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                            <span class="fa fa-bars text-primary"></span>
                        </button>
                        <div class="collapse navbar-collapse bg-light py-1" id="navbarCollapse">
                            <div class="navbar-nav mx-auto border-top">
                                <a href="/" class="nav-item nav-link fs-5">Home</a>
                                <a href="/service" class="nav-item nav-link fs-5">Services</a>
                                <a href="/price" class="nav-item nav-link active fs-5">Price</a>
                                <a href="/gallery" class="nav-item nav-link fs-5">Gallery</a>
                                <a href="/portfolio" class="nav-item nav-link fs-5">Portfolio</a>
                                <a href="/about" class="nav-item nav-link fs-5">About</a> 
                                <a href="/blog" class="nav-item nav-link fs-5">Blog</a>
                                
                            </div>
                            <div class="d-flex align-items-center flex-nowrap pt-xl-0">
                                <button class="btn-search btn btn-primary btn-primary-outline-0 rounded-circle btn-lg-square" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search"></i></button>
                                <a href="/contact" class="btn btn-primary btn-primary-outline-0 rounded-pill py-3 px-4 ms-4">Contact Us</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar End -->


        <!-- Modal Search Start -->
        <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-fullscreen">
                <div class="modal-content rounded-0">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Search by keyword</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body d-flex align-items-center">
                        <div class="input-group w-75 mx-auto d-flex">
                            <input type="search" class="form-control p-3" placeholder="keywords" aria-describedby="search-icon-1">
                            <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Search End -->



        <!-- Header Start -->
        <div class="container-fluid bg-breadcrumb py-4" style="background: var(--bs-primary);">
            <div class="container text-center py-4">
                <h3 class="text-white display-3 mb-4">Our Price Plan</h1>
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a href="/" class="text-white">Home</a></li>
                    <li class="breadcrumb-item active text-white">Price</li>
                </ol>    
            </div>
        </div>
        <!-- Header End -->

        
        <!-- Pricing Start -->
        <div class="container-fluid pricing py-5"  >
            <div class="container py-4">
                <div class="owl-carousel pricing-carousel">
                    <div class="pricing-item">
                        <div class="rounded pricing-content">
                            <div class="d-flex align-items-center justify-content-center bg-light rounded-top border-3 border-bottom border-primary p-3">
                                <h5 class="text-primary text-uppercase text-bold mt-1">Basic Package</h5>
                            </div>
                            <div class="p-4"><b>
                                <p><i class="fa fa-check text-primary me-2"></i>Consultation Makeup</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Trial Makeup</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Face Treatment</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Hair Styling</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Touch-Up</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Skin Care</p>
                                <a href="/price" class="btn btn-primary btn-primary-outline-0 rounded-pill my-2 px-4">Order</a></b>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-item">
                        <div class="rounded pricing-content">
                            <div class="d-flex align-items-center justify-content-center bg-light rounded-top border-3 border-bottom border-primary p-3">
                                <h5 class="text-primary text-uppercase text-bold mt-1">Family Package</h5>
                            </div>
                            <div class="p-4"><b>
                                <p><i class="fa fa-check text-primary me-2"></i>Consultation Makeup</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Trial Makeup</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Face Treatment</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Hair Styling</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Touch-Up</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Skin Care</p>
                                <a href="/price" class="btn btn-primary btn-primary-outline-0 rounded-pill my-2 px-4">Order</a></b>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-item">
                        <div class="rounded pricing-content">
                            <div class="d-flex align-items-center justify-content-center bg-light rounded-top border-3 border-bottom border-primary p-3">
                                <h5 class="text-primary text-uppercase text-bold mt-1">VIP Package</h5>
                            </div>
                            <div class="p-4"><b>
                                <p><i class="fa fa-check text-primary me-2"></i>Consultation Makeup</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Trial Makeup</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Face Treatment</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Hair Styling</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Touch-Up</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Skin Care</p>
                                <a href="/price" class="btn btn-primary btn-primary-outline-0 rounded-pill my-2 px-4">Order</a></b>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-item">
                        <div class="rounded pricing-content">
                            <div class="d-flex align-items-center justify-content-center bg-light rounded-top border-3 border-bottom border-primary p-3">
                                <h5 class="text-primary text-uppercase text-bold mt-1">Most Package</h5>
                            </div>
                            <div class="p-4"><b>
                                <p><i class="fa fa-check text-primary me-2"></i>Consultation Makeup</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Trial Makeup</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Face Treatment</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Hair Styling</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Touch-Up</p>
                                <p><i class="fa fa-check text-primary me-2"></i>Skin Care</p>
                                <a href="/price" class="btn btn-primary btn-primary-outline-0 rounded-pill my-2 px-4">Order</a></b>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Pricing End -->



        <!-- Footer Start -->
        <div class="container-fluid footer py-2">
            <div class="container py-2">
                <div class="row g-5">
                    <div class="col-lg-4 col-md-6 col-sm-12 justify-content-start">
                        <div class="footer-item">
                            <h4 class="mb-4 text-white">Glamour Glow</h4>
                            <p class="text-white">Dolor amet sit justo amet elitr clita ipsum elitr est.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in tempor dui, non consectetur enim.</p>
                            
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 justify-content-end">
                        <div class="footer-item d-flex flex-column">
                            <h4 class="mb-4 text-white">Follow Us</h4>
                            <a href=""><i class="fas fa-angle-right me-2"></i> Whatsapp</a>
                            <a href=""><i class="fas fa-angle-right me-2"></i> Instagram</a>
                            <a href=""><i class="fas fa-angle-right me-2"></i> Tiktok</a>
                            <a href=""><i class="fas fa-angle-right me-2"></i> Twitter</a>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->



        <!-- Copyright Start -->
        <div class="container-fluid copyright py-2">
            <div class="container">
                <div class="row g-4 align-items-center">
                    <div class="col-md-4 text-center text-md-start mb-md-0">
                        <span class="text-light"><a href="#"><i class="fas fa-copyright text-light me-2"></i>Your Site Name</a>, All right reserved.</span>
                    </div>
                    <div class="col-md-4">
                        
                    </div>
                    <div class="col-md-4 text-center text-md-end text-white">
                        Designed By <a class="border-bottom" href="https://websidn.com">Websidn</a><br>Distributed By <a class="border-bottom" href="">Newus Technology</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright End -->



        <!-- Back to Top -->
        {{-- <a href="#" class="btn btn-primary btn-primary-outline-0 btn-md-square rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>    --}}
        <a href="https://wa.me/628123456789?text=Halo,%20saya%20tertarik%20dengan%20produk%20Anda." class="whatsapp-sticky">
            <i class="fab fa-whatsapp"></i>
        </a>
        
        <!-- JavaScript Libraries -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="{{ asset('lib/wow/wow.min.js') }}"></script>
        <script src="{{ asset('lib/easing/easing.min.js') }}"></script>
        <script src="{{ asset('lib/waypoints/waypoints.min.js') }}"></script>
        <script src="{{ asset('lib/counterup/counterup.min.js') }}"></script>
        <script src="{{ asset('lib/lightbox/js/lightbox.min.js') }}"></script>
        <script src="{{ asset('lib/owlcarousel/owl.carousel.min.js') }}"></script>
    
        <!-- Template Javascript -->
        <script src="{{ asset('js/main.js') }}"></script>
    </body>

</html>