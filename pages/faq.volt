{% extends 'layouts/child.volt' %}
{% block content %}
<div class="smooth-scroll">
    <div class="section-wrapper" data-scroll-section>
        <nav class="navbar">
            <div class="logo"><a href="index.html"> <img src="{{ theme_path }}/assets/images/logo1.png" alt="Image">
                </a></div>
            <!-- end logo -->
            <div class="custom-menu">
                {# <ul> #}
                    {# <li><a href="#">Eng</a></li> #}
                    {# <li><a href="#">Rus</a></li> #}
                    {# </ul> #}
            </div>
            <!-- end custom-menu -->
            <div class="site-menu">
                {# <ul> #}
                    {# <li><a href="visit.html">Visit</a></li> #}
                    {# <li><a href="exhibitions.html">Exhibitions</a></li> #}
                    {# <li><a href="collections.html">Collections</a></li> #}
                    {# <li><a href="about.html">About</a></li> #}
                    {# <li><a href="contact.html">Contact</a></li> #}
                    {# </ul> #}
                {{ render_widget('catalog-listing',['id':0,
                'ul_class':'menu','ul_class_submenu':'submenu','li_class':'','ul':true,'disable_parent_link':false,
                'depth': 3],['viewsDir': widgets_volt,'view':'top-menu']) }}
            </div>
            <!-- end site-menu -->
            {# <div class="search-button"> <i class="far fa-search"></i> </div> #}
            <!-- end search-button -->
            <div class="hamburger-menu">
                {# <svg class="hamburger" width="30" height="30" viewBox="0 0 30 30"> #}
                    {#
                    <path class="line line-top" d="M0,9h30" /> #}
                    {#
                    <path class="line line-center" d="M0,15h30" /> #}
                    {#
                    <path class="line line-bottom" d="M0,21h30" /> #}
                    {#
                </svg> #}
            </div>
            <!-- end hamburger-menu -->
            <div class="navbar-languages"><span class="flag-icon flag-icon-vnm"></span><span
                    class="flag-icon flag-icon-eng"></span><span class="flag-icon flag-icon-fra"></span></div>
            <!-- end navbar-button -->
        </nav>
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
                <h1>{{ t('hoivadap') }}</h1>
                <p>Hãy liên hệ với chúng tôi qua email information@vme.org.vn hoặc điền form dưới đây</p>
            </div>
            <!-- end inner -->
        </header>
        <!-- end page-header -->
        <section class="content-section" data-background="#fffbf7">
            <div class="container">

                <div class="row print-section">
                    <form id="contact-form" method="post">
                        <div class="row row-10">
                            <div class="col-md-6">
                                <h3>Liên hệ</h3>
                                <div class="mb-3">
                                    <label for="fc-name" class="form-label">Họ và tên</label>
                                    <input type="text" class="form-control w-100" name="con_name" id="fc-name"
                                        placeholder="">
                                </div>
                                <div class="mb-3">
                                    <label for="fc-email" class="form-label">Email</label>
                                    <input type="email" class="form-control w-100" name="con_email" id="fc-email"
                                        placeholder="">
                                </div>
                                <div class="mb-3">
                                    <label for="fc-title" class="form-label">Tiêu đề</label>
                                    <input type="text" class="form-control w-100" name="con_title" id="fc-title"
                                        placeholder="">
                                </div>
                                <div class="mb-3">
                                    <label for="fc-message" class="form-label">Nội dung</label>
                                    <textarea class="form-control w-100" id="fc-message" name="con_message"
                                        placeholder=""></textarea>
                                </div>
                                <div id="recaptcha_1" class="recaptcha"></div>
                                <button type="submit">Gửi</button>
                            </div>


                            {# <div class="col-md-6 col-12 section-space--bottom--20"><input name="con_name" type="text"
                                    placeholder="Họ và tên"></div>#}
                            {# <div class="col-md-6 col-12 section-space--bottom--20"><input name="con_email"
                                    type="email" placeholder="Email"></div>#}
                            {# <div class="col-md-6 col-12 section-space--bottom--20"><input name="con_title"
                                    type="title" placeholder="TIêu đề"></div>#}
                            {# <div class="col-md-6"><textarea name="con_message" placeholder="Nội dung"></textarea>
                            </div>#}
                            {# <div class="col-12">
                                <div id="recaptcha_1" class="recaptcha"></div>
                            </div>#}
                            {# <div class="col-12"><button type="submit">Gửi</button></div>#}
                            <div class="col-md-6">
                                <h3>Hỏi đáp</h3>
                                {{ render_widget('faq-listing',['limit':50],['viewsDir':
                                widgets_volt,'view':'faq-listing']) }}

                            </div>
                        </div>

                    </form>
                    <p class="form-message"></p>
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
{% block head %}
<style>
    .accordion {
        display: block;
    }
</style>
{% endblock %}
{% block foot %}

<script src="//www.google.com/recaptcha/api.js?onload=CaptchaCallback&render=explicit"></script>
<script>
    var CaptchaCallback = function () {
        if ($('#recaptcha_1').length) grecaptcha.render('recaptcha_1', { 'sitekey': '{{ recaptcha_site_key }}' });

    };
    $("#contact-form").on("submit", function (e) {
        e.preventDefault();
        e.stopPropagation();
        if (!$('input[name="con_email"]', this).val().length || !$('input[name="con_title"]', this).val().length) {
            e.preventDefault();
            alert('Bạn phải nhập Email và tiêu đề liên hệ');
            return;
        }
        var data = {};
        var items = $(this).serializeArray().reduce(function (obj, item) {
            console.info(item);
            obj[item.name] = item.value || item.text;
            return obj;
        }, {});
        data.items = items;
        data.recaptcha = grecaptcha.getResponse();
        data.mail_subject = 'New contact';

        $.ajax({
            type: "POST",
            url: "/form/submit/cms",
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