{% extends 'layouts/default.volt' %}

{% block content %}

<div class="smooth-scroll">
    <div class="section-wrapper" data-scroll-section>
        {{ partial('partials/navbar') }}
        <!-- end navbar -->
        <div id="wrapper">
            <div id="treeMenu">
                <h4>{{ category_title | getAttribute(language) }}</h4>
                <p>{{ render_widget('breadcrumb',['id':category_id[0]],['viewsDir': widgets_volt,'view':'breadcrumb-1']) }}</p>
            </div>
            <div class="slider-wrapper theme-default">
                <div id="slider" class="nivoSlider">
                    <img src="{{theme_path}}/assets/images/bao-tang-dan-toc-hoc-crop-1651584320570.png" alt="" data-transition="slideInLeft" />
                    <img src="{{theme_path}}/assets/images/BaoTangDanTocHoc_foody-mobile-2.png"  alt="" data-transition="slideInLeft"/>
                    <img src="{{theme_path}}/assets/images/kien-truc-o-bao-tang-dan-toc-hoc.png"  alt="" data-transition="slideInLeft" />
                </div>
            </div>
        </div>
        <header class="page-header" style="display: none;" data-background="{{ theme_path }}/assets/videos/video.mp4">
            <div class="video-bg">
                <video src="{{ theme_path }}/assets/videos/video.mp4" loop autoplay playsinline muted></video>
            </div>
            <div class="inner">
                <h1>{{ t('taitoroi') }}</h1>
                <p></p>
            </div>
            <!-- end inner -->
        </header>
        <!-- end page-header -->
        <section class="content-section" data-background="#fffbf7">
            <div class="container">

                <div class="row print-section">
                    <div class="col-lg-4 col-md-4" style="text-align: center;">
                        <a href="{{ theme_path }}/assets/files/To-roi-VN.pdf" target="_blank">
                            <div class="text-content" style="display: block;">
                                <img src="{{ theme_path }}/assets/images/pdf.png"
                                    style="width: 50%; margin-bottom: 50px;">
                                <h6>{{ t('toroitiengviet') }}</h6>
                                <!-- <p>Việt Nam có dân số gần 86 triệu người (2009), như một đại gia đình gồm 54 dân tộc: người Việt (Kinh) và 53 dân tộc thiểu số. Nhiều dân tộc lại bao gồm một số nhóm địa phương. Bức tranh ngôn ngữ tộc người rất phong phú, gồm 5 ngữ hệ</p> -->
                            </div>
                        </a>
                        <!-- end text-content -->
                    </div>
                    <!-- end col-4 -->
                    <div class="col-lg-4 col-md-4" style="text-align: center; ">
                        <a href="{{ theme_path }}/assets/files/To-roi-ENG.pdf" target="_blank">
                            <div class="text-content" style="display: block;">
                                <img src="{{ theme_path }}/assets/images/pdf.png"
                                    style="width: 50%; margin-bottom: 50px;">
                                <h6>{{ t('toroitienganh') }}</h6>
                                <!-- <p>Về hành chính, Đông Nam Á ở những năm đầu thế kỷ 21 bao gồm 11 quốc gia: Thái Lan, Myanmar, Lào, Campuchia, Việt Nam, Singapore, Indonesia, Malaysia, Brunei, Philippines và Đông Timor, với dân số gần 600 triệu người. Nhưng theo quan niệm dân tộc học, Đông Nam Á còn bao gồm cả Nam Trung Quốc và một phần Đông Bắc Ấn Độ.</p> -->
                            </div>
                        </a>
                        <!-- end text-content -->
                    </div>
                    <!-- end col-4 -->
                    <div class="col-lg-4 col-md-4" style="text-align: center;">
                        <a href="{{ theme_path }}/assets/files/To-roi-FR.pdf" target="_blank">
                            <div class="text-content" style="margin-top: 0; display: block;">
                                <img src="{{ theme_path }}/assets/images/pdf.png"
                                    style="width: 50%; margin-bottom: 50px;">
                                <h6>{{ t('toroitiengphap ') }}</h6>
                                <!-- <p>Khu trưng bày ngoài trời ngút ngát màu xanh của nhiều loại cây cối, có dòng suối nhân tạo chảy về hồ thuỷ đình là nơi biểu diễn rối nước; có những lối nhỏ dẫn du khách tới 10 công trình kiến trúc dân gian Việt Nam</p> -->
                            </div>
                        </a>
                        <!-- end text-content -->
                    </div>
                </div>

                <!-- end row -->
            </div>
            <!-- end container -->
        </section>
        {{ partial('partials/footer') }}

        <!-- end footer -->
    </div>
</div>
{% endblock %}