<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Makeup Artist</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
         <!-- Meta Description -->
        <meta name="description" content="deskripsi">
        
        <!-- Meta Keywords -->
        <meta name="keywords" content="katakunci">
        
        <!-- Meta Author -->
        <meta name="author" content="author">
        
        <!-- Meta Robots -->
        <meta name="robots" content="index, follow">
        
        <!-- Open Graph Metadata -->
        <meta property="og:title" content="Contoh SEO Metadata untuk HTML, CSS, dan JavaScript">
        <meta property="og:description" content="Ini adalah contoh halaman yang mengoptimalkan metadata untuk SEO menggunakan HTML, CSS, dan JavaScript.">
        <meta property="og:image" content="URL_GAMBAR_THUMBNAIL">
        <meta property="og:url" content="URL_HALAMAN">
        <meta property="og:type" content="website">
        
        <!-- Twitter Card Metadata -->
        <meta name="twitter:card" content="summary_large_image">
        <meta name="twitter:title" content="Contoh SEO Metadata untuk HTML, CSS, dan JavaScript">
        <meta name="twitter:description" content="Ini adalah contoh halaman yang mengoptimalkan metadata untuk SEO menggunakan HTML, CSS, dan JavaScript.">
        <meta name="twitter:image" content="URL_GAMBAR_THUMBNAIL">
        <meta name="twitter:site" content="@UsernameTwitterKamu">
        
        <!-- Canonical Link -->
        <link rel="canonical" href="URL_HALAMAN">

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
                                <img src="{{ Storage::disk('s3')->url($logos->images->path) }}" class="img-fluid" alt="Image" style="height: 60px">
                            @else
                                Gambar tidak tersedia
                            @endif
                        @endforeach
                        <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                            <span class="fa fa-bars text-primary"></span>
                        </button>
                        <div class="collapse navbar-collapse bg-light py-1" id="navbarCollapse">
                            <div class="navbar-nav mx-auto border-top">
                                <a href="/" class="nav-item nav-link active fs-5"><b>Beranda</b></a>
                                <a href="/layanan" class="nav-item nav-link fs-5"><b>Layanan</b></a>
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

        <!-- Carousel Start -->
        <div class="container-fluid carousel-header px-0">
            <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-bs-target="#carouselId" data-bs-slide-to="0" class="active"></li>
                    <li data-bs-target="#carouselId" data-bs-slide-to="1"></li>
                    <li data-bs-target="#carouselId" data-bs-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    @foreach ($carousel as $index => $slider)
                    <div class="carousel-item active">
                        <img src="{{ Storage::disk('s3')->url($slider->path) }}" class="img-fluid" alt="Image">
                        <div class="carousel-caption">
                            <div class="p-3" style="max-width: 900px;">
                                <h4 class="text-primary text-uppercase mb-3">Makeup Artist & Beauty Stylist</h4>
                                <h1 class="display-2 text-capitalize text-dark mb-3">Elegant & Eksentrik</h1>           
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <!-- Carousel End -->

        <!-- About Start -->
        <div class="container-fluid bg-light about ">
            <div class="container ">
                <div class="row g-5 align-items-center">
                    @foreach ($about as $abouts)
                    <div class="col-lg-5">
                        <div class="video">
                            <img src="{{ Storage::disk('s3')->url($abouts->gambar) }}" class="img-fluid rounded my-2" alt="">

                            <button type="button" class="btn btn-play" data-bs-toggle="modal" data-src="{{ $abouts->video }}" data-bs-target="#videoModal">
                                <span></span>
                            </button>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <p class="fs-4 text-uppercase text-primary"><b>Tentang Kami</b></p>
                        <h1 class="display-5 mb-2">{{ $abouts->judul }}</h1>
                        <p class="mb-5">{{ $abouts->text }}
                        </p>
                        <a href="/tentang-kami" class="btn btn-primary btn-primary-outline-0 rounded-pill py-3 px-5">Read More</a>
                    </div> 
                    @endforeach
                </div>
            </div>
        </div>
        
        <!-- Modal Video -->
        <div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content rounded-0">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Youtube Video</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    @foreach ($about as $abouts)
                    <div class="modal-body">
                        <!-- 16:9 aspect ratio -->
                        <div class="ratio ratio-16x9">
                            <iframe width="560" height="315" src="{{ $abouts->video }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                            {{-- <iframe class="embed-responsive-item" src="https://youtu.be/sEhS83z3XRM?feature=shared" id="video" allowfullscreen allowscriptaccess="always"
                                allow="autoplay"></iframe> --}}
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        <!-- About End -->

        <!-- Services Start -->
        <div class="container-fluid bg-third services py-1">
            <div class="container py-3">
                <div class="mx-auto text-center mb-2" style="max-width: 800px;">
                    <p class="fs-4 text-uppercase text-center text-primary"><b>LAYANAN KAMI</b></p>
                    <h1 class="display-5">Makeup Artist</h1>
                </div>
                <div class="row g-4">
                    @foreach ($service as $layanan)
                    <div class="col-lg-6">
                        <div class="services-item bg-light border-4 border-end border-primary rounded p-4">
                            <div class="row align-items-center">
                                <div class="col-8">
                                    <div class="services-content text-start">
                                        <h3>{{ $layanan->judul }}</h3>
                                        <p>{{ $layanan->detail }}</p>
                                        <div class="text-center">
                                            <a href="/layanan" class="btn btn-primary btn-primary-outline-0 rounded-pill py-2 px-4 text-center">Read More</a>
                                        </div>
                                        
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="services-img d-flex align-items-center justify-content-center rounded">
                                        <img src="{{ Storage::disk('s3')->url($layanan->image) }}" class="img-fluid rounded" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        <!-- Services End -->

        <!-- Gallery Start -->
        <div class="container-fluid gallery bg-light py-3 mb-5">
            <div class="container py-3">
                <div class="text-center mx-auto mb-3" style="max-width: 800px;">
                    <p class="fs-4 text-uppercase text-primary"><b>Galeri Kami</b></p>
                    <h1 class="display-6 mb-2">Lihat Momen Yang Kami Abadikan</h1>
                </div>
                <div class="tab-class text-center">
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        @foreach ($gallery as $galeri)
                                        <div class="col-lg-3">
                                            <div class="gallery-img">
                                                <img class="img-fluid rounded w-100" src="{{ Storage::disk('s3')->url($galeri->images->path) }}" alt="">
                                                <div class="gallery-overlay p-4">
                                                    <h4 class="text-secondary">{{ $galeri->texts->heading }}</h4>
                                                </div>
                                                <div class="search-icon">
                                                    <a href="{{ Storage::disk('s3')->url($galeri->images->path) }}" data-lightbox="Gallery-1" class="my-auto"><i class="fas fa-search-plus btn-primary btn-primary-outline-0 rounded-circle p-3"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        @endforeach
                                
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                </div>
            </div>
        </div>
        <!-- gallery End -->


        <!-- Pricing Start -->
        <div class="container-fluid pricing py-2 mb-2"  >
            <div class="container py-3 ">
                <div class="mb-2" style="max-width: 800px;">
                    <p class="fs-4 text-uppercase  text-white"><b>PRICELIST</b></p>
                </div>
                <div class="owl-carousel pricing-carousel">
                    @foreach ($price as $prices)
                    <div class="pricing-item">
                        <div class="rounded pricing-content">
                            <div class="d-flex align-items-center justify-content-center bg-light rounded-top border-3 border-bottom border-primary p-3">
                                <h5 class="text-primary text-uppercase text-bold mt-1"><b>{{ $prices->judul }}</b></h5>
                            </div>
                            <div class="p-4" style="color: #ffffff"><b>
                                <p><i class="fa fa-check text-primary me-2"></i>{{ $prices->item1 }}</p>
                                <p><i class="fa fa-check text-primary me-2"></i>{{ $prices->item2 }}</p>
                                <p><i class="fa fa-check text-primary me-2"></i>{{ $prices->item3 }}</p>
                                <p><i class="fa fa-check text-primary me-2"></i>{{ $prices->item4 }}</p>
                                <p><i class="fa fa-check text-primary me-2"></i>{{ $prices->item5 }}</p>
                                <a href="/layanan" class="btn btn-primary btn-center btn-primary-outline-0 rounded-pill my-2 px-4">See More</a></b>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    
                </div>
            </div>
        </div>
        <!-- Pricing End -->


        <!-- Team Start -->
        <div class="container-fluid team bg-third py-2">
            <div class="container py-2">
                <div class="text-center mx-auto mb-3" style="max-width: 800px;">
                    <p class="fs-4 text-uppercase text-primary"><b>TEAM KAMI</b></p>
                    <h1 class="display-5 mb-2">Makeup Artist Specialist</h1>
                </div>
                <div class="row g-4">
                    @foreach ($team as $tim)
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="team-item">
                            <div class="team-img rounded-top">
                                <img src="{{ Storage::disk('s3')->url($tim->image) }}" class="img-fluid w-100 rounded-top bg-light" alt="">
                            </div>
                            <div class="team-text rounded-bottom text-center p-4">
                                <h3 class="text-white">{{ $tim->judul }}</h3>
                                <p class="mb-0 text-white">{{ $tim->detail }}</p>
                            </div>
                        </div>
                    </div>             
                    @endforeach
                    
                </div>
            </div>
        </div>
        <!-- Team End -->


        <!-- Testimonial Start -->
        <div class="container-fluid testimonial py-2" style="background: var(--bs-pink);">
            <div class="container py-4">
                <div class="text-center mx-auto mb-2" style="max-width: 800px;">
                    <p class="fs-4 text-uppercase text-white">Testimonial</p>
                    <h1 class="display-6 mb-2 text-white">Apa Kata Klien Kami!</h1>
                </div>
                <div class="owl-carousel testimonial-carousel">
                    @foreach ($testimoni as $review)
                    <div class="testimonial-item rounded p-4">
                        <div class="row">
                            <div class="col-4">
                                <div class="d-flex flex-column mx-auto">
                                    <div class="rounded-circle mb-4" style="border: dashed; border-color: var(--bs-white);">
                                        <img src="{{ Storage::disk('s3')->url($review->image) }}" class="img-fluid rounded-circle" alt="">
                                    </div>
                                    <div class="text-center">
                                        <h4 class="mb-2 text-primary">{{ $review->name }}</h4>
                                        <p class="m-0 text-white">{{ $review->job }}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-8">
                                <div class="position-absolute" style="top: 20px; right: 25px;">
                                    <i class="fa fa-quote-right fa-2x text-secondary"></i>
                                </div>
                                <div class="testimonial-content">
                                    <p class="fs-5 mb-0 text-white">{{ $review->description }}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        <!-- Testimonial End -->
        <!-- Google Maps Section -->
        @foreach ($contact as $kontak)
            <div class="map-container">
                <iframe src="{{ $kontak->map }}" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                {{-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1547438.2367710308!2d-75.95095278116435!3d40.75453936473234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259a6760bd525%3A0x457b22457e93a4ac!2sLove%20Studios%20Nyc%20Photo%20%26%20Video%20Studio!5e0!3m2!1sid!2sid!4v1718360984904!5m2!1sid!2sid" width="1280" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe> --}}
            </div>
        @endforeach

        <!-- Footer Start -->
        <div class="container-fluid footer py-2">
            <div class="container py-2">
                <div class="row g-5">
                    <div class="col-lg-4 col-md-6 col-sm-12 justify-content-start">
                        <div class="footer-item">
                            @foreach ($logo as $logos)
                                @if ($logos->images)
                                    <img src="{{ Storage::disk('s3')->url($logos->images->path) }}" class="img-fluid" alt="Image" style="height: 60px">
                                @else
                                    Gambar tidak tersedia
                                @endif
                            @endforeach
                            @foreach ($about as $abouts)
                            <p class="text-white">{{ $abouts->text }}</p>
                            @endforeach
                            
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

    <!-- SEO Structur Data -->
    <script type="application/ld+json">
        {
          "@context": "https://schema.org",
          "@type": "Organization",
          "name": "Nama Organisasi",
          "url": "https://www.namaorganisasi.com",
          "logo": "https://www.namaorganisasi.com/logo.png",
          "contactPoint": {
            "@type": "ContactPoint",
            "telephone": "+1-800-555-1212",
            "contactType": "Customer Service"
          },
          "sameAs": [
            "https://www.facebook.com/namaorganisasi",
            "https://www.twitter.com/namaorganisasi",
            "https://www.instagram.com/namaorganisasi"
          ]
        }
    </script>        
    </body>
</html>