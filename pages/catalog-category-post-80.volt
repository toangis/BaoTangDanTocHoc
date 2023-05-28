{% extends 'layouts/child.volt' %}

{% block content %}
{% set leng = items | length %}
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
               
                <h3>{{ category_title | getAttribute(language) }}</h3>
                <p>{{ render_widget('breadcrumb',['id':category_id[0]],['viewsDir': widgets_volt,'view':'breadcrumb-1'])
                    }}</p>
            </div>
            <!-- end inner -->
        </header>
        <!-- end page-header -->
        <section class="content-section" data-background="#fffbf7">
            <div class="container">

                <!-- {{ partial('partials/group/mon-khome') }} -->

                <br/>
                
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
                            <div class="col-lg-4 col-md-4 col-12">
                                <div class="collection-box" data-scroll data-scroll-speed="1.5">
                                    <!-- <div style="background-image: url('{{ post.data.image[0].url ? post.data.image[0].url : theme_path ~ '/assets/images/vme1.jpg' }}'); background-position: center; background-size: cover; width: 100%; padding-top: 56.25%; ;"></div> -->
                                    <figure><img
                                                src="{{ post.data.image[0].url ? post.data.image[0].url : theme_path ~ '/assets/images/vme1.jpg' }}"
                                                alt="Image"></figure>
                                    <h4 class="cat-title">
                                        <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html">{{ post.data.title|getAttribute(language) }}</a>
                                    </h4>
                                    <p>{{ post.data.desc|getAttribute(language)|striptags }}</p>
                                </div>
                                <!-- end collection-box -->
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
              
                <div class="row">
                    <h2 class="title-group-language-80">{{ t('monkhomemienbac') }}</h2>
                    {{ render_widget('post-listing',['catalog':'category','category':295,'limit':20],['viewsDir': widgets_volt,'view':'index/post-listing-5']) }}
                </div>
                <div class="row">
                    <h2 class="title-group-language-80">{{ t('monkhomemiennam') }}</h2>
                    {{ render_widget('post-listing',['catalog':'category','category':296,'limit':20],['viewsDir': widgets_volt,'view':'index/post-listing-5']) }}
                </div>


                 <!-- {{ partial('partials/subcat-dantoc') }} -->
            </div>
         
            <!-- end container -->
        </section>
        {{ partial('partials/footer') }}

        <!-- end footer -->
    </div>
</div>
{% endblock %}
{% block head %}
<style>
    .content {
        padding-top: 20px;
        padding-right: 15px;
        padding-bottom: 20px;
        padding-left: 15px;
        margin-bottom: 20px;
        font-family: 'Open Sans', sans-serif;
        font-size: 13px;
        font-weight: 400;
        color: #2c1f1e;
        text-align: justify;
        background-color: #f5f5f5;
    }

    #map3 {
        position: relative;
        width: 600px;
    }

    #map3 .inside-map-group-list {
        position: absolute;
        bottom: 4px;
        background-color: white;
    }

    #map3 .inside-map-group-list ul {
        padding: 7px;
        margin-bottom: 0;
    }

    #map3 .inside-map-group-list ul li a {
        padding: 0 4px;
    }
    
    #map2 {
        position: relative;
        width: 600px;
    }

    #map2 .inside-map-group-list {
        position: absolute;
        bottom: 4px;
        background-color: white;
    }

    #map2 .inside-map-group-list ul {
        padding: 7px;
        margin-bottom: 0;
    }

    #map2 .inside-map-group-list ul li a {
        padding: 0 4px;
    }

    .group-list li a {
        padding: 2px 4px;
        font-family: 'Open Sans', sans-serif;
        font-size: 11px;
        font-weight: 400;
        color: #2c1f1e;
        text-decoration: none;
        text-transform: uppercase;
        white-space: nowrap;
        -webkit-transition: background .2s ease-in-out, color .2s ease-in-out;
        -o-transition: background .2s ease-in-out, color .2s ease-in-out;
        transition: background .2s ease-in-out, color .2s ease-in-out;
    }

    #map3 .inside-map-group-list ul li {
        line-height: 1.2em;
    }
    #map2 .inside-map-group-list ul li {
        line-height: 1.2em;
    }
</style>
{% endblock %}

{% block foot %}
<script>
    (function ($) {
        'use strict';
        $(document).ready(function ($) {
            var $mapsWrapper = $('#map3'),
                $allEthnicGroupList = $('#all-ethnic-group'),
                baseHref = window.location.href;

            function initSvgImage() {
                $mapsWrapper.find('svg').each(function (i, e) {
                    $(e).prop('size', {
                        'width': parseInt($(e).attr('width')),
                        'height': parseInt($(e).attr('height'))
                    });
                });
            }

            function resizeSvgImage() {
                $mapsWrapper.find('svg').each(function (i, e) {
                    var w = $(e).parent().width() - ($(e).parent().hasClass('tab-pane') ? 1 : 0),
                        r = w / $(e).prop('size').width;
                    $(e).attr('width', w + 'px').attr('height', ($(e).prop('size').height * r) + 'px');
                });
            }

            function initCurrentEthnies() {
                $allEthnicGroupList.find('li a').each(function (i, e) {
                    $(e).addClass('inactive');
                });

                if ($mapsWrapper.find('.tab-pane.active').length > 0) {
                    $mapsWrapper.find('.tab-pane.active .inside-map-group-list .group-list li a').each(function (i, e) {
                        $allEthnicGroupList.find('li a[data-page-id ="' + $(e).data('page-id') + '"]').removeClass('inactive');
                    });
                } else {
                    $mapsWrapper.find('.inside-map-group-list .group-list li a').each(function (i, e) {
                        $allEthnicGroupList.find('li a[data-page-id ="' + $(e).data('page-id') + '"]').removeClass('inactive');
                    });
                }
                resizeSvgImage();
            }

            $('.group-list li a').on('mouseenter mouseleave', function (e) {
                $mapsWrapper.find('svg g[data-page-id="' + $(e.currentTarget).data('page-id') + '"]').trigger(e.type);
            });

            $mapsWrapper.find('svg g').on('mouseenter mouseleave', function (e) {
                var $t = $(e.currentTarget),
                    gBlur = document.getElementById($t.data('filter').substr(1)).getElementsByTagName('feGaussianBlur')[0],
                    b = gBlur.getAttribute('stdDeviation'),
                    o = parseFloat($t.attr('opacity'));

                window.clearInterval($t.prop('bAnim'));

                $('.group-list li a[data-page-id="' + $t.data('page-id') + '"]').toggleClass('over');

                if (e.type === 'mouseenter') {
                    $t.appendTo($t.parents('svg')).attr('filter', 'url(' + baseHref + $t.data('filter') + ')').prop('bAnim', window.setInterval(function () {
                        $t.attr('opacity', o += 0.035);
                        gBlur.setAttribute('stdDeviation', b++);
                        if (b > 10) {
                            window.clearInterval($t.prop('bAnim'));
                        }
                    }, 20));

                } else {
                    $t.prop('bAnim', window.setInterval(function () {
                        $t.attr('opacity', o -= 0.035);
                        gBlur.setAttribute('stdDeviation', b--);
                        if (b < 0) {
                            window.clearInterval($t.attr('filter', '').prop('bAnim'));
                        }
                    }, 20));
                }

            })
            //   .on('click', function(e){
            //     window.location = $allEthnicGroupList.find('li a[data-page-id="' + $(e.currentTarget).data('page-id') + '"]').attr('href');
            //   });
            initSvgImage();

            resizeSvgImage();

            initCurrentEthnies();

            $(document).on('shown.bs.tab', '[data-toggle="tab"]', function (e) {
                initCurrentEthnies();
            });

            $(window).resize(function () {
                resizeSvgImage();
            });
        });
    }(jQuery));
</script>
<script>
    (function ($) {
        'use strict';
        $(document).ready(function ($) {
            var $mapsWrapper = $('#map2'),
                $allEthnicGroupList = $('#all-ethnic-group'),
                baseHref = window.location.href;

            function initSvgImage() {
                $mapsWrapper.find('svg').each(function (i, e) {
                    $(e).prop('size', {
                        'width': parseInt($(e).attr('width')),
                        'height': parseInt($(e).attr('height'))
                    });
                });
            }

            function resizeSvgImage() {
                $mapsWrapper.find('svg').each(function (i, e) {
                    var w = $(e).parent().width() - ($(e).parent().hasClass('tab-pane') ? 1 : 0),
                        r = w / $(e).prop('size').width;
                    $(e).attr('width', w + 'px').attr('height', ($(e).prop('size').height * r) + 'px');
                });
            }

            function initCurrentEthnies() {
                $allEthnicGroupList.find('li a').each(function (i, e) {
                    $(e).addClass('inactive');
                });

                if ($mapsWrapper.find('.tab-pane.active').length > 0) {
                    $mapsWrapper.find('.tab-pane.active .inside-map-group-list .group-list li a').each(function (i, e) {
                        $allEthnicGroupList.find('li a[data-page-id ="' + $(e).data('page-id') + '"]').removeClass('inactive');
                    });
                } else {
                    $mapsWrapper.find('.inside-map-group-list .group-list li a').each(function (i, e) {
                        $allEthnicGroupList.find('li a[data-page-id ="' + $(e).data('page-id') + '"]').removeClass('inactive');
                    });
                }
                resizeSvgImage();
            }

            $('.group-list li a').on('mouseenter mouseleave', function (e) {
                $mapsWrapper.find('svg g[data-page-id="' + $(e.currentTarget).data('page-id') + '"]').trigger(e.type);
            });

            $mapsWrapper.find('svg g').on('mouseenter mouseleave', function (e) {
                var $t = $(e.currentTarget),
                    gBlur = document.getElementById($t.data('filter').substr(1)).getElementsByTagName('feGaussianBlur')[0],
                    b = gBlur.getAttribute('stdDeviation'),
                    o = parseFloat($t.attr('opacity'));

                window.clearInterval($t.prop('bAnim'));

                $('.group-list li a[data-page-id="' + $t.data('page-id') + '"]').toggleClass('over');

                if (e.type === 'mouseenter') {
                    $t.appendTo($t.parents('svg')).attr('filter', 'url(' + baseHref + $t.data('filter') + ')').prop('bAnim', window.setInterval(function () {
                        $t.attr('opacity', o += 0.035);
                        gBlur.setAttribute('stdDeviation', b++);
                        if (b > 10) {
                            window.clearInterval($t.prop('bAnim'));
                        }
                    }, 20));

                } else {
                    $t.prop('bAnim', window.setInterval(function () {
                        $t.attr('opacity', o -= 0.035);
                        gBlur.setAttribute('stdDeviation', b--);
                        if (b < 0) {
                            window.clearInterval($t.attr('filter', '').prop('bAnim'));
                        }
                    }, 20));
                }

            })
            //   .on('click', function(e){
            //     window.location = $allEthnicGroupList.find('li a[data-page-id="' + $(e.currentTarget).data('page-id') + '"]').attr('href');
            //   });
            initSvgImage();

            resizeSvgImage();

            initCurrentEthnies();

            $(document).on('shown.bs.tab', '[data-toggle="tab"]', function (e) {
                initCurrentEthnies();
            });

            $(window).resize(function () {
                resizeSvgImage();
            });
        });
    }(jQuery));
</script>
{% endblock %}