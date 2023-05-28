{% extends 'layouts/child.volt' %}
{% block content %}
    {% set leng = items | length %}
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
                {% if items is empty or leng == 0 %}
                    {% if category_children is empty %}
                        <div class="">
                            <h3 class="font-silka">{{ t('noidungdangcapnhat') }}</h3>
                        </div>
                    {% endif %}
                {% elseif leng == 1 %}
                
                    {{ partial('partials/single-cat') }}

                {% else %}
                    <div class="row justify-content-center">
                        
                        {% for post in items %}
                           

                            <div class="col-lg-4 col-md-4 col-12 mt-4">
                                <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html">
                                    <div class="subcat">
                                        <figure><img
                                            src="{{ post.data.image[0].url ? post.data.image[0].url : theme_path ~ '/assets/images/vme1.jpg' }}"
                                            alt="Image"></figure>
                                        <h2 class="mt-4 subcat-title"><a style="text-decoration: none;"
                                                href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html">{{ post.data.title|getAttribute(language) }}</a>
                                        </h2>
                                    </div>
                                </a>
                            </div>

                        {% endfor %}
                    </div>

                    <div class="row ">
                        <div class="col">
                            <ul class="pagination">
                                {% if(pages > 0) %}
                                    {% for i in 1..pages %}
                                        <li class="page-item"><a class="page-link"
                                                                 href="{{ url(['for':'catalog-single','catalog':'category','category_id':category,'page':i,'slug':slug|getAttribute(language),'language':language]) }}">{{ i }}</a>
                                        </li>
                                    {% endfor %}
                                {% endif %}
                            </ul>
                        </div>
                    </div>
                {% endif %}
                <!-- {{ partial('partials/subcat-children-false') }} -->
                <!-- end row -->
            </div>
            <!-- end container -->
        </section>
        {{ partial('partials/footer') }}

        <!-- end footer -->
    </div>

{% endblock %}
