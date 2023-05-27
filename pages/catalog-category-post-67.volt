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
                        <img src="{{theme_path}}/assets/images/bao-tang-dan-toc-hoc-crop-1651584320570.png"  alt="" data-transition="slideInLeft" />
                    </div>
                </div>
            </div>
            <header class="page-header" style="display: none;" data-background="{{ theme_path }}/assets/videos/video.mp4">
                <div class="video-bg">
                    <video class="lazy" data-src="{{ theme_path }}/assets/videos/video.mp4" loop autoplay playsinline muted></video>
                </div>
                <div class="inner">
                    {#                <svg width="580" height="400" class="svg-morph">#}
                    {#                    <path id="svg_morph" d="m261,30.4375c0,0 114,6 151,75c37,69 37,174 6,206.5625c-31,32.5625 -138,11.4375 -196,-19.5625c-58,-31 -86,-62 -90,-134.4375c12,-136.5625 92,-126.5625 129,-127.5625z" />#}
                    {#                </svg>#}
                    <h3>{{ category_title | getAttribute(language) }}</h3>
                    <p>{{ render_widget('breadcrumb',['id':67],['viewsDir': widgets_volt,'view':'breadcrumb-1']) }}</p>
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
                            {{ partial('partials/map/toa-trong-dong') }}
                            {% if items is empty %}
                                <div class="">
                                    <h3 class="font-silka"></h3>>{{ t('noidungdangcapnhat') }}</h3>
                                </div>
                            {% elseif leng == 1 %}

                                 {{ partial('partials/single-cat') }}

                            {% else %}
                                <div class="row">
                                    {% for post in items %}
                                        <div class="col-sm-6 col-12">
                                            <div class="">
                                                <div class="">
                                                    <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html">
                                                        <div style="background-image: url('http://vme.isys.vn{{post.data.image[0].url}}'); background-position: center; background-size: cover; width: 100%; padding-top: 56.25%; ;"></div>
                                                        <!-- <img src="{{post.data.image[0].url}}" class="img-fluid" alt=""> -->
                                                    </a>
                                                </div>
                                                <div class="mt-2 mb-4">
                                                    <h3 class="post-title">
                                                        <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html">{{ post.data.title|getAttribute(language) }}</a>
                                                    </h3>
                                                    <!-- <p class="post-date"> {{ date('d/m/Y',strtotime(item.published_on)) }}</p> -->

                                                    <!-- <p class="post-excerpt">{{ post.data.desc|getAttribute(language)|striptags }}</p> -->
                                                    <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html" class="see-more-link">Chi tiết</a>
                                                </div>
                                            </div>
                                        </div>
                                    {% endfor %}
                                </div>
                                <div class="row ">
                                    <div class="col">
                                        <ul class="pagination">
                                            {% if(pages > 0) %}
                                                {% for i in 1..pages %}
                                                    <li class="page-item"><a class="page-link"
                                                        href="{{ url(['for':'catalog-single','catalog':'category','category_id':category,'page':1,'slug':slug|getAttribute(language),'language':language]) }}">{{ i }}</a>
                                                    </li>
                                                {% endfor %}
                                            {% endif %}
                                        </ul>
                                    </div>
                                </div>
                            {% endif %}
                        </div>
                    </div>
                    {{ partial('partials/subcat-dantoc-children-false-67') }}
                    <!-- end row -->
                </div>
                <!-- end container -->
            </section>
            {{ partial('partials/footer') }}

            <!-- end footer -->
        </div>
{% endblock %}