<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Makeup Artist</title>
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
                        @foreach ($logo as $logos)
                            @if ($logos->images)
                                <img src="{{ asset('storage/' . $logos->images->path) }}" class="img-fluid" alt="Image" style="height: 60px">
                            @else
                                Gambar tidak tersedia
                            @endif
                        @endforeach
                        <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                            <span class="fa fa-bars text-primary"></span>
                        </button>
                        <div class="collapse navbar-collapse bg-light py-1" id="navbarCollapse">
                            <div class="navbar-nav mx-auto border-top">
                                <a href="/" class="nav-item nav-link fs-5"><b>Beranda</b></a>
                                <a href="/layanan" class="nav-item nav-link active fs-5"><b>Layanan</b></a>
                                <a href="/galleri" class="nav-item nav-link fs-5"><b>Galeri</b></a>
                                <a href="/portofolio" class="nav-item nav-link fs-5"><b>Portofolio</b></a>
                                <a href="/tentang-kami" class="nav-item nav-link fs-5"><b>Tentang Kami</b></a> 
                                <a href="/artikel" class="nav-item nav-link fs-5"><b>Artikel</b></a>
                            </div>
                            <div class="d-flex align-items-center flex-nowrap pt-xl-0">
                                <a href="/kontak-kami" class="btn btn-primary btn-primary-outline-0 rounded-pill py-3 px-4 ms-4">Hubungi Kami</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar End -->

        <!-- Header Start -->
        <div class="container-fluid bg-breadcrumb py-2 "style="background: var(--bs-primary);">
            <div class="container text-center py-2">
                <h3 class="text-white display-3 ">Portofolio</h1>
            </div>
        </div>
        <!-- Header End -->

        
        <!-- Services Start -->
        <div class="container-fluid services bg-light py-3">
            <div class="container py-3">
                <div class="row justify-content-between wow bounceInUp" data-wow-delay="0.1s">
                    @foreach ($file_portfolio as $file_portofolios)
                    <div class="col-lg-4 col-md-6 mb-4 px-4">
                        <div class="card" >
                            {{-- <img src="{{ asset('storage/' . $portofolios->image) }}" class="card-img-top" alt="..."> --}}
                            <div class="card-body text-dark text-center">
                              <h4 class="card-title mb-3"><b>Portofolio {{ $loop->iteration }}</b></h4>
                              {{-- <p class="card-text">sdkk</p> --}}
                              <a href="{{ asset('storage/' . $file_portofolios->path) }}" class="btn btn-primary w-100 text-white">Download</a>
                            </div>
                        </div>
                    </div> 
                    @endforeach
                    
                </div>
            </div>
        </div>
        <!-- Services End -->

        
        <!-- Footer Start -->
        <div class="container-fluid footer py-2">
            <div class="container py-2">
                <div class="row g-5">
                    <div class="col-lg-4 col-md-6 col-sm-12 justify-content-start">
                        <div class="footer-item">
                            @foreach ($logo as $logos)
                                @if ($logos->images)
                                    <img src="{{ asset('storage/' . $logos->images->path) }}" class="img-fluid" alt="Image" style="height: 60px">
                                @else
                                    Gambar tidak tersedia
                                @endif
                            @endforeach
                            <p class="text-white">Dolor amet sit justo amet elitr clita ipsum elitr est.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in tempor dui, non consectetur enim.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 justify-content-end">
                        @foreach ($contact as $kontak)
                        <div class="footer-item d-flex flex-column">
                            <h4 class="mb-4 my-4 text-white">Follow Us</h4>
                            <a href="https://wa.me/{{ $kontak->whatsapp }}"><i class="fas fa-angle-right me-2"></i> Whatsapp</a>
                            <a href="{{ $kontak->instagram }}"><i class="fas fa-angle-right me-2"></i> Instagram</a>
                            <a href="{{ $kontak->tiktok }}"><i class="fas fa-angle-right me-2"></i> Tiktok</a>
                            <a href="{{ $kontak->youtube }}"><i class="fas fa-angle-right me-2"></i> Youtube</a>
                        </div>
                        @endforeach
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
        @foreach ($contact as $kontak)
            <a href="https://wa.me/{{ $kontak->whatsapp }}?text=Halo,%20saya%20tertarik%20dengan%20layanan%20Anda." class="whatsapp-sticky">
                <i class="fab fa-whatsapp"></i>
            </a>
        @endforeach
        
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