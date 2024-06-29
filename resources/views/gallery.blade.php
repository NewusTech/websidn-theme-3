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
                                <a href="/layanan" class="nav-item nav-link fs-5"><b>Layanan</b></a>
                                <a href="/galleri" class="nav-item nav-link active fs-5"><b>Galeri</b></a>
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
        <div class="container-fluid bg-breadcrumb py-4" style="background: var(--bs-primary);">
            <div class="container text-center py-4">
                <h3 class="text-white display-3 mb-4">Galeri Kami</h1>
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a href="/" class="text-white">Beranda</a></li>
                    <li class="breadcrumb-item active text-white">Galeri</li>
                </ol>    
            </div>
        </div>
        <!-- Header End -->

        
        <!-- Gallery Start -->
        <div class="container-fluid gallery py-3">
            <div class="container py-3">
                <div class="text-center mx-auto mb-5" style="max-width: 800px;">
                    {{-- <p class="fs-4 text-uppercase text-primary">Our Gallery</p> --}}
                    <h1 class="display-6 mb-4">Mari Lihat Galeri Kami</h1>
                </div>
                <div class="tab-class text-center">
                    <ul class="nav nav-pills d-inline-flex justify-content-center mb-5">
                        <li class="nav-item">
                            <a class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill active" data-bs-toggle="pill" href="#tab-1">
                                <span class="text-dark" style="width: 150px;">All</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex py-2 mx-3 border border-primary bg-light rounded-pill" data-bs-toggle="pill" href="#tab-2">
                                <span class="text-dark" style="width: 150px;">Bridal Makeup</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill" data-bs-toggle="pill" href="#tab-3">
                                <span class="text-dark" style="width: 150px;">Special Occasion</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill" data-bs-toggle="pill" href="#tab-4">
                                <span class="text-dark" style="width: 150px;">Fashion Makeup</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill" data-bs-toggle="pill" href="#tab-5">
                                <span class="text-dark" style="width: 150px;">Photoshoot</span>
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        @foreach ($gallery as $galeri)
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="{{ asset('storage/' . $galeri->images->path) }}" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-secondary">{{ $galeri->texts->heading }}</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="{{ asset('storage/' . $galeri->images->path) }}" data-lightbox="Gallery-1" class="my-auto"><i class="fas fa-search-plus btn-primary btn-primary-outline-0 rounded-circle p-3"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        @foreach ($gallery as $galeri)
                                        @if ($galeri->images && ($galeri->texts->heading == 'Bridal Makeup'))
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="{{ asset('storage/' . $galeri->images->path) }}" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-secondary">{{ $galeri->texts->heading }}</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="{{ asset('storage/' . $galeri->images->path) }}" data-lightbox="Gallery-1" class="my-auto"><i class="fas fa-search-plus btn-primary btn-primary-outline-0 rounded-circle p-3"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        @endif
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-3" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        @foreach ($gallery as $galeri)
                                        @if ($galeri->images && ($galeri->texts->heading == 'Special Occasion'))
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="{{ asset('storage/' . $galeri->images->path) }}" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-secondary">{{ $galeri->texts->heading }}</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="{{ asset('storage/' . $galeri->images->path) }}" data-lightbox="Gallery-1" class="my-auto"><i class="fas fa-search-plus btn-primary btn-primary-outline-0 rounded-circle p-3"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        @endif
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-4" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        @foreach ($gallery as $galeri)
                                        @if ($galeri->images && ($galeri->texts->heading == 'Fashion Makeup'))
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="{{ asset('storage/' . $galeri->images->path) }}" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-secondary">{{ $galeri->texts->heading }}</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="{{ asset('storage/' . $galeri->images->path) }}" data-lightbox="Gallery-1" class="my-auto"><i class="fas fa-search-plus btn-primary btn-primary-outline-0 rounded-circle p-3"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        @endif
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-5" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        @foreach ($gallery as $galeri)
                                        @if ($galeri->images && ($galeri->texts->heading == 'Photoshoot'))
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="{{ asset('storage/' . $galeri->images->path) }}" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-secondary">{{ $galeri->texts->heading }}</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="{{ asset('storage/' . $galeri->images->path) }}" data-lightbox="Gallery-1" class="my-auto"><i class="fas fa-search-plus btn-primary btn-primary-outline-0 rounded-circle p-3"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        @endif
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- gallery End -->



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