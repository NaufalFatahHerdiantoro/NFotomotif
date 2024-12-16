<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title><?= $judul; ?></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="<?= base_url('assets/front/'); ?>site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="<?= base_url('assets/front/'); ?>assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>assets/css/ticker-style.css">
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>assets/css/flaticon.css">
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>assets/css/slicknav.css">
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>assets/css/animate.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>assets/css/magnific-popup.css">
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>assets/css/themify-icons.css">
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>assets/css/slick.css">
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>assets/css/nice-select.css">
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>assets/css/style.css">
</head>

<body>
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/logo.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start-->
    <header>
        <!-- Header Start -->
        <div class="header-area">
            <div class="main-header ">
                <div class="header-top black-bg d-none d-sm-block" style="padding: 30px 0;">
                    <div class="container">
                        <div class="col-xl-12">
                            <div class="row d-flex justify-content-between align-items-center">
                                <div class="header-info-left">
                                    <ul>
                                        <li class="title" style="font-size: 28px; font-weight: bold;">
                                            <span class="flaticon-energy"><?= $konfig->judul_website; ?></span> 
                                        </li>
                                        <li style="font-size: 28px;">Terpercaya</li>
                                    </ul>
                                </div>
                                <div class="header-info-right">
                                    <ul class="header-date">
                                        <li style="font-size: 22px;">
                                            <span class="flaticon-calendar"></span> +6285187084248
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- caraousel -->
                    <div class="container-fluid bg-primary mb-12">
                        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px">
                            <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <?php $no = 1;
                                    foreach ($caraousel as $aa) { ?>
                                        <div class="carousel-item <?php if ($no == 1) {
                                                                        echo 'active';
                                                                    } ?>">
                                            <img class="d-block w-100" src="<?= base_url('assets/upload/caraousel/' . $aa['foto']) ?>">
                                        </div>
                                    <?php $no++;
                                    } ?>
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleSlidesOnly" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleSlidesOnly" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="header-mid gray-bg">
                        <div class="container">
                            <div class="row d-flex align-items-center">
                                <!-- Logo -->
                                <div class="col-xl-3 col-lg-3 col-md-3 d-none d-md-block">
                                    <div class="logo">
                                        <a href="index.html"><img src="assets/img/logo/logo.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="col-xl-9 col-lg-9 col-md-9">
                                    <div class="header-banner f-right ">
                                        <img src="assets/img/gallery/header_card.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="header-bottom header-sticky">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-xl-8 col-lg-8 col-md-12 header-flex">
                                    <!-- sticky -->
                                    <div class="sticky-logo">
                                        <a href="index.html"><img src="assets/img/logo/logo.png" alt=""></a>
                                    </div>
                                    <!-- Main-menu -->
                                    <div class="main-menu d-none d-md-block">
                                        <nav>
                                            <ul id="navigation">
                                                <li><a href="<?= base_url() ?>">Home</a></li>
                                                <?php foreach ($kategori as $kate) { ?>
                                                    <li> <a href="<?= base_url('home/kategori/' . $kate['id_kategori']) ?>" class="nav-item nav-link">
                                                            <?= $kate['nama_kategori'] ?>
                                                        </a>
                                                    <?php } ?>
                                                    </li>
                                                    <li><a href="<?= base_url('auth') ?>">Login</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-4">
                                    <div class="header-right f-right d-none d-lg-block">
                                        <!-- Heder social -->
                                        <ul class="header-social">
                                            <li><a href="<?= $konfig->facebook; ?>"><i class="fab fa-facebook-f"></i></a></li>
                                            <li><a href="<?= $konfig->instagram; ?>"><i class="fab fa-instagram"></i></a></li>
                                            <li><a href="mailto:<?= $konfig->email; ?>"><i class="fas fa-envelope"></i></a></li>
                                            <li><a href="https://wa.me/<?= $konfig->no_wa; ?>"><i class="fab fa-whatsapp"></i></a></li>
                                        </ul>

                                        <!-- Mobile Menu -->
                                        <div class="col-12">
                                            <div class="mobile_menu d-block d-md-none"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Header End -->
    </header>
    <!--================Blog Area =================-->
    <section class="blog_area section-padding">
        <div class="container">
            <div class="row">
                <?php foreach ($konten as $uu) { ?>
                    <div class="col-lg-4 col-md-6 mb-5">
                        <article class="blog_item">
                            <div class="card border-0 shadow-sm mb-2">
                                <!-- Ensure consistent height and object-fit for images -->
                                <img class="card-img-top mb-2"
                                    src="<?= base_url('assets/upload/konten/' . $uu['foto']) ?>"
                                    style="width: 100%; height: 250px; object-fit: cover;">
                            </div>
                            <div class="blog_details text-center">
                                <!-- Removed <a> tag around the title -->
                                <h2 class="blog-title"><?= $uu['judul'] ?></h2>
                                <ul class="blog-info-link list-inline">
                                    <li class="list-inline-item">
                                        <a href="#"><i class="fa fa-user"></i> <?= $uu['nama'] ?></a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#"><i class="fa fa-folder"></i> </i><?= $uu['nama_kategori'] ?></a>
                                    </li>
                                </ul>
                                <a href="<?= base_url('home/artikel/' . $uu['slug']) ?>" class="btn btn-primary">Baca Selengkapnya</a>
                            </div>
                        </article>
                    </div>
                <?php } ?>
            </div>
        </div>
    </section>



    <!--================ Blog Area end =================-->
    <footer>
        <!-- Footer Start -->
        <div class="footer-main footer-bg">
            <div class="footer-area footer-padding">
                <div class="container">
                    <div class="row d-flex justify-content-between">
                        <!-- Column 1: Social Media and Contact Info -->
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-8">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <p><?= htmlspecialchars($konfig->profil_website, ENT_QUOTES, 'UTF-8'); ?></p>
                                    <p>
                                        <strong>Alamat:</strong> <?= htmlspecialchars($konfig->alamat, ENT_QUOTES, 'UTF-8'); ?><br>
                                        <strong>Email:</strong> <a href="mailto:<?= htmlspecialchars($konfig->email, ENT_QUOTES, 'UTF-8'); ?>"><?= htmlspecialchars($konfig->email, ENT_QUOTES, 'UTF-8'); ?></a><br>
                                        <strong>WhatsApp:</strong> <a href="https://wa.me/<?= htmlspecialchars($konfig->no_wa, ENT_QUOTES, 'UTF-8'); ?>" target="_blank">+<?= htmlspecialchars($konfig->no_wa, ENT_QUOTES, 'UTF-8'); ?></a>
                                    </p>
                                    <div class="d-flex justify-content-start mt-4">
                                        <a class="btn btn-outline-primary rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px;" href="<?= htmlspecialchars($konfig->facebook, ENT_QUOTES, 'UTF-8'); ?>" aria-label="Facebook">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                        <a class="btn btn-outline-primary rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px;" href="<?= htmlspecialchars($konfig->instagram, ENT_QUOTES, 'UTF-8'); ?>" aria-label="Instagram">
                                            <i class="fab fa-instagram"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Column 2: Links -->
                        <div class="col-xl-3 col-lg-3 col-md-5 col-sm-8">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <nav>
                                        <h4>Web CMS</h4>
                                        <ul id="navigation">
                                            <?php foreach ($kategori as $kate) { ?>
                                                <li> <a href="<?= base_url('home/kategori/' . $kate['id_kategori']) ?>" class="nav-item nav-link">
                                                        <?= $kate['nama_kategori'] ?>
                                                    </a>
                                                <?php } ?>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer Bottom Area -->
            <div class="footer-bottom-area footer-bg">
                <div class="container">
                    <div class="footer-border">
                        <div class="row d-flex align-items-center">
                            <div class="col-xl-12">
                                <div class="footer-copy-right text-center">
                                    <p class="m-0 text-center text-white">
                                        ©
                                        <a class="text-primary font-weight-bold" href="#"><?= $konfig->judul_website; ?></a>.
                                        All Rights Reserved.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->
    </footer>

    <!-- Search model Begin -->
    <div class="search-model-box">
        <div class="d-flex align-items-center h-100 justify-content-center">
            <div class="search-close-btn">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Searching key.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->

    <!-- JS here -->

    <script src="<?= base_url('assets/front/'); ?>./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="<?= base_url('assets/front/'); ?>./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="<?= base_url('assets/front/'); ?>./assets/js/popper.min.js"></script>
    <script src="<?= base_url('assets/front/'); ?>./assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="<?= base_url('assets/front/'); ?>./assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="<?= base_url('assets/front/'); ?>./assets/js/owl.carousel.min.js"></script>
    <script src="<?= base_url('assets/front/'); ?>./assets/js/slick.min.js"></script>

    <!-- One Page, Animated-HeadLin -->
    <script src="<?= base_url('assets/front/'); ?>./assets/js/wow.min.js"></script>
    <script src="<?= base_url('assets/front/'); ?>./assets/js/animated.headline.js"></script>

    <!-- Scrollup, nice-select, sticky -->
    <script src="<?= base_url('assets/front/'); ?>./assets/js/jquery.scrollUp.min.js"></script>
    <script src="<?= base_url('assets/front/'); ?>./assets/js/jquery.nice-select.min.js"></script>
    <script src="<?= base_url('assets/front/'); ?>./assets/js/jquery.sticky.js"></script>
    <script src="<?= base_url('assets/front/'); ?>./assets/js/jquery.magnific-popup.js"></script>

    <!-- contact js -->
    <script src="<?= base_url('assets/front/'); ?>./assets/js/contact.js"></script>
    <script src="<?= base_url('assets/front/'); ?>./assets/js/jquery.form.js"></script>
    <script src="<?= base_url('assets/front/'); ?>./assets/js/jquery.validate.min.js"></script>
    <script src="<?= base_url('assets/front/'); ?>./assets/js/mail-script.js"></script>
    <script src="<?= base_url('assets/front/'); ?>./assets/js/jquery.ajaxchimp.min.js"></script>

    <!-- Jquery Plugins, main Jquery -->
    <script src="<?= base_url('assets/front/'); ?>./assets/js/plugins.js"></script>
    <script src="<?= base_url('assets/front/'); ?>./assets/js/main.js"></script>

</body>

</html>