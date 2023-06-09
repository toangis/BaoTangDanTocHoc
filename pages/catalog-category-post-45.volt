{% extends 'layouts/child.volt' %}
{% block content %}
    {% set leng = items | length %}
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
                {# <svg width="580" height="400" class="svg-morph"> #}
                {# <path id="svg_morph" d="m261,30.4375c0,0 114,6 151,75c37,69 37,174 6,206.5625c-31,32.5625 -138,11.4375 -196,-19.5625c-58,-31 -86,-62 -90,-134.4375c12,-136.5625 92,-126.5625 129,-127.5625z" /> #}
                {# </svg> #}
                <h3>{{ category_title | getAttribute(language) }}</h3>
                <p>{{ render_widget('breadcrumb',['id':category_id[0]],['viewsDir': widgets_volt,'view':'breadcrumb-1']) }}</p>
            </div>
            <!-- end inner -->
        </header>
        <!-- end page-header -->
        <section class="content-section" data-background="#fffbf7">
            <div class="container">
                {{ partial('partials/subcat') }}
                <!-- end row -->
            </div>
            <!-- end container -->
        </section>
        {{ partial('partials/footer') }}

        <!-- end footer -->
    </div>

{% endblock %}
