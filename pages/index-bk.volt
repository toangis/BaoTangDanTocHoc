{% extends 'layouts/default.volt' %}

{% block content %}

<div class="smooth-scroll">
    <div class="section-wrapper" data-scroll-section>
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
                    {# <div class="swiper-slide" data-background="{{theme_path}}/assets/images/slide02.jpg"> #}
                        {# <div class="mobile-slide" data-background="{{theme_path}}/assets/images/slide-mobile02.jpg">
                        </div> #}
                        {# </div> #}
                    {# <div class="swiper-slide" data-background="{{theme_path}}/assets/images/slide03.jpg"> #}
                        {# <div class="mobile-slide" data-background="{{theme_path}}/assets/images/slide-mobile03.jpg">
                        </div> #}
                        {# </div> #}
                </div>
                <!-- end swiper-wrapper -->

                <!-- <div class="container-fluid slider-nav"> -->
                <!-- <div class="swiper-pagination"></div> -->
                <!-- end swiper-pagination -->
                <!-- <div class="swiper-fraction"></div> -->
                <!-- end swiper-fraction -->
                {# <div class="button-prev"><i class="far fa-chevron-down"></i></div> #}
                <!-- end swiper-button-prev -->
                {# <div class="button-next"><i class="far fa-chevron-up"></i></div> #}
                <!-- end swiper-button-next -->
                <!-- </div> -->

                <!-- end slider-nav -->
            </div>
            <!-- end slider-images -->
            <div class="swiper-container slider-texts">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="container-fluid">
                            <h1>{{ t('baotang') }}</h1>
                            <p>{{ t('diachi') }} {{ t('diachibaotang') }}<br />{{ t('sodienthoai') }}024 3756 2193</p>
                        </div>
                        <!-- end container -->
                    </div>
                    <!-- end swiper-slide -->
                    {# <div class="swiper-slide"> #}
                        {# <div class="container-fluid"> #}
                            {# <h1>Discover Our <br> #}
                                {# History </h1> #}
                            {# <p>Your support is vital and helps the Museum to share <br> #}
                                {# the collection with the world.</p> #}
                            {# </div> #}
                        {#
                        <!-- end container --> #}
                        {#
                    </div> #}
                    {#
                    <!-- end swiper-slide --> #}
                    {# <div class="swiper-slide"> #}
                        {# <div class="container-fluid"> #}
                            {# <h1>The Art of <br> #}
                                {# North Africa </h1> #}
                            {# <p>Curator Peter Loovers explores the special relationship between<br> #}
                                {# Arctic Peoples and 'man's best friend'.</p> #}
                            {# </div> #}
                        {#
                        <!-- end container --> #}
                        {#
                    </div> #}
                    <!-- end swiper-slide -->
                </div>
                <!-- end swiper-wrapper -->
            </div>
            <!-- end slider-texts -->
            <div class="play-now"><a href="{{ theme_path }}/assets/videos/video.mp4" data-fancybox data-width="640"
                    data-height="360" class="play-btn"></a>
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
                                    <div class="content">
                                        <h5>{{ t('thoigianmocua') }}</h5>
                                        <p>{{ t('mocua') }}: 8h30-17h30 <br />{{ t('dongcua') }} {{ t('thoigiandongcua') }}
                                        </p>
                                    </div>
                                    <!-- end content -->
                                </li>
                                <li>
                                    <figure><img src="{{ theme_path }}/assets/images/icon02.png" alt="Image">
                                    </figure>
                                    <div class="content">
                                        <h5>{{ t('vevalephi') }}</h5>
                                        <p>{{ t('giavevalephi') }}</p>
                                        <a href="/vi/c/category-59/ve-va-le-phi-p1.html"> <img class="btn-more-custom" style="margin-top: 0px;" src="{{ theme_path }}/assets/images/{{ language }}/xt.png"></a>
                                    </div>
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
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-9">
                        <div class="section-title center">
                            <figure><img src="{{ theme_path }}/assets/images/logo_green.png" alt="Image"></figure>
                            <!-- <h6>Bảo tàng Dân tộc học</h6> -->
                            <h2>{{ t('tintucvasukien') }}</h2>
                        </div>
                        <!-- end section-title -->
                    </div>
                    <!-- end col-9 -->
                </div>
                <!-- end row -->
                {{ render_widget('post-listing',['catalog':'category','category':[130], 'limit':3],['viewsDir':
                widgets_volt,'view':'index/post-listing-1']) }}

                <!-- end row -->
            </div>
            <!-- end container -->
        </section>
        <!-- end content-section -->
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
                            <div class="text-content" data-scroll data-scroll-speed="-1">
                                <h6>{{ t('trungbaythuongxuyen') }}</h6>
                                <p>{{ t('trungbay1') }}</p>
                            </div>
                        </a>
                        <!-- end text-content -->
                    </div>
                    <!-- end col-4 -->
                    <div class="col-lg-4 col-md-6">
                        <a class="text-decoration" href="/{{ language }}/c/category-65/trung-bay-nhat-thoi-p1.html">
                            <div class="text-content" data-scroll data-scroll-speed="0.5">
                                <h6>{{ t('trungbaynhatthoi') }}</h6>
                                <p>{{ t('trungbay2') }}</p>
                            </div>
                        </a>
                        <!-- end text-content -->
                    </div>
                    <!-- end col-4 -->
                    <div class="col-lg-4 col-md-6">
                        <a class="text-decoration" href="/{{ language }}/c/category-66/trung-bay-ao-p1.html">
                            <div class="text-content" data-scroll data-scroll-speed="1">
                                <h6>{{ t('trungbayao') }}</h6>
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
            <div class="clearfix spacing-100"></div>
            <div class="horizontal-scroll">
                <div class="scroll-inner" data-scroll data-scroll-direction="horizontal" data-scroll-speed="5">
                    <div class="scroll-wrapper">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-4">
                                    <figure class="image-box" data-scroll data-scroll-speed="0"><img class="lazy"
                                            data-src="{{ theme_path }}/assets/images/trungbay1.jpg" alt="Image">
                                    </figure>
                                </div>
                                <!-- end col-3 -->
                                <div class="col-md-3 offset-md-1">
                                    <figure class="image-box" data-scroll data-scroll-speed="0"><img class="lazy"
                                            data-src="{{ theme_path }}/assets/images/trungbay2.jpg" alt="Image">
                                    </figure>
                                </div>
                                <!-- end col-3 -->
                                <div class="col-md-2 offset-md-1">
                                    <figure class="image-box" data-scroll data-scroll-speed="0"><img class="lazy"
                                            data-src="{{ theme_path }}/assets/images/trungbay3.jpg" alt="Image">
                                    </figure>
                                </div>
                                <!-- end col-3 -->
                            </div>
                            <!-- end row -->
                        </div>
                        <!-- end container-fluid -->
                    </div>
                    <!-- end scroll-wrapper -->
                    <div class="scroll-wrapper">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-3">
                                    <figure class="image-box" data-scroll data-scroll-speed="0"><img class="lazy"
                                            data-src="{{ theme_path }}/assets/images/trungbay1.jpg" alt="Image">
                                    </figure>
                                </div>
                                <!-- end col-3 -->
                                <div class="col-md-4 offset-md-1">
                                    <figure class="image-box" data-scroll data-scroll-speed="0"><img class="lazy"
                                            data-src="{{ theme_path }}/assets/images/trungbay2.jpg" alt="Image">
                                    </figure>
                                </div>
                                <!-- end col-3 -->
                                <div class="col-md-2 offset-md-1">
                                    <figure class="image-box" data-scroll data-scroll-speed="0"><img class="lazy"
                                            data-src="{{ theme_path }}/assets/images/trungbay3.jpg" alt="Image">
                                    </figure>
                                </div>
                                <!-- end col-3 -->
                            </div>
                            <!-- end row -->
                        </div>
                        <!-- container-fluid -->
                    </div>
                    <!-- end scroll-wrapper -->
                </div>
                <!-- end scroll-inner -->
            </div>
            <!-- end horizontal-scroll -->
        </section>
        <!-- end content-section -->
        <section class="content-section no-bottom-spacing research">
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
        <section class="content-section">
            <div class="container">
                <div class="row g-0 align-items-center">
                    <div class="col-lg-6">
                        <div class="art-slider">
                            <div class="titles">
                                <!-- <h6>Trải nghiệm</h6> -->
                                <h2>{{ t('hoatdonggiaoduc') }}</h2>
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
                                        <div class="education-slider-images" style="background-image: url('{{ theme_path }}/assets/images/hoatdong/phongchieuphim.jpg');">

                                        </div>
                                        
                                        <!-- <img class="lazy"
                                            src="{{ theme_path }}/assets/images/hoatdong/phongchieuphim.jpg"
                                            alt="Image"> -->
                                        <div>
                                            <a href=""><img class="btn-more-custom"
                                                src="{{ theme_path }}/assets/images/{{ language }}/xt.png"></a>
                                        </div>
                                        
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="education-slider-images" style="background-image: url('{{ theme_path }}/assets/images/hoatdong/nhatruong.jpg');">
                                        </div>
                                        <div>
                                            <a href="/{{ language }}/c/category-88/nha-truong-p1.html">
                                                <img class="btn-more-custom" src="{{ theme_path }}/assets/images/{{ language }}/xt.png">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="education-slider-images" style="background-image: url('{{ theme_path }}/assets/images/hoatdong/giadinh.jpg');">
                                        </div>
                                        <div>
                                            <a href="/{{ language }}/c/category-89/gia-dinh-p1.html">
                                                <img class="btn-more-custom" src="{{ theme_path }}/assets/images//{{ language }}/xt.png">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="education-slider-images" style="background-image: url('{{ theme_path }}/assets/images/hoatdong/bieudien.jpg');">
                                        </div>
                                        <div>
                                            <a href="/{{ language }}/c/category-90/trinh-dien-p1.html">
                                                <img class="btn-more-custom" src="{{ theme_path }}/assets/images//{{ language }}/xt.png">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="education-slider-images" style="background-image: url('{{ theme_path }}/assets/images/hoatdong/sukien.jpg');">
                                        </div>
                                        <div>
                                            <a href="/{{ language }}/c/category-91/su-kien-thuong-nien-p1.html">
                                                <img class="btn-more-custom" src="{{ theme_path }}/assets/images//{{ language }}/xt.png">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="education-slider-images" style="background-image: url('{{ theme_path }}/assets/images/hoatdong/vme.jpg');">
                                        </div>
                                        <div>
                                            <a href="/{{ language }}/c/category-92/su-kien-khong-thuong-nien-p1.html">
                                                <img class="btn-more-custom" src="{{ theme_path }}/assets/images//{{ language }}/xt.png">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="education-slider-images" style="background-image: url('{{ theme_path }}/assets/images/hoatdong/khampha.jpg');">
                                        </div>
                                        <div>
                                            <a href="/{{ language }}/c/category-93/phong-kham-pha-danh-cho-tre-em-p1.html">
                                                <img class="btn-more-custom" src="{{ theme_path }}/assets/images//{{ language }}/xt.png">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="education-slider-images" style="background-image: url('{{ theme_path }}/assets/images/hoatdong/daphuongtien.jpg');">
                                        </div>
                                        <div>
                                            <a href="/{{ language }}/c/category-94/phong-da-phuong-tien-p1.html">
                                                <img class="btn-more-custom" src="{{ theme_path }}/assets/images//{{ language }}/xt.png">
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
        <section class="content-section" style="padding-top: 100px; padding-top: 80px;">
            <div class="video-bg">
                <video class="lazy" src="{{ theme_path }}/assets/videos/video.mp4" loop autoplay playsinline
                    muted></video>
            </div>
            <!-- end video-bg -->
            <div class="container">
                <div class="cta-box" data-scroll data-scroll-speed="-1">
                    <!-- <h6>Dịch vụ dành cho du khách</h6> -->
                    <h2>{{ t('doitaccuabaotang') }}</h2>
                    <a href="/{{ language }}/c/category-46/hop-tac-p1.html" class="mt-4"><img
                            src="{{ theme_path }}/assets/images//{{ language }}/xt-white.png"></a>
                </div>
                <!-- end cta-box -->
            </div>
            <!-- end container -->
        </section>

        {{ partial('partials/footer') }}
        <!-- end footer -->
    </div>
</div>

{% endblock %}