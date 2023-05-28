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
                <h1>{{ post.data.title | getAttribute(language) }}</h1>
                <p>{{ render_widget('breadcrumb',['id':117],['viewsDir': widgets_volt,'view':'breadcrumb-1']) }}</p>
            </div>
            <!-- end inner -->
        </header>
        <!-- end page-header -->
        <section class="content-section" data-background="#fffbf7">
            <div class="container">
                <div class="row">
                    <div class="col-12 d-flex mt-4 justify-content-end">
                        <!-- Go to www.addthis.com/dashboard to customize your tools -->
                        <div class="addthis_inline_share_toolbox"></div>

                    </div>
                </div>

                <div class="row print-section">
                    <div class="col-lg-3 col-md-3">
                        <div><img style="max-width: 100%;"
                                  src="{{ post.data.image[0].url ? post.data.image[0].url : theme_path ~ '/assets/images/tapchi/tapchi.jpg' }}"
                                  alt="Image"></div>
                    </div>
                    <div class="col-lg-9 col-md-9">
                        <h3>{{ post.data.title | getAttribute(language) }}</h3>
                        <ul>
                            <li>Năm xuất bản: {{ post.data.year }}</li>
                            <li>Nhà xuất bản: {{ t('tenbaotang') }}</li>
                            <li>Giá: {{ post.data.price }}đ</li>
                        </ul>
                        <h4>Giới thiệu</h4>
                        {% set desc = post.data.desc | getAttribute(language) %}
                        {% set leng = desc | length %}
                        {% if leng > 0 %}
                            <div>
                                {{ desc | doShortCode }}
                            </div>
                        {% else %}
                            <div><span>{{ t('noidungdangcapnhat') }}</span></div>
                        {% endif %}
                        {% set pdf = post.data.file[0] %}
                        {% if not pdf is empty %}
                            <h4>Nội dung</h4>
                            <div class="">
                                <button id="prev">Trang trước</button>
                                <button id="next">Trang sau</button>
                                &nbsp; &nbsp;
                                <span>Trang: <span id="page_num"></span> / <span id="page_count"></span></span>
                            </div>
                            <canvas id="pdf-canvas" style="max-width:100%;" data-src="{{ pdf.url }}"></canvas>
                        {% endif %}
                        <hr/>
                        <div class="accordion" id="accordionExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        Đặt mua tạp chí
                                    </button>
                                </h2>
                                <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        {{ partial('modules/bookstore/partials/form-order') }}
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <hr/>
                <h4>Các số cùng năm</h4>
                <div class="row">

                    {{ render_widget('bookstore.magazine-listing',['limit':4, 'year': post.data.year],['viewsDir': widgets_volt,'view':'modules/bookstore/magazine-listing-1']) }}
                </div>


                <!-- end row -->
            </div>
            <!-- end container -->
        </section>
        {{ partial('partials/footer') }}

        <!-- end footer -->
    </div>



{#    {{ post | json_encode }}#}

{% endblock %}
{% block head %}
    <style>
        .accordion {
            display: block;
        }
    </style>
{#    <link rel="stylesheet" href="{{ theme_path }}/assets/js/pdfjs/web/viewer.css">#}
{% endblock %}
{% block foot %}


    <script src="{{ theme_path }}/assets/js/pdfjs/build/pdf.js"></script>
    <script src="{{ theme_path }}/assets/js/pdfjs/web/viewer.js"></script>
    <script src="//www.google.com/recaptcha/api.js?onload=CaptchaCallback&render=explicit"></script>
    <script>
        var CaptchaCallback = function() {
            if($('#recaptcha_1').length) grecaptcha.render('recaptcha_1', {'sitekey' : '{{ env('RECAPTCHA_SITE_KEY') }}'});

        };
        $("#order-form").on("submit", function (e) {
            e.preventDefault();
            e.stopPropagation();
            if(!$('input[name="con_name"]').val().length || !$('input[name="con_mobile"]').val().length){
                e.preventDefault();
                alert('Bạn phải nhập tên và điện thoại liên hệ');
                return;
            };
            let quantity = parseInt($('input[name="con_quantity"]').val());
            var data = {};
            var info = $(this).serializeArray().reduce(function(obj, item) {
                obj[item.name] = item.value || item.text;
                return obj;
            }, {});
            data.info = info;
            data.recaptcha = grecaptcha.getResponse();
            data.model = 'magazine';
            data.items = [
                {
                    uuid: '{{ post.uuid }}',
                    title: '{{ post.data.title | getAttribute(language) }}',
                    quantity: quantity,
                    unit_price: {{ "%d"|format(post.data.price) }}
                }
            ];

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
    <script>
        var url = $('#pdf-canvas').data('src');
        console.info(url);

        // Loaded via <script> tag, create shortcut to access PDF.js exports.
        var pdfjsLib = window['pdfjs-dist/build/pdf'];

        // The workerSrc property shall be specified.
        pdfjsLib.GlobalWorkerOptions.workerSrc = '{{ theme_path }}/assets/js/pdfjs/build/pdf.worker.js';

        var pdfDoc = null,
            pageNum = 1,
            pageRendering = false,
            pageNumPending = null,
            scale = 1.5,
            canvas = document.getElementById('pdf-canvas'),
            ctx = canvas.getContext('2d');

        /**
         * Get page info from document, resize canvas accordingly, and render page.
         * @param num Page number.
         */
        function renderPage(num) {
            pageRendering = true;
            // Using promise to fetch the page
            pdfDoc.getPage(num).then(function(page) {
                var viewport = page.getViewport({scale: scale});
                canvas.height = viewport.height;
                canvas.width = viewport.width;

                // Render PDF page into canvas context
                var renderContext = {
                    canvasContext: ctx,
                    viewport: viewport
                };
                var renderTask = page.render(renderContext);

                // Wait for rendering to finish
                renderTask.promise.then(function() {
                    pageRendering = false;
                    if (pageNumPending !== null) {
                        // New page rendering is pending
                        renderPage(pageNumPending);
                        pageNumPending = null;
                    }
                });
            });

            // Update page counters
            document.getElementById('page_num').textContent = num;
        }

        /**
         * If another page rendering in progress, waits until the rendering is
         * finised. Otherwise, executes rendering immediately.
         */
        function queueRenderPage(num) {
            if (pageRendering) {
                pageNumPending = num;
            } else {
                renderPage(num);
            }
        }

        /**
         * Displays previous page.
         */
        function onPrevPage() {
            if (pageNum <= 1) {
                return;
            }
            pageNum--;
            queueRenderPage(pageNum);
        }
        document.getElementById('prev').addEventListener('click', onPrevPage);

        /**
         * Displays next page.
         */
        function onNextPage() {
            if (pageNum >= pdfDoc.numPages) {
                return;
            }
            pageNum++;
            queueRenderPage(pageNum);
        }
        document.getElementById('next').addEventListener('click', onNextPage);

        /**
         * Asynchronously downloads PDF.
         */
        pdfjsLib.getDocument(url).promise.then(function(pdfDoc_) {
            pdfDoc = pdfDoc_;
            document.getElementById('page_count').textContent = pdfDoc.numPages;

            // Initial/first page rendering
            renderPage(pageNum);
        });
    </script>
{% endblock %}