{% extends 'layouts/default.volt' %}

{% block content %}

<div class="smooth-scroll1">
    <div class="section-wrapper"> <!--data-scroll-section-->
        <!-- end search-box -->
        {{ partial('partials/navbar') }}

        <!-- end navbar -->
        <header class="slider">
            <div class="swiper-container slider-images">
                <div class="swiper-wrapper">
                    <div class="swiper-slide" data-background="">
                        <iframe class="lazy" width="100%" height="100%"
                            data-src="{{ theme_path }}/assets/3d/1/index.html" frameborder="0"></iframe>
                        <div class="mobile-slide" data-background="{{ theme_path }}/assets/images/slide-mobile01.jpg">
                            <iframe class="lazy" width="100%" height="100%"
                                data-src="{{ theme_path }}/assets/3d/1/index.html" frameborder="0"></iframe>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end slider-texts -->
            <div class="play-now"><a href="{{ theme_path }}/assets/videos/video.mp4" data-fancybox data-width="80%"
                    data-height="66%" class="play-btn"></a>
                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                    y="0px" width="300px" height="300px" viewBox="0 0 300 300" enable-background="new 0 0 300 300"
                    xml:space="preserve">
                    <defs>
                        <path id="circlePath" d="M 150, 150 m -60, 0 a 60,60 0 0,1 120,0 a 60,60 0 0,1 -120,0 " />
                    </defs>
                    <circle cx="150" cy="100" r="75" fill="none" />
                    <g>
                        <use xlink:href="#circlePath" fill="none" />
                        <text>
                            <textPath xlink:href="#circlePath" fill="#fff">{{ t('tenbaotang') }}</textPath>
                        </text>
                    </g>
                </svg>
            </div>
            <!-- end play-now -->
            <div id="filter" style="width: 100%; height: 100%; position: absolute; top: 0; left: 0; z-index: 10;">

            </div>
            <!-- <span id="scroll_down" class="scroll-down-button">{{ t('cuonxuong') }}</span> -->
            <a class="scroll-down-button"><img src="{{ theme_path }}/assets/images/arrow/arrow1.gif" alt=""></a>
        </header>
        <!-- end slider -->
        <section id="home-page-section" class="content-section" data-background="#fffbf7">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <figure><img src="{{ theme_path }}/assets/images/logo_green.png" alt="Image"></figure>
                            <h2>{{ t('thamquanbaotang') }} <br>
                            </h2>
                        </div>
                        <!-- end section-title -->
                    </div>
                    <!-- end col-12 -->
                    <div class="col-lg-7">
                        <figure class="image-box" data-scroll data-scroll-speed="-1"><img class="lazy"
                                data-src="{{ theme_path }}/assets/images/thamquanbaotang.jpg" alt="Image"></figure>
                    </div>
                    <!-- end col-7 -->
                    <div class="col-lg-5">
                        <div class="side-icon-list right-side">
                            <ul>
                                <li>
                                    <figure><img src="{{ theme_path }}/assets/images/icon01.png" alt="Image">
                                    </figure>
                                    {{ render_widget('post-listing',['catalog':'category','category':[305],
                                    'limit':1],['viewsDir':
                                    widgets_volt,'view':'index/tham-quan']) }}
                                </li>
                                <li>
                                    <figure><img src="{{ theme_path }}/assets/images/icon02.png" alt="Image">
                                    </figure>
                                    <a>
                                        {{ render_widget('post-listing',['catalog':'category','category':[308],
                                        'limit':1],['viewsDir':
                                        widgets_volt,'view':'index/tham-quan']) }}
                                    </a>
                                    <a href="/{{ language }}/c/category-59/ve-va-le-phi-p1.html" class="veDetail"><img class="btn-more-custom" src="{{ theme_path }}/assets/images/{{ language }}/xt.png"></a>
                                    <!-- end content -->
                                </li>
                                <li>
                                    <figure><img src="{{ theme_path }}/assets/images/icon03.png" alt="Image">
                                    </figure>
                                    <div class="content">
                                        <h5>{{ t('diachi1') }}</h5>
                                        <p>{{ t('diachibaotang') }}</p>
                                    </div>
                                    <!-- end content -->
                                </li>
                            </ul>
                        </div>
                        <!-- end side-icon-list -->
                    </div>
                    <!-- end col-5 -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </section>
        <!-- end content-section -->
        <section class="content-section">
            <div class="container" id="nhomTinTuc">
                <div class="row justify-content-center" style="justify-content: left !important; margin-bottom: 100px;">
                    <figure style="width:100%;display:block;padding-bottom: 20px;text-align: center!important;">
                        <img src="{{ theme_path }}/assets/images/logo_green.png" alt="Image"
                            style="height: 70px; text-align: center;">
                    </figure>
                    <div style="    display: flex;flex-direction: row;flex-wrap: nowrap;justify-content: space-between; align-items: flex-end">
                        <div class="section-title center" style="margin-bottom: 0;margin-left: 5%;">
                            <!-- <h6>Bảo tàng Dân tộc học</h6> -->
                            <h2>{{ t('tintucvasukien') }}</h2>
                        </div>
                        <div class="text-center"><a href="/{{ language }}/c/category-130/tin-tuc-p1.html"><img
                            class="btn-more-custom"
                            src="{{ theme_path }}/assets/images/{{ language }}/xt.png"></a>
                        </div>

                        <div style="    display: flex;
                        align-content: center;
                        flex-wrap: nowrap;
                        width: 100%;
                        flex-direction: row;
                        align-items: flex-end;display: none;">  
                        </div>

                        <!-- end section-title -->
                    </div>
                    <!-- end col-9 -->
                </div>
                <!-- end row -->
                {{ render_widget('post-listing',['catalog':'category','category':[130], 'limit':9],['viewsDir':
                widgets_volt,'view':'index/post-listing-1']) }}

                <!-- end row -->
            </div>
            <!-- end container -->
        </section>
        <!-- Trưng bày------------------------------------------------------------------------------------------------------------------->
        <section class="content-section no-bottom-spacing bottom-white" data-background="#fffbf7">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <figure><img src="{{ theme_path }}/assets/images/logo_green.png" alt="Image"></figure>
                            <h2>{{ t('trungbay') }}<br>
                            </h2>
                        </div>
                        <!-- end section-title -->
                    </div>
                    <!-- end col-12 -->
                    <div class="col-lg-4 col-md-6">
                        <a class="text-decoration" href="/{{ language }}/c/category-64/trung-bay-thuong-xuyen-p1.html">
                            <figure class="image-box" data-scroll data-scroll-speed="0"><img class="lazy"
                                data-src="{{ theme_path }}/assets/images/trungbay1.jpg" alt="Image">
                            </figure>
                            <div class="text-content ntrungbay">
                                <h6>{{ t('trungbaythuongxuyen') }}</h6>
                                <p>{{ t('trungbay1') }}</p>
                            </div>
                        </a>
                        <!-- end text-content -->
                    </div>
                    <!-- end col-4 -->
                    <div class="col-lg-4 col-md-6">
                        <a class="text-decoration" href="/{{ language }}/c/category-65/trung-bay-nhat-thoi-p1.html">
                            <figure class="image-box" data-scroll data-scroll-speed="0"><img class="lazy"
                                data-src="{{ theme_path }}/assets/images/trungbay2.jpg" alt="Image">
                            </figure>
                            <div class="text-content ntrungbay">
                                <h6>{{ t('trungbaynhatthoi') }}</h6>
                                <p>{{ t('trungbay2') }}</p>
                            </div>
                        </a>
                        <!-- end text-content -->
                    </div>
                    <!-- end col-4 -->
                    <div class="col-lg-4 col-md-6">
                        <a class="text-decoration" href="/{{ language }}/c/category-66/trung-bay-ao-p1.html">
                            <figure class="image-box" data-scroll data-scroll-speed="0"><img class="lazy"
                                data-src="{{ theme_path }}/assets/images/trungbay3.jpg" alt="Image">
                            </figure>
                            <div class="text-content ntrungbay">
                                <!--<h6>{{ t('trungbayao') }}</h6>-->
                                <h6>Trưng bày kỹ thuật số</h6>
                                <p>{{ t('trungbay3') }}</p>
                            </div>
                        </a>
                        <!-- end text-content -->
                    </div>
                    <!-- end col-4 -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
            <!-- end horizontal-scroll -->
        </section>
        <!----------------------------------------------------------------------------------------------------------------------------------->
        <!-- end content-section -->
        <section class="content-section no-bottom-spacing research" style="display: none;">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <figure><img src="{{ theme_path }}/assets/images/logo_green.png" alt="Image"></figure>
                            <!-- <h6>Bảo tàng Dân tộc học</h6> -->
                            <h2>{{ t('nghiencuu') }}</h2>
                        </div>
                        <!-- end section-title -->
                    </div>
                    <!-- end col-12 -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
            <div class="container-fluid px-0">
                <div class="row g-0">
                    <div class="col-lg-4">
                        <a
                            href="{{url(['for':'catalog-single','catalog':'category','category_id':109,'page':1,'slug':item['slug']|getAttribute(language),'language':language])}}">
                            <div class="image-icon-box" data-scroll data-scroll-speed="-1">
                                <!-- <figure class="icon"><img class="lazy" data-src="{{ theme_path }}/assets/images/logo_green.png"
                                                          alt="Image">
                                </figure> -->
                                <figure class="content-image"><img src="{{ theme_path }}/assets/images/hoi-thao-1.jpg"
                                        alt="Image"></figure>
                                <div class="content-box">
                                    <!-- <b>01.</b> -->
                                    <h4>{{ t('detai') }}</h4>
                                    <div class="expand">
                                        <p>{{ t('nghiencuu1') }}</p>
                                    </div>
                                    <!-- end expand -->
                                </div>
                                <!-- end content-box -->
                            </div>
                        </a>
                        <!-- end image-icon-box -->
                    </div>
                    <!-- end col-4 -->
                    <div class="col-lg-4">
                        <a
                            href="{{url(['for':'catalog-single','catalog':'category','category_id':110,'page':1,'slug':item['slug']|getAttribute(language),'language':language])}}">
                            <div class="image-icon-box" data-scroll data-scroll-speed="0.5">
                                <!-- <figure class="icon"><img class="lazy" data-src="{{ theme_path }}/assets/images/logo_green.png"
                                                          alt="Image">
                                </figure> -->
                                <figure class="content-image"><img src="{{ theme_path }}/assets/images/daotao.jpg"
                                        alt="Image"></figure>
                                <div class="content-box">
                                    <!-- <b>02.</b> -->
                                    <h4>{{ t('daotao') }}</h4>
                                    <div class="expand">
                                        <p>{{ t('nghiencuu2') }}</p>
                                    </div>
                                    <!-- end expand -->
                                </div>
                                <!-- end content-box -->
                            </div>
                        </a>
                        <!-- end image-icon-box -->
                    </div>

                    <!-- end col-4 -->
                    <div class="col-lg-4">
                        <a class=""
                            href="{{url(['for':'catalog-single','catalog':'category','category_id':112,'page':1,'slug':item['slug']|getAttribute(language),'language':language])}}">
                            <div class="image-icon-box" data-scroll data-scroll-speed="1">
                                <!-- <figure class="icon"><img class="lazy" data-src="{{ theme_path }}/assets/images/logo_green.png"
                                                          alt="Image">
                                </figure> -->
                                <figure class="content-image"><img src="{{ theme_path }}/assets/images/anpham.jpg"
                                        alt="Image"></figure>
                                <div class="content-box">
                                    <!-- <b>03.</b> -->
                                    <h4>{{ t('anpham') }}</h4>
                                    <div class="expand">
                                        <p>{{ t('nghiencuu3') }}</p>
                                    </div>
                                    <!-- end expand -->
                                </div>
                                <!-- end content-box -->
                            </div>
                        </a>
                        <!-- end image-icon-box -->
                    </div>
                    <!-- end col-4 -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </section>
        <!-- end content-section -->
        <section class="content-section pb-0" style="display: none;">
            <div class="container">
                <div class="row g-0 align-items-center">
                    <div class="col-lg-6">
                        <div class="art-slider">
                            <div class="titles">
                                <!-- <h6>Trải nghiệm</h6> -->
                                <div class="flex-row" style="display: flex;">
                                    <img src="{{ theme_path }}/assets/images/logo_green.png" alt="Image"
                                        style="height: 80px; margin-right: 20px;">
                                    <h2>{{ t('hoatdonggiaoduc') }}</h2>
                                </div>

                            </div>
                            <!-- end titles -->
                            <div class="swiper-container art-slider-content">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><span></span>
                                        <h3>{{ t('nhatruong') }}</h3>
                                    </div>
                                    <!-- end swiper-slide -->
                                    <div class="swiper-slide"><span></span>
                                        <h3>{{ t('giadinh') }}</h3>
                                    </div>
                                    <div class="swiper-slide"><span></span>
                                        <h3>{{ t('trinhdien') }}</h3>
                                    </div>
                                    <div class="swiper-slide"><span></span>
                                        <h3>{{ t('sukienthuongnien') }}</h3>
                                    </div>
                                    <div class="swiper-slide"><span></span>
                                        <h3>{{ t('sukienkhongthuongnien') }}</h3>
                                    </div>
                                    <div class="swiper-slide"><span></span>
                                        <h3>{{ t('phongkhamphadanhchotreem') }}</h3>
                                    </div>
                                    <div class="swiper-slide"><span></span>
                                        <h3>{{ t('phongdaphuongtien') }}</h3>
                                    </div>
                                    <div class="swiper-slide"><span></span>
                                        <h3>{{ t('phongchieuphim') }}</h3>
                                    </div>
                                    <!-- end swiper-slide -->
                                </div>
                                <!-- end swiper-wrapper -->
                            </div>
                            <!-- end art-slider-content -->
                        </div>
                        <!-- end art-slider -->
                    </div>
                    <!-- end col-6 -->
                    <div class="col-lg-6">
                        <div class="art-slider" data-scroll data-scroll-speed="1">
                            <div class="swiper-container art-slider-images">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="education-slider-images"
                                            style="background-image: url('{{ theme_path }}/assets/images/hoatdong/phongchieuphim.jpg');">

                                        </div>
                                        <div>
                                            <a href=""><img class="btn-more-custom"
                                                    src="{{ theme_path }}/assets/images/{{ language }}/xt.png"></a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="education-slider-images"
                                            style="background-image: url('{{ theme_path }}/assets/images/hoatdong/nhatruong.jpg');">
                                        </div>
                                        <div>
                                            <a href="/{{ language }}/c/category-88/nha-truong-p1.html">
                                                <img class="btn-more-custom"
                                                    src="{{ theme_path }}/assets/images/{{ language }}/xt.png">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="education-slider-images"
                                            style="background-image: url('{{ theme_path }}/assets/images/hoatdong/giadinh.jpg');">
                                        </div>
                                        <div>
                                            <a href="/{{ language }}/c/category-89/gia-dinh-p1.html">
                                                <img class="btn-more-custom"
                                                    src="{{ theme_path }}/assets/images//{{ language }}/xt.png">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="education-slider-images"
                                            style="background-image: url('{{ theme_path }}/assets/images/hoatdong/bieudien.jpg');">
                                        </div>
                                        <div>
                                            <a href="/{{ language }}/c/category-90/trinh-dien-p1.html">
                                                <img class="btn-more-custom"
                                                    src="{{ theme_path }}/assets/images//{{ language }}/xt.png">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="education-slider-images"
                                            style="background-image: url('{{ theme_path }}/assets/images/hoatdong/sukien.jpg');">
                                        </div>
                                        <div>
                                            <a href="/{{ language }}/c/category-91/su-kien-thuong-nien-p1.html">
                                                <img class="btn-more-custom"
                                                    src="{{ theme_path }}/assets/images//{{ language }}/xt.png">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="education-slider-images"
                                            style="background-image: url('{{ theme_path }}/assets/images/hoatdong/sukienkhongthuongnien.jpg');">
                                        </div>
                                        <div>
                                            <a href="/{{ language }}/c/category-92/su-kien-khong-thuong-nien-p1.html">
                                                <img class="btn-more-custom"
                                                    src="{{ theme_path }}/assets/images//{{ language }}/xt.png">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="education-slider-images"
                                            style="background-image: url('{{ theme_path }}/assets/images/hoatdong/khampha.jpg');">
                                        </div>
                                        <div>
                                            <a
                                                href="/{{ language }}/c/category-93/phong-kham-pha-danh-cho-tre-em-p1.html">
                                                <img class="btn-more-custom"
                                                    src="{{ theme_path }}/assets/images//{{ language }}/xt.png">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="education-slider-images"
                                            style="background-image: url('{{ theme_path }}/assets/images/hoatdong/daphuongtien.jpg');">
                                        </div>
                                        <div>
                                            <a href="/{{ language }}/c/category-94/phong-da-phuong-tien-p1.html">
                                                <img class="btn-more-custom"
                                                    src="{{ theme_path }}/assets/images//{{ language }}/xt.png">
                                            </a>
                                        </div>
                                    </div>

                                    <!-- end swiper-slide -->
                                </div>
                                <!-- end swiper-wrapper -->
                            </div>
                            <!-- end art-slider-images -->
                        </div>
                        <!-- end art-slider -->
                    </div>
                    <!-- end col-6 -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </section>
        <!-- end content-section -->
        <section class="content-section" style="display: none">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <figure><img src="{{ theme_path }}/assets/images/logo_green.png" alt="Image"></figure>
                            <!-- <h6>Bảo tàng Dân tộc học</h6> -->
                            <h2>{{ t('doitaccuabaotang') }}</h2>
                            <a href="/{{ language }}/c/category-46/hop-tac-p1.html" class="mt-4"
                                style="width: 100%;"><img class="btn-more-custom"
                                    src="{{ theme_path }}/assets/images/{{ language }}/xt.png"></a>
                        </div>
                        <!-- end section-title -->
                    </div>
                    <!-- end col-12 -->
                </div>
                <!-- end row -->
            </div>
            <a href="/{{ language }}/c/category-46/hop-tac-p1.html">
                <div class="wrap">
                    <div class="sliding"
                        style=" background: url('{{ theme_path }}/assets/images/{{ language }}/doitac.png') repeat-x;">
                    </div>
                </div>
            </a>
        </section>


        <!-- <section class="content-section" style="padding-top: 100px; padding-top: 80px;">
            <div class="video-bg zoom-in-zoom-out">
                <div class="zoom-in-out" style="background-image: url('{{ theme_path }}/assets/images/{{ language }}/doitac.png'); background-position: center; background-size: auto; width: 100%; height: 100%;"></div>
            </div>
            <div class="container">
                <div class="cta-box" data-scroll data-scroll-speed="-1">
                    <h2>{{ t('doitaccuabaotang') }}</h2>
                    <a href="/{{ language }}/c/category-46/hop-tac-p1.html" class="mt-4"><img  style="height: 70%;"
                            src="{{ theme_path }}/assets/images/{{ language }}/xt-white.png"></a>
                </div>
            </div>
        </section> -->

        {{ partial('partials/footer') }}
        <!-- end footer -->
    </div>
</div>

{% endblock %}