{#<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.6.11/vue.min.js"></script>#}
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.12"></script>
<script src="https://unpkg.com/http-vue-loader"></script>

<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
{# <script src="https://unpkg.com/vue-upload-multiple-image@1.1.6/dist/vue-upload-multiple-image.js"></script> #}
<script src="https://unpkg.com/vue-multiselect@2.1.0"></script>
<link rel="stylesheet" href="https://unpkg.com/vue-multiselect@2.1.0/dist/vue-multiselect.min.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/vee-validate/2.1.1/vee-validate.min.js"></script>
<script src="https://unpkg.com/vue-recaptcha@latest/dist/vue-recaptcha.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/vue-alertify@1.1.0/dist/vue-alertify.min.js"></script>

<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/quill@1.3.6/dist/quill.core.css'>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/quill@1.3.6/dist/quill.snow.css'>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/quill@1.3.6/dist/quill.bubble.css'>
<script src='https://cdn.jsdelivr.net/npm/quill@1.3.6/dist/quill.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/vue-quill-editor@3.0.6/dist/vue-quill-editor.min.js'></script>
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
    let quillComponent = {
        template: `<div>
	<slot name="custom-toolbar"></slot>
	<slot name="content"></slot>
	</div>`,
        data: function () {
            return {
                quill: null
            }
        },
        props: {
            placeholder: {
                type: String,
                default: 'type something great'
            },

            toolbar: {
                type: Array,
                default: [['bold', 'italic', 'blockquote', 'code', 'list', 'image']]
            }
        },

        mounted() {
            let customToolbar = this.$slots["custom-toolbar"];
            let customToolbarHTML = customToolbar ? customToolbar[0].elm : false;
            let quillCustomToolbarId = 'custom-quilljs-toolbar';
            if (customToolbarHTML) {
                customToolbarHTML.id = quillCustomToolbarId;
            }
            var toolbarOptions = [
                ['bold', 'italic', 'underline', 'strike'],        // toggled buttons
                ['blockquote', 'code-block'],

                [{'header': 1}, {'header': 2}],               // custom button values
                [{'list': 'ordered'}, {'list': 'bullet'}],
                [{'script': 'sub'}, {'script': 'super'}],      // superscript/subscript
                [{'indent': '-1'}, {'indent': '+1'}],          // outdent/indent
                ['link', 'image', 'video', 'formula'],                         // text direction

                [{'size': ['small', false, 'large', 'huge']}],  // custom dropdown
                [{'header': [1, 2, 3, 4, 5, 6, false]}],

                [{'color': []}, {'background': []}],          // dropdown with defaults from theme
                [{'font': []}],
                [{'align': []}],

                ['clean']                                         // remove formatting button
            ];

            let quill = new Quill(this.$el, {
                theme: 'snow',
                placeholder: this.placeholder,
                modules: {
                    // toolbar: this.toolbar

                    imageResize: {
                        displaySize: true,
                        modules: ['Resize', 'DisplaySize', 'Toolbar']
                    },
                    toolbar: {
                        container: toolbarOptions,
                        handlers: {
                            image: function () {
                                document.getElementById('file').click()
                            }
                        }
                    }
                }
            });

            quill.on('text-change', (delta, oldDelta, source) => {
                let html = quill.root.innerHTML;
                this.$emit('change', html, delta, oldDelta, source);
            });
            this.quill = quill;
        }
    };
    Vue.config.devtools = true;
    Vue.mixin({ delimiters: ['<%','%>'] });
    Vue.use(VueAlertify);
    // Vue.use(window.VueQuillEditor)
    Vue.use(VueQuillEditor);
    Vue.use(VeeValidate, {
        locale: 'vi',
        mode: 'aggressive',
        dictionary: dictionary
    });
    console.info(window.VueQuillEditor);

    Vue.component('vue-multiselect', window.VueMultiselect.default);
    // Vue.component('vue-quill-editor', window.VueQuillEditor.quill);


    var vm = new Vue({
        el: '#app',
        components: {
            'form-search': httpVueLoader('/vireal/vue/form-search.vue'),
            'form-login': httpVueLoader('/vireal/vue/form-login.vue'),
            // quill: quillComponent
        },
        data: function () {
            return {
                hcvn: [],
                uploadPercentage:0,
                user: {
                    username: '{{ user['username'] }}',
                    email: '{{ user['email'] }}',
                    data: {
                        name: '{{ user['data'].name }}',
                        mobile: '{{ user['data'].mobile }}',
                        intro: {{ user['data'].intro | nl2br | json_encode}},
                        fb_url: '{{ user['data'].fb_url }}',
                        twitter_url: '{{ user['data'].twitter_url }}',
                        insta_url: '{{ user['data'].insta_url }}',
                        linkedin_url: '{{ user['data'].linkedin_url }}',
                    }
                },
                introEditorOption: {
                    theme: 'snow'
                }
            }
        },
        mounted() {
            this.loadHcvn();
        },
        methods: {
            loadHcvn() {
                axios.get('/filedb/hcvn/sorted')
                    .then((response) => {
                        this.hcvn = response.data;
                    });
            },

            addFile() {
                this.$refs.file.click();
            },
            submit() {
                /*
                  Initialize the form data
                */
                let formData = new FormData();
                formData.append('file', this.avatar);
                formData.append('data', JSON.stringify(this.user.data));

                /*
                  Make the request to the POST /select-files URL
                */
                axios.post('/vireal/api/profile/save',
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
                    console.info(response.data);
                    if (response.data.success) {

                        // alertify.alert('Đăng bài thành công');
                    } else {
                        // alertify.alert('Có lỗi xảy ra, vui lòng liên hệ bộ phận hỗ trợ');
                    }

                })
                    .catch(function () {
                        console.log('FAILURE!!');
                    });
            },
            handleFilesUpload() {
                let uploadedFiles = this.$refs.file.files;

                    if (/\.(jpe?g|png|gif)$/i.test(uploadedFiles[0].name)) {
                        this.avatar = uploadedFiles[0];
                    }
                this.getImagePreviews();
            },

            /*
              Gets the preview image for the file.
            */
            getImagePreviews() {

                        let reader = new FileReader();
                        reader.addEventListener("load", function () {
                            this.$refs.avatar.src = reader.result;
                        }.bind(this), false);

                        reader.readAsDataURL(this.avatar);


            },
            textChanged(html, delta) {
                this.post.data.message = html;
            },

        },
        computed: {
            provinces: function () {
                let provinces = [];
                for (let i = 0; i < this.hcvn.length; i++) {
                    provinces.push({id: this.hcvn[i][0], title: this.hcvn[i][1],});
                }
                return provinces;
            }
        }
    });
</script>

