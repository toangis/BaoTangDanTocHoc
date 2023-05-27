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
                    <video src="{{ theme_path }}/assets/videos/video.mp4" loop autoplay playsinline muted></video>
                </div>
                <div class="inner">
                    {# <svg width="580" height="400" class="svg-morph">#}
                    {# <path id="svg_morph" d="m261,30.4375c0,0 114,6 151,75c37,69 37,174 6,206.5625c-31,32.5625 -138,11.4375 -196,-19.5625c-58,-31 -86,-62 -90,-134.4375c12,-136.5625 92,-126.5625 129,-127.5625z" />#}
                    {# </svg>#}
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

                        {% endif %}
                    {% elseif leng == 1 %}

                        {{ partial('partials/single-cat') }}

                    <!-- {% else %} -->

                    {% endif %}
                    <!-- <div class="row print-section">
                        <div class="col-12">
                            {{ render_widget('bookstore.book-listing',['limit':50,'current_page':current_page],['viewsDir': widgets_volt,'view':'modules/bookstore/book-listing-1']) }}
                        </div>
                    </div> -->
                    <hr/>
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="accordion" id="accordionExample">
                                <div class="accordion-item" style="width:100%;">
                                    <h2 class="accordion-header" id="headingOne">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                data-bs-target="#collapseOne" aria-expanded="true"
                                                aria-controls="collapseOne">
                                            Đặt mua
                                        </button>
                                    </h2>
                                    <div id="collapseOne" class="accordion-collapse collapse show"
                                         aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            {{ partial('modules/bookstore/partials/form-order-sach', ['mode' : 'message', 'model': 'book']) }}
                                        </div>
                                    </div>
                                </div>
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
{% block foot %}
    <script src="//www.google.com/recaptcha/api.js?onload=CaptchaCallback&render=explicit"></script>
    <script>
        var CaptchaCallback = function() {
            if($('#recaptcha_1').length) grecaptcha.render('recaptcha_1', {'sitekey' : '{{ env('RECAPTCHA_SITE_KEY') }}'});

        };
        $("#order-form").on("submit", function (e) {
            e.preventDefault();
            e.stopPropagation();
            if(!$('input[name="con_name"]').val().length || !$('input[name="con_mobile"]').val().length  || !$('textarea[name="con_message"]').val().length){
                e.preventDefault();
                alert('Bạn phải nhập tên và điện thoại liên hệ và thông tin đặt hàng');
                return;
            };
            var data = {};
            var info = $(this).serializeArray().reduce(function(obj, item) {
                obj[item.name] = item.value || item.text;
                return obj;
            }, {});
            data.info = info;
            data.recaptcha = grecaptcha.getResponse();
            data.model = 'magazine';
            data.items = [];

            $.ajax({
                type: "POST",
                url: "/bookstore/api/order/save",
                data: {data: JSON.stringify(data)},
                success: function(response){
                    if(response.success){

                        alert('Gửi thông tin thành công. Cám ơn bạn đã liên hệ!');
                        $(this).trigger('reset');
                        grecaptcha.reset();
                    }else{
                        alert('Quá trình gửi bị lỗi. Xin bạn vui lòng thử lại!');
                    }
                },
                dataType: "json",
                contentType: "application/x-www-form-urlencoded; charset=UTF-8"
            });
        });
    </script>
{% endblock %}