{% extends 'layouts/child.volt' %}
{% block content %}
    <div class="section-wrapper" data-scroll-section>
        {{ partial('partials/navbar') }}
        <!-- end navbar -->
        <header class="page-header" data-background="{{ theme_path }}/assets/videos/video.mp4">
            <div class="video-bg">
                <video src="{{ theme_path }}/assets/videos/video.mp4" loop autoplay playsinline muted></video>
            </div>
            <div class="inner">
                <h1>Tìm kiếm</h1>
                <p>{{ render_widget('breadcrumb',['id':post.catalog.category[0]],['viewsDir': widgets_volt,'view':'breadcrumb-1']) }}</p>
            </div>
            <!-- end inner -->
        </header>
        <!-- end page-header -->
        <section class="content-section" data-background="#fffbf7">
            <div class="container">
                <div class="row">
                    <div class="col-12 d-flex justify-content-end">

                        <!-- Go to www.addthis.com/dashboard to customize your tools -->
                        <!-- <div class="addthis_inline_share_toolbox"></div> -->

                    </div>
                </div>
                <div class="row print-section">
                    <div class="col-12">
                        <h2>Kết quả tìm kiếm</h2>
                        <div class="row">
                        {% for item in items %}
                            <div class="col-lg-4 col-md-6">
                                <div class="exhibition-box" data-scroll data-scroll-speed="-1">
                                    <div class="lazy" data-bg="{{ item.data.image[0].url ? item.data.image[0].url : theme_path ~ '/assets/images/vme1.jpg' }}" style="width: 100%; height: 300px; background-size: cover; background-position: center"></div>
                                    <div class="content-box">
                                        <h4>
                                            <a href="{{ url(['for':'frontend-post-lang','slug':item.slug|getAttribute(language), 'language':language]) }}">{{ item.data.title|getAttribute(language) }}</a>
                                        </h4>
                                        <p>{{ item.data.desc|getAttribute(language) }}</p>
                                    </div>
                                </div>
                            </div>
                        {% endfor %}
                        {% if(pages > 0) %}
                            <div class="pagination">
                                {% for i in 1..pages %}
                                    <li class="page-item"><a class="page-link"
                                                             href="{{ url(['for':'search-lang','query':query,'language':language]) }}">{{ i }}</a>
                                    </li>
                                {% endfor %}
                            </div>

                        {% endif %}
                        </div>
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
