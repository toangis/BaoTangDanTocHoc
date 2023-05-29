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
                </div> >      
            </div>
        </div>
        <header class="page-header" style="display: none;" data-background="{{ theme_path }}/assets/videos/video.mp4">
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
                {% if items is empty or leng == 0 %}
                    <h3 class="font-silka">Không tìm thấy dữ liệu cần tìm</h3>
                {% else %}
                <div class="">
                    <h3 class="font-silka">Kết quả tìm kiếm</h3>
                </div>
                    <div class="row print-section">
                        <div class="col-12">
                            <div class="row">
                            {% for item in items %}
                                    <div class="col-lg-4 col-md-4 col-12 mt-4 ">
                                        <a href="{{ url(['for':'frontend-post-lang','slug':item.slug|getAttribute(language), 'language':language]) }}">
                                            <div class="subcat">
                                                <figure><img
                                                    src="{{ item.data.image[0].url ? item.data.image[0].url : theme_path ~ '/assets/images/vme1.jpg' }}"
                                                    alt="Image"></figure>
                                                <h2 class="mt-2 subcat-title"><a style="text-decoration: none;" 
                                                    href="{{ url(['for':'frontend-post-lang','slug':item.slug|getAttribute(language), 'language':language]) }}">{{ item.data.title|getAttribute(language) }}</a>
                                                </h2>
                                                <!-- <p>{{ item.data.desc|getAttribute(language)|striptags }}</p> -->
                                            </div>
                                        </a>
                                    </div>


                                    <!-- <div class="exhibition-box" data-scroll data-scroll-speed="-1">
                                        <div class="lazy" data-bg="{{ item.data.image[0].url ? item.data.image[0].url : theme_path ~ '/assets/images/vme1.jpg' }}" style="width: 100%; height: 300px; background-size: cover; background-position: center"></div>
                                        <div class="content-box">
                                            <h4>
                                                <a href="{{ url(['for':'frontend-post-lang','slug':item.slug|getAttribute(language), 'language':language]) }}">{{ item.data.title|getAttribute(language) }}</a>
                                            </h4>
                                            <p>{{ item.data.desc|getAttribute(language) }}</p>
                                        </div>
                                    </div> -->
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
                {% endif %}
                <!-- end row -->
            </div>
            <!-- end container -->
        </section>
        {{ partial('partials/footer') }}

        <!-- end footer -->
    </div>
{% endblock %}
