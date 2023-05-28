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

                            <div id="step1" v-show="step==1">

                                <header class="contentHead">
                                    <h2 class="fontNeuron">Thông tin cơ bản</h2>
                                    <div class="btnArea">
                                        <a class="btn btn-info" v-on:click.stop.prevent="submit()">Đăng tin <i class="fi flaticon-arrows"></i></a>
                                    </div>
                                </header>
                                <div class="row">

                                    <div class="col-lg-12 col-xs-12">
                                        <div class="form-group">
                                            <label for="itemN-15">Tiêu đề*</label>
                                            <input data-vv-as="Tiêu đề" v-validate="'required'" name="title" ref="title" type="text" class="form-control" placeholder="House" id="title"
                                                   v-model="estate.data.title">
                                            <span v-show="errors.has('title')" class="text-danger"><% errors.first('title') %></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-xs-12">
                                        <div class="form-group">
                                            <label for="itemN-15">Nội dung đăng tin*</label>
                                            <textarea name="description" ref="description" class="form-control form-control-sm" v-validate="'required'" v-model="estate.data.description"></textarea>
                                            <span v-show="errors.has('description')" class="text-danger"><% errors.first('description') %></span>
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
                                                <vue-multiselect v-model="estate.data.area"
                                                                 deselect-label="Can't remove this value"
                                                                 :options="areas.map(p => parseInt(p.id))"
                                                                 :custom-label="opt => areas.find(x => x.id == opt).title"
                                                                 :searchable="true"
                                                                 :allow-empty="false">
                                                    {# <template slot="singleLabel" slot-scope="{ option }"><strong>{{ option.title }}</strong></template> #}
                                                </vue-multiselect>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="" class="col-sm-3 col-form-label col-form-label-sm">Giá</label>
                                            <div class="col-sm-9">
                                                <vue-multiselect v-if="estate.data.type==1" v-model="estate.data.price"
                                                                 deselect-label="Can't remove this value"
                                                                 :options="prices.buy.map(p => parseInt(p.id))"
                                                                 :custom-label="opt => prices.buy.find(x => x.id == opt).title"
                                                                 :searchable="true"
                                                                 :allow-empty="false">
                                                </vue-multiselect>
                                                <vue-multiselect v-if="estate.data.type==2" v-model="estate.data.price"
                                                                 deselect-label="Can't remove this value"
                                                                 :options="prices.rent.map(p => parseInt(p.id))"
                                                                 :custom-label="opt => prices.rent.find(x => x.id == opt).title"
                                                                 :searchable="true"
                                                                 :allow-empty="false">
                                                </vue-multiselect>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <header class="contentHead">
                                    <h2 class="fontNeuron">Thông tin liên hệ</h2>
                                </header>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Tên liên hệ (*)</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" v-model="estate.data.contact_name"/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Điện thoại (*)</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" v-model="estate.data.contact_tel"/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Email</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" v-model="estate.data.contact_email"/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group row">
                                            <label for="buy-select-type"
                                                   class="col-sm-3 col-form-label col-form-label-sm">Địa chỉ</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" v-model="estate.data.contact_address"/>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <footer>
                                    <div class="btnArea">
                                        <a class="btn btn-info" v-on:click.stop.prevent="submit()">Đăng tin <i class="fi flaticon-arrows"></i></a>
                                    </div>
                                </footer>
                            </div>
                            <div id="step2" v-show="step==2">
                                <header class="contentHead">
                                    <h2 class="fontNeuron">Hình ảnh</h2>
                                    <div class="btnArea">
                                        <a class="btn btn-info" v-on:click.stop.prevent="gotoStep(1)">Thôn tin cơ bản <i class="fi flaticon-arrows"></i></a>
                                        <a class="btn btn-success" v-on:click.stop.prevent="submit()">Hoàn tất <i class="fi flaticon-arrows"></i></a>
                                    </div>
                                </header>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <progress style="width:100%;" max="100" :value.prop="uploadPercentage"></progress>
                                    </div>
                                    <div class="col-xs-12 text-center">
                                        <input type="file" id="files" ref="files" accept="image/*"
                                               multiple v-on:change="handleFilesUpload()" style="display:none;"/>
                                        <button class="btn btn-info" v-on:click="addFiles()">Chọn ảnh tải lên</button>

                                    </div>
                                    <div class="col-xs-12">
                                        <ul class="preview-photos">
                                            <li v-for="(file, key) in files">
                                                <img class="preview" style="height:100px;" v-bind:ref="'image'+parseInt( key )"/>
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
{#    <form action="#" class="bgWhite signupFormAside">#}
{#        <div class="container signupFormAsideHolder">#}
{#            <span class="icnAbsolute elemenBlock fi flaticon-message"></span>#}
{#            <div class="col-xs-12 col-md-offset-2 col-md-6">#}
{#                <h3 class="fontNeuron textSecondary">Sign up for our newsletter.</h3>#}
{#                <p>Lorem molestie odio. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>#}
{#            </div>#}
{#            <div class="col-xs-12 col-md-4">#}
{#                <div class="form-group">#}
{#                    <input type="email" id="email" class="form-control elemenBlock" placeholder="Your email">#}
{#                    <button type="button" class="buttonReset fi flaticon-navigation"></button>#}
{#                </div>#}
{#            </div>#}
{#        </div>#}
{#    </form>#}


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
                messages:{
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
                    types: [{id: 1, title: 'Nhà đất mua'}, {id: 2, title: 'Nhà đất thuê'}],
                    kinds: {
                        sell: [
                            {id: 1, title: 'Mua căn hộ chung cư'},
                            {id: 2, title: 'Mua nhà riêng'},
                            {id: 3, title: 'Mua nhà biệt thử, liền kề'},
                            {id: 4, title: 'Mua nhà mặt phố'},
                            {id: 5, title: 'Mua đất nền dự án'},
                            {id: 6, title: 'Mua đất'},
                            {id: 7, title: 'Mua trang trại, khu nghỉ dưỡng'},
                            {id: 8, title: 'Mua kho, nhà xưởng'},
                            {id: 9, title: 'Mua bất động sản khác'}
                        ],
                        rent: [
                            {id: 1, title: 'Thuê căn hộ chung cư'},
                            {id: 2, title: 'Thuê nhà riêng'},
                            {id: 3, title: 'Thuê nhà mặt phố'},
                            {id: 4, title: 'Thuê nhà trọ, phòng trọ'},
                            {id: 5, title: 'Thuê văn phòng'},
                            {id: 6, title: 'Thuê cửa hàng, kiot'},
                            {id: 7, title: 'Thuê kho, nhà xưởng, đất'},
                            {id: 8, title: 'Thuê bất động sản khác'}
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
                    ],
                    areas: [
                        {id: 1, title: 'Chưa xác đinh'},
                        {id: 2, title: '<= 30 m2'},
                        {id: 3, title: '30 - 50 m2'},
                        {id: 4, title: '50 - 80 m2'},
                        {id: 5, title: '80 - 100 m2'},
                        {id: 6, title: '150 - 200 m2'},
                        {id: 7, title: '200 - 250 m2'},
                        {id: 8, title: '250 - 300 m2'},
                        {id: 9, title: '300 - 500 m2'},
                        {id: 10, title: '>= 500 m2'}
                    ],
                    prices: {
                        buy: [
                            {id: 1, title: 'Thỏa thuận'},
                            {id: 2, title: '<= 500 triệu'},
                            {id: 3, title: '500 - 800 triệu'},
                            {id: 4, title: '800 triều - 1 tỷ'},
                            {id: 5, title: '1 - 2 tỷ'},
                            {id: 6, title: '2 - 3 tỷ'},
                            {id: 7, title: '3 - 5 tỷ'},
                            {id: 8, title: '5 - 7 tỷ'},
                            {id: 9, title: '7 - 10 tỷ'},
                            {id: 10, title: '10 - 20 tỷ'},
                            {id: 11, title: '20 - 30 tỷ'},
                            {id: 12, title: '> 30 tỷ'}
                        ],
                        rent:[
                            {id: 1, title: 'Thỏa thuận'},
                            {id: 2, title: '<= 500 triệu'},
                            {id: 3, title: '500 - 800 triệu'},
                            {id: 4, title: '800 triều - 1 tỷ'},
                            {id: 5, title: '1 - 2 tỷ'},
                            {id: 6, title: '2 - 3 tỷ'},
                            {id: 7, title: '3 - 5 tỷ'},
                            {id: 8, title: '5 - 7 tỷ'},
                            {id: 9, title: '7 - 10 tỷ'},
                            {id: 10, title: '10 - 20 tỷ'},
                            {id: 11, title: '20 - 30 tỷ'},
                            {id: 12, title: '> 30 tỷ'}
                        ]
                    }
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
                gotoStep: function(s){
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
                removeFile( key ){
                    this.files.splice( key, 1 );
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

                        // formData.append('files[' + i + ']', file);
                    }

                    /*
                      Make the request to the POST /select-files URL
                    */
                    axios.post('/vireal/api/estate/buy',
                        formData,
                        {
                            headers: {
                                'Content-Type': 'multipart/form-data'
                            },
                            onUploadProgress: function( progressEvent ) {
                                this.uploadPercentage = parseInt( Math.round( ( progressEvent.loaded / progressEvent.total ) * 100 ));
                            }.bind(this)
                        }
                    ).then(function (response) {
                        if(response.data.success){
                            alertify.alert('Đăng bài thành công');
                        }else{
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
                        if ( /\.(jpe?g|png|gif)$/i.test( uploadedFiles[i].name ) ) {
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
            }
        });
    </script>
{% endblock %}