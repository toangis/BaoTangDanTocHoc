{% extends 'layouts/child.volt' %}
{% block content %}
        <div class="section-wrapper" data-scroll-section>
            {{ partial('partials/navbar') }}
            <!-- end navbar -->
            <div id="wrapper">
                <div class="slider-wrapper theme-default">
                    <div id="treeMenu" style="display: none;">
                        <h4>{{ category_title | getAttribute(language) }}</h4>
                        <p>{{ render_widget('breadcrumb',['id':category_id[0]],['viewsDir': widgets_volt,'view':'breadcrumb-1']) }}</p>
                    </div>
                    <div id="slider" class="nivoSlider">
                        {{ render_widget('slide',['ul':false],['viewsDir': widgets_volt,'view':'top-slide']) }}
                    </div>       
                </div>
            </div>
            <header class="page-header" style="display: none;" data-background="{{ theme_path }}/assets/videos/video.mp4">
                <div class="video-bg">
                    <video src="{{ theme_path }}/assets/videos/video.mp4" loop autoplay playsinline muted></video>
                </div>
                <div class="inner">
                    <h1>{{ post.data.title | getAttribute(language) }}</h1>
                    <p>{{ render_widget('breadcrumb',['id':post.catalog.category[0]],['viewsDir': widgets_volt,'view':'breadcrumb-1']) }}</p>
                </div>
                <!-- end inner -->
            </header>
            <!-- end page-header -->
            <section class="content-section" data-background="#fffbf7">
                <div class="container">
                    <div class="row">
                        <!-- <div><img style="width: 50%;"
                            src="{{ post.data.image[0].url ? post.data.image[0].url : theme_path ~ '/assets/images/vme1.jpg' }}"
                            alt="Image"></div> -->
                        <div class="col-12 d-flex mt-4">
                            <!-- Go to www.addthis.com/dashboard to customize your tools -->
                            <!-- <div class="addthis_inline_share_toolbox"></div> -->

                        </div>
                    </div>
                    <div class="row print-section">
                        <div class="col-12">
                            {{ post.data.detail | getAttribute(language) | doShortCode}}
                        </div>
                    </div>

                    <!-- end row -->
                </div>
                <!-- end container -->
            </section>
            {{ partial('partials/footer') }}

            <!-- end footer -->
        </div>
{% endblock %}