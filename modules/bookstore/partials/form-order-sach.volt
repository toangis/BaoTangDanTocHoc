<form id="order-form" method="post">
    <div class="row row-10">
        <div class="col-md-6">
            <div class="mb-3">
                <label for="fc-name" class="form-label">Họ và tên <span style="color:#f00;">(*)</span></label>
                <input type="text" class="form-control w-100" name="con_name" id="fc-name" placeholder="">
            </div>
            <div class="mb-3">
                <label for="fc-email" class="form-label">Email</label>
                <input type="email" class="form-control w-100" name="con_email" id="fc-email" placeholder="">
            </div>
        </div>
        <div class="col-md-6">
            <div class="mb-3">
                <label for="fc-title" class="form-label">Điện thoại <span style="color:#f00;">(*)</span></label>
                <input type="text" class="form-control w-100" name="con_mobile" id="fc-mobile" placeholder="">
            </div>
            {% if not mode == 'message' %}
            <div class="mb-3">
                <label for="fc-title" class="form-label">Số lượng đặt</label>
                <input type="number" value="1" class="form-control w-100" name="con_quantity" id="fc-mobile" placeholder="">
            </div>
            {% endif %}
        </div>
        {% if mode == 'message' %}
            <div class="col-md-12">
                <div class="mb-3">
                    <label for="fc-title" class="form-label">Thông tin đặt hàng <span style="color:#f00;">(*)</span></label>
                    <textarea class="form-control w-100" name="con_message" id="fc-message" placeholder="Vui lòng ghi rõ tên sách và số lượng đặt mua, chúng tôi sẽ liên hệ lại để xác nhận"></textarea>
                </div>
            </div>
        {% endif %}

    </div>
    <div class="row">
        <div class="col-12">
            <div id="recaptcha_1" class="recaptcha"></div>
            <button type="submit" class="">Đặt mua</button>
        </div>
    </div>
</form>