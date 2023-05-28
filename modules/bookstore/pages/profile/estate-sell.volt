{% extends 'layouts/profile.volt' %}
{% block content %}

    <!-- content -->
    <section id="app" class="container pEqual">
        <div class="addProperty">
            <h1 class="fontNeuron">Đăng tin rao bán, cho thuê nhà đất</h1>

            <div class="formContent">
                <div id="form-post-estate">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item active">
                            <a class="nav-link" id="home-tab" data-toggle="tab" href="#tab-sell" role="tab"
                               aria-controls="home" aria-selected="true">Cần bán/Cho thuê</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#tab-rent" role="tab"
                               aria-controls="profile" aria-selected="false">Cần mua/Cần thê</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane active" id="tab-sell" role="tabpanel" aria-labelledby="home-tab">
                            <ol class="navSteps">
                                <li class="current">
                                    <a v-on:click.stop.prevent="gotoStep(1)">
                                        <span class="text">Thông tin cơ bản</span>
                                    </a>
                                </li>
                                <li>
                                    <a v-on:click.stop.prevent="gotoStep(2)">
                                        <span class="text">Tải Ảnh / Video</span>
                                    </a>
                                </li>
                            </ol>
                            <div id="step1" v-show="step==1">

                                <header class="contentHead">
                                    <h2 class="fontNeuron">Thông tin cơ bản</h2>
                                    <div class="btnArea">
                                        <a class="btn btn-info" v-on:click.stop.prevent="gotoStep(2)">Tiếp tục <i
                                                    class="fi flaticon-arrows"></i></a>
                                    </div>
                                </header>
                                <div class="row">

                                    <div class="col-lg-12 col-xs-12">
                                        <div class="form-group">
                                            <label for="itemN-15">Tiêu đề*</label>
                                            <input data-vv-as="Tiêu đề" v-validate="'required'" name="title" ref="title"
                                                   type="text" class="form-control" placeholder="House" id="title"
                                                   v-model="estate.data.title">
                                            <span v-show="errors.has('title')" class="text-danger"><% errors.first('title') %></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Hình thức</label>
                                            <div class="col-sm-9">

                                                <vue-multiselect v-model="estate.data.type"
                                                                 deselect-label="Can't remove this value"
                                                                 :options="types.map(p => parseInt(p.id))"
                                                                 :custom-label="opt => types.find(x => x.id == opt).title"
                                                                 :searchable="false"
                                                                 :allow-empty="false">
                                                    {# <template slot="singleLabel" slot-scope="{ option }"><strong>{{ option.title }}</strong></template> #}
                                                </vue-multiselect>


                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="" class="col-sm-3 col-form-label col-form-label-sm">Loại</label>
                                            <div class="col-sm-9">
                                                <vue-multiselect v-if="estate.data.type==1" v-model="estate.data.kind"
                                                                 deselect-label="Can't remove this value"
                                                                 :options="kinds.sell.map(p => parseInt(p.id))"
                                                                 :custom-label="opt => kinds.sell.find(x => x.id == opt).title"
                                                                 :searchable="false"
                                                                 :allow-empty="false">
                                                    {# <template slot="singleLabel" slot-scope="{ option }"><strong>{{ option.title }}</strong></template> #}
                                                </vue-multiselect>
                                                <vue-multiselect v-if="estate.data.type==2" v-model="estate.data.kind"
                                                                 deselect-label="Can't remove this value"
                                                                 :options="kinds.rent.map(p => parseInt(p.id))"
                                                                 :custom-label="opt => kinds.rent.find(x => x.id == opt).title"
                                                                 :searchable="false"
                                                                 :allow-empty="false">
                                                    {# <template slot="singleLabel" slot-scope="{ option }"><strong>{{ option.title }}</strong></template> #}
                                                </vue-multiselect>


                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Tỉnh/TP</label>
                                            <div class="col-sm-9">
                                                <vue-multiselect v-model="estate.data.province"
                                                                 deselect-label="Can't remove this value"
                                                                 :options="provinces.map(p => parseInt(p.id))"
                                                                 :custom-label="opt => provinces.find(x => x.id == opt).title"
                                                                 :searchable="true"
                                                                 :allow-empty="false">
                                                    {# <template slot="singleLabel" slot-scope="{ option }"><strong>{{ option.title }}</strong></template> #}
                                                </vue-multiselect>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Quận/Huyện</label>
                                            <div class="col-sm-9">
                                                <vue-multiselect v-model="estate.data.district"
                                                                 deselect-label="Can't remove this value"
                                                                 :options="districts.map(p => parseInt(p.id))"
                                                                 :custom-label="opt => districts.find(x => x.id == opt).title"
                                                                 :searchable="true"
                                                                 :allow-empty="false">
                                                    {# <template slot="singleLabel" slot-scope="{ option }"><strong>{{ option.title }}</strong></template> #}
                                                </vue-multiselect>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Phường/Xã</label>
                                            <div class="col-sm-9">
                                                <vue-multiselect v-model="estate.data.ward"
                                                                 deselect-label="Can't remove this value"
                                                                 :options="wards.map(p => parseInt(p.id))"
                                                                 :custom-label="opt => wards.find(x => x.id == opt).title"
                                                                 :searchable="true"
                                                                 :allow-empty="false">
                                                    {# <template slot="singleLabel" slot-scope="{ option }"><strong>{{ option.title }}</strong></template> #}
                                                </vue-multiselect>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Đường/Phố</label>
                                            <div class="col-sm-9">
                                                <vue-multiselect v-model="estate.data.street"
                                                                 deselect-label="Can't remove this value"
                                                                 :options="streets.map(p => parseInt(p.id))"
                                                                 :custom-label="opt => wards.find(x => x.id == opt).title"
                                                                 :searchable="true"
                                                                 :allow-empty="false">
                                                    {# <template slot="singleLabel" slot-scope="{ option }"><strong>{{ option.title }}</strong></template> #}
                                                </vue-multiselect>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-kind"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Dự án</label>
                                            <div class="col-sm-9">
                                                <select class="custom-select mr-sm-2 chosen-select"
                                                        id="buy-select-kind">
                                                    <option value="1">Nhà đất bán</option>
                                                    <option value="2">Nhà đất cho thuê</option>
                                                </select>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="" class="col-sm-3 col-form-label col-form-label-sm">Diện
                                                tích</label>
                                            <div class="col-sm-9">
                                                <input type="number" class="form-control" v-model="estate.data.area"/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="" class="col-sm-3 col-form-label col-form-label-sm">Giá</label>
                                            <div class="col-sm-9">
                                                <input type="number" class="form-control"
                                                       v-model="estate.data.price_show"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="" class="col-sm-3 col-form-label col-form-label-sm">Đơn
                                                vị</label>
                                            <div class="col-sm-9">
                                                <vue-multiselect v-if="estate.data.type==1"
                                                                 v-model="estate.data.price_unit"
                                                                 deselect-label="Can't remove this value"
                                                                 :options="priceUnits.sell.map(p => parseInt(p.id))"
                                                                 :custom-label="opt => priceUnits.sell.find(x => x.id == opt).title"
                                                                 :searchable="false"
                                                                 :allow-empty="false">
                                                    {# <template slot="singleLabel" slot-scope="{ option }"><strong>{{ option.title }}</strong></template> #}
                                                </vue-multiselect>
                                                <vue-multiselect v-if="estate.data.type==2"
                                                                 v-model="estate.data.price_unit"
                                                                 deselect-label="Can't remove this value"
                                                                 :options="priceUnits.rent.map(p => parseInt(p.id))"
                                                                 :custom-label="opt => priceUnits.rent.find(x => x.id == opt).title"
                                                                 :searchable="false"
                                                                 :allow-empty="false">
                                                    {# <template slot="singleLabel" slot-scope="{ option }"><strong>{{ option.title }}</strong></template> #}
                                                </vue-multiselect>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-xs-12">
                                        <div class="form-group">
                                            <label for="itemN-15">Địa chỉ *</label>
                                            <input data-vv-as="Địa chỉ" v-validate="'required'" name="address"
                                                   ref="address" type="text" class="form-control" placeholder=""
                                                   id="address"
                                                   v-model="estate.data.address">
                                            <span v-show="errors.has('address')" class="text-danger"><% errors.first('address') %></span>
                                        </div>
                                    </div>
                                </div>
                                <header class="contentHead">
                                    <h2 class="fontNeuron">Mô tả</h2>
                                </header>
                                <div class="row">

                                    <div class="col-lg-12 col-xs-12">
                                        <div class="form-group">
                                        <textarea class="form-control form-control-sm"
                                                  v-model="estate.data.description"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <header class="contentHead">
                                    <h2 class="fontNeuron">Thông tin khác</h2>
                                </header>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Mặt tiền
                                                (m)</label>
                                            <div class="col-sm-9">
                                                <input type="number" class="form-control" v-model="estate.data.facade"/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Hướng nhà
                                                (m)</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control"
                                                       v-model="estate.data.direction"/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Số
                                                tầng</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" v-model="estate.data.floor"/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Số
                                                phòng ngủ</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" v-model="estate.data.bedroom"/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Đường
                                                vào</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" v-model="estate.data.entry"/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Hướng
                                                ban công</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control"
                                                       v-model="estate.data.balcony_dir"/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Số
                                                toilet</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" v-model="estate.data.wc"/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label col-form-label-sm">Nội thất</label>
                                            <div class="col-sm-9">
                                                <textarea class="form-control form-control-sm"
                                                          v-model="estate.data.interior"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label col-form-label-sm">Pháp lý</label>
                                            <div class="col-sm-9">
                                                <textarea class="form-control form-control-sm"
                                                          v-model="estate.data.legal"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <footer>
                                    <div class="btnArea">
                                        <a class="btn btn-info" v-on:click.stop.prevent="gotoStep(2)">Tiếp tục <i
                                                    class="fi flaticon-arrows"></i></a>
                                    </div>
                                </footer>
                            </div>
                            <div id="step2" v-show="step==2">
                                <header class="contentHead">
                                    <h2 class="fontNeuron">Hình ảnh</h2>
                                    <div class="btnArea">
                                        <a class="btn btn-info" v-on:click.stop.prevent="gotoStep(1)">Thôn tin cơ bản <i
                                                    class="fi flaticon-arrows"></i></a>
                                        <a class="btn btn-success" v-on:click.stop.prevent="submit()">Hoàn tất <i
                                                    class="fi flaticon-arrows"></i></a>
                                    </div>
                                </header>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <progress style="width:100%;" max="100"
                                                  :value.prop="uploadPercentage"></progress>
                                    </div>
                                    <div class="col-xs-12 text-center">
                                        <input type="file" id="files" ref="files" accept="image/*"
                                               multiple v-on:change="handleFilesUpload()" style="display:none;"/>
                                        <button class="btn btn-info" v-on:click="addFiles()">Chọn ảnh tải lên</button>

                                    </div>
                                    <div class="col-xs-12">
                                        <ul class="preview-photos">
                                            <li v-for="(file, key) in files">
                                                <img class="preview" style="height:100px;"
                                                     v-bind:ref="'image'+parseInt( key )"/>
                                                <span class="remove-file" v-on:click="removeFile( key )">Remove</span>
                                            </li>
                                        </ul>

                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="tab-pane" id="tab-rent" role="tabpanel" aria-labelledby="profile-tab">...</div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- signupFormAside -->
    {# <form action="#" class="bgWhite signupFormAside"> #}
    {# <div class="container signupFormAsideHolder"> #}
    {# <span class="icnAbsolute elemenBlock fi flaticon-message"></span> #}
    {# <div class="col-xs-12 col-md-offset-2 col-md-6"> #}
    {# <h3 class="fontNeuron textSecondary">Sign up for our newsletter.</h3> #}
    {# <p>Lorem molestie odio. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p> #}
    {# </div> #}
    {# <div class="col-xs-12 col-md-4"> #}
    {# <div class="form-group"> #}
    {# <input type="email" id="email" class="form-control elemenBlock" placeholder="Your email"> #}
    {# <button type="button" class="buttonReset fi flaticon-navigation"></button> #}
    {# </div> #}
    {# </div> #}
    {# </div> #}
    {# </form> #}


{% endblock %}
{% block foot %}


    <script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    {# <script src="https://unpkg.com/vue-upload-multiple-image@1.1.6/dist/vue-upload-multiple-image.js"></script> #}
    <script src="https://unpkg.com/vue-multiselect@2.1.0"></script>
    <link rel="stylesheet" href="https://unpkg.com/vue-multiselect@2.1.0/dist/vue-multiselect.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/vee-validate/2.1.1/vee-validate.min.js"></script>


    <script>
        //http://jsfiddle.net/q21ygz3h/2/
        const dictionary = {
            en: {
                messages: {
                    alpha: () => 'Some English Message'
                }
            },
            vi: {
                messages: {
                    required: 'Yêu cầu phải điền'
                }
            }
        };
        Vue.use(VeeValidate, {
            locale: 'vi',
            mode: 'aggressive',
            dictionary: dictionary
        });

        Vue.component('vue-multiselect', window.VueMultiselect.default)

        // Vue.component("chosen-select", {
        //     props: {
        //         value: [String, Array],
        //         multiple: Boolean
        //     },
        //     template: `<select :multiple="multiple"><slot></slot></select>`,
        //     mounted() {
        //         $(this.$el)
        //             .val(this.value)
        //             .chosen()
        //             .on("change", e => this.$emit('input', $(this.$el).val()))
        //     },
        //     watch: {
        //         value(val) {
        //             $(this.$el).val(val).trigger('chosen:updated');
        //         }
        //     },
        //     destroyed() {
        //         $(this.$el).chosen('destroy');
        //     }
        // })

        new Vue({
            el: '#app',
            delimiters: ['<%', '%>'],
            data: function () {
                return {
                    estate: {
                        uuid: '{{ uuid }}',
                        data: {
                            type: 1
                        },
                    },
                    hcvn: [],
                    files: [],
                    step: 1,
                    uploadPercentage: 0,
                    types: [{id: 1, title: 'Nhà đất bán'}, {id: 2, title: 'Nhà đất cho thuê'}],
                    kinds: {
                        sell: [
                            {id: 1, title: 'Bán căn hộ chung cư'},
                            {id: 2, title: 'Bán nhà riêng'},
                            {id: 3, title: 'Bán nhà biệt thử, liền kề'},
                            {id: 4, title: 'Bán nhà mặt phố'},
                            {id: 5, title: 'Bán đất nền dự án'},
                            {id: 6, title: 'Bán đất'},
                            {id: 7, title: 'Bán trang trại, khu nghỉ dưỡng'},
                            {id: 8, title: 'Bán kho, nhà xưởng'},
                            {id: 9, title: 'Bán bất động sản khác'}
                        ],
                        rent: [
                            {id: 1, title: 'Cho thuê căn hộ chung cư'},
                            {id: 2, title: 'Cho thuê nhà riêng'},
                            {id: 3, title: 'Cho thuê nhà mặt phố'},
                            {id: 4, title: 'Cho thuê nhà trọ, phòng trọ'},
                            {id: 5, title: 'Cho thuê văn phòng'},
                            {id: 6, title: 'Cho thuê cửa hàng, kiot'},
                            {id: 7, title: 'Cho thuê kho, nhà xưởng, đất'},
                            {id: 8, title: 'Cho thuê bất động sản khác'}
                        ]
                    },
                    priceUnits: {
                        sell: [
                            {id: 1, title: 'Thỏa thuận'},
                            {id: 2, title: 'Triệu'},
                            {id: 3, title: 'Tỷ'},
                            {id: 4, title: 'Trăm nghìn/m2'},
                            {id: 5, title: 'Triệu/m2'}
                        ],
                        rent: [
                            {id: 1, title: 'Thỏa thuận'},
                            {id: 2, title: 'Trăm nghìn/tháng'},
                            {id: 3, title: 'Triệu/tháng'},
                            {id: 4, title: 'Trăm nghìn/m2/tháng'},
                            {id: 5, title: 'Triệu/m2/tháng'},
                            {id: 5, title: 'Nghìn/m2/tháng'}
                        ]
                    },
                    directions: [
                        {id: 1, title: 'Không xác định'},
                        {id: 2, title: 'Đông'},
                        {id: 3, title: 'Tây'},
                        {id: 4, title: 'Nam'},
                        {id: 5, title: 'Bắc'},
                        {id: 6, title: 'Đông Bắc'},
                        {id: 6, title: 'Tây Bắc'},
                        {id: 6, title: 'Tây Nam'},
                        {id: 6, title: 'Đông Nam'},
                    ]
                }
            },
            computed: {
                provinces: function () {
                    console.info(this.hcvn);
                    let provinces = [];
                    for (let i = 0; i < this.hcvn.length; i++) {
                        provinces.push({id: this.hcvn[i][0], title: this.hcvn[i][1],});
                    }
                    return provinces;
                },
                districts: function () {
                    let districts = [];
                    for (let i = 0; i < this.hcvn.length; i++) {
                        if (this.hcvn[i][0] == this.estate.data.province) {
                            for (let k = 0; k < this.hcvn[i][4].length; k++) {
                                districts.push({id: this.hcvn[i][4][k][0], title: this.hcvn[i][4][k][1]});
                            }
                        }
                    }
                    return districts;
                },
                wards: function () {
                    let wards = [];
                    for (let i = 0; i < this.hcvn.length; i++) {
                        if (this.hcvn[i][0] == this.estate.data.province) {
                            for (let k = 0; k < this.hcvn[i][4].length; k++) {
                                if (this.hcvn[i][4][k][0] == this.estate.data.district) {
                                    for (let m = 0; m < this.hcvn[i][4][k][4].length; m++) {
                                        wards.push({
                                            id: this.hcvn[i][4][k][4][m][0],
                                            title: this.hcvn[i][4][k][4][m][1]
                                        });
                                    }
                                }
                            }
                        }
                    }
                    return wards;
                },
                streets: function () {
                    return [];
                },
                price: function(){

                    return [this.estate.data.price_show, this.estate.data.price_unit].join();
                }
            },
            mounted() {
                this.loadHcvn();
            },
            filters: {
                districts: function (value) {
                    console.info(value);
                    if (!value) return [];
                    return this.hcvn.filter(el => el[0] == value);
                }
            },
            methods: {
                gotoStep: function (s) {
                    console.info(s);
                    this.step = s;
                },
                addFiles() {
                    this.$refs.files.click();
                },
                loadHcvn() {
                    axios.get('/filedb/hcvn/sorted')
                        .then((response) => {
                            this.hcvn = response.data;
                        });
                },
                removeFile(key) {
                    this.files.splice(key, 1);
                    this.getImagePreviews();
                },

                // submitFiles() {
                //
                //     let formData = new FormData();
                //
                //     for( var i = 0; i < this.$refs.file.files.length; i++ ){
                //         let file = this.$refs.file.files[i];
                //         formData.append('files[' + i + ']', file);
                //     }
                //
                //     axios.post('/fileupload', formData, {
                //             headers: {
                //                 'Content-Type': 'multipart/form-data'
                //             },
                //         }
                //     ).then(function(){
                //     })
                //         .catch(function(){
                //         });
                // },
                submit() {
                    console.info(this.$validator);
                    this.$validator.validate().then(valid => {

                        if (!valid) {
                            alertify.alert('Lỗi nhập liệu');
                            return;
                        }
                    });
                    /*
                      Initialize the form data
                    */
                    let formData = new FormData();
                    formData.append('model', 'estate_sell');
                    formData.append('model_uuid', '{{ uuid }}');
                    formData.append('lang', '{{ language }}');
                    formData.append('data', JSON.stringify(this.estate.data));

                    /*
                      Iteate over any file sent over appending the files
                      to the form data.
                    */
                    for (var i = 0; i < this.files.length; i++) {
                        let file = this.files[i];

                        formData.append('files[' + i + ']', file);
                    }

                    /*
                      Make the request to the POST /select-files URL
                    */
                    axios.post('/vireal/api/estate/sell',
                        formData,
                        {
                            headers: {
                                'Content-Type': 'multipart/form-data'
                            },
                            onUploadProgress: function (progressEvent) {
                                this.uploadPercentage = parseInt(Math.round((progressEvent.loaded / progressEvent.total) * 100));
                            }.bind(this)
                        }
                    ).then(function (response) {
                        if (response.data.success) {
                            alertify.alert('Đăng bài thành công');
                        } else {
                            alertify.alert('Có lỗi xảy ra, vui lòng liên hệ bộ phận hỗ trợ');
                        }

                    })
                        .catch(function () {
                            console.log('FAILURE!!');
                        });
                },

                /*
                  Handles the uploading of files
                */
                handleFilesUpload() {
                    /*
                      Get the uploaded files from the input.
                    */
                    let uploadedFiles = this.$refs.files.files;

                    /*
                      Adds the uploaded file to the files array
                    */
                    for (var i = 0; i < uploadedFiles.length; i++) {
                        if (/\.(jpe?g|png|gif)$/i.test(uploadedFiles[i].name)) {
                            this.files.push(uploadedFiles[i]);
                        }
                    }

                    /*
                      Generate image previews for the uploaded files
                    */
                    this.getImagePreviews();
                },

                /*
                  Gets the preview image for the file.
                */
                getImagePreviews() {
                    /*
                      Iterate over all of the files and generate an image preview for each one.
                    */
                    for (let i = 0; i < this.files.length; i++) {
                        /*
                          Ensure the file is an image file
                        */
                        if (/\.(jpe?g|png|gif)$/i.test(this.files[i].name)) {
                            /*
                              Create a new FileReader object
                            */
                            let reader = new FileReader();

                            /*
                              Add an event listener for when the file has been loaded
                              to update the src on the file preview.
                            */
                            reader.addEventListener("load", function () {
                                this.$refs['image' + parseInt(i)][0].src = reader.result;
                            }.bind(this), false);

                            /*
                              Read the data for the file in through the reader. When it has
                              been loaded, we listen to the event propagated and set the image
                              src to what was loaded from the reader.
                            */
                            reader.readAsDataURL(this.files[i]);
                        }
                    }
                }
            },
            watch: {
                price() {

                    switch (this.estate.data.type) {
                        case 1:
                            switch (this.estate.data.price_unit) {
                                case 1:
                                case 2:
                                    break;
                                case 3:
                                    this.estate.data.price = this.estate.data.price_show * 1000;
                                    break;
                                case 4:
                                    // trăm nghìn / m2
                                    this.estate.data.price = (this.estate.data.price_show * this.estate.data.area) / 10;
                                    break;
                                case 5:
                                    // triệu / m2
                                    this.estate.data.price = this.estate.data.price_show * this.estate.data.area;
                                    break;
                            }
                            break;
                        case 2:
                            break;
                    }
                    console.info(this.estate.data.price);
                }
            },
        });
    </script>
{% endblock %}