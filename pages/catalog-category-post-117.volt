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
            {# <svg width="580" height="400" class="svg-morph">#}
                {#
                <path id="svg_morph"
                    d="m261,30.4375c0,0 114,6 151,75c37,69 37,174 6,206.5625c-31,32.5625 -138,11.4375 -196,-19.5625c-58,-31 -86,-62 -90,-134.4375c12,-136.5625 92,-126.5625 129,-127.5625z" />
                #}
                {#
            </svg>#}
            <h1>{{ category_title | getAttribute(language) }}</h1>
            <p>{{ render_widget('breadcrumb',['id':category_id[0]],['viewsDir': widgets_volt,'view':'breadcrumb-1']) }}
            </p>
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
                    {% set end_year = date('Y') | int %}
                    {% set start_year = 2013 %}

                    <div class="row p-5">
                        <div class="col-md-2 mb-3">
                            <ul class="nav nav-pills vertical-tab" id="yearTab" role="tablist">
                                {% for index in end_year..start_year %}
                                <li class="nav-item nav-item-book">
                                    <a class="nav-link {% if loop.index == 1 %} active {% endif %}"
                                        id="nav-tab-{{ index }}" data-bs-toggle="tab" data-bs-target="#tab-{{ index }}"
                                        role="tab" aria-controls="home" aria-selected="true">{{ index }}</a>
                                </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <!-- /.col-md-4 -->
                        <div class="col-md-10">
                            <div class="tab-content" id="yearTabContent">
                                {% for index in end_year..start_year %}
                                <div class="tab-pane fade show text-left {% if loop.index == 1 %} active {% endif %}"
                                    id="tab-{{ index }}" role="tabpanel" aria-labelledby="home-tab">
                                    {{
                                    render_widget('bookstore.magazine-listing',['limit':10,'current_page':current_page,
                                    'year': index],['viewsDir':
                                    widgets_volt,'view':'modules/bookstore/magazine-listing-1']) }}
                                </div>
                                {% endfor %}
                            </div>
                            <!--tab content end-->
                        </div><!-- col-md-8 end -->
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="accordion" id="accordionExample">
                                <div class="accordion-item" style="width:100%;">
                                    <h2 class="accordion-header" id="headingOne">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapseOne" aria-expanded="true"
                                            aria-controls="collapseOne">
                                            Đặt mua tạp chí
                                        </button>
                                    </h2>
                                    <div id="collapseOne" class="accordion-collapse collapse show"
                                        aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            {{ partial('modules/bookstore/partials/form-order', ['mode' : 'message']) }}
                                        </div>
                                    </div>
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
    var CaptchaCallback = function () {
        if ($('#recaptcha_1').length) grecaptcha.render('recaptcha_1', { 'sitekey': '{{ env('RECAPTCHA_SITE_KEY') }}'});

    };
    $("#order-form").on("submit", function (e) {
        e.preventDefault();
        e.stopPropagation();
        if (!$('input[name="con_name"]').val().length || !$('input[name="con_mobile"]').val().length || !$('textarea[name="con_message"]').val().length) {
            e.preventDefault();
            alert('Bạn phải nhập tên và điện thoại liên hệ và thông tin đặt hàng');
            return;
        };
        var data = {};
        var info = $(this).serializeArray().reduce(function (obj, item) {
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
            data: { data: JSON.stringify(data) },
            success: function (response) {
                if (response.success) {

                    alert('Gửi thông tin thành công. Cám ơn bạn đã liên hệ!');
                    $(this).trigger('reset');
                    grecaptcha.reset();
                } else {
                    alert('Quá trình gửi bị lỗi. Xin bạn vui lòng thử lại!');
                }
            },
            dataType: "json",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8"
        });
    });
</script>
{% endblock %}