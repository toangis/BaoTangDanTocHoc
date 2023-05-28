{% extends 'layouts/child.volt' %}
{% block content %}

    {{ partial('/modules/vireal/partials/search-child') }}
    <section id="content" class="container pabIndent">
        {{ partial('modules/vireal/pages/profile/partials/header') }}
        <!-- userProfile -->
        <div class="userProfile">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-lg-3">
                    <!-- profileSidebar -->
                    {{ partial('modules/vireal/pages/profile/partials/sidebar') }}
                </div>
                <div class="col-xs-12 col-sm-8 col-lg-9">
                    <!-- accountData -->
                    <div class="accountData">
                        <form>
                            <div class="head">
                                <h4 class="fontNeuron">Thông tin cơ bản</h4>
                            </div>
                            <div class="accountHolder">
                                <div class="imgProfile">
                                    <div class="imgThumbnail">
                                        <img ref="avatar" id="avatar" src="{{ user['data'].photo.url }}" alt="" width="200" height="200">
                                        <div class="btnArea">
                                            <a href="#" class="btn btn-info" v-on:click="addFile()"><i class="fa fa-upload"></i> Upload Photo</a>
                                            <input type="file" id="file" ref="file" accept="image/*"
                                                   v-on:change="handleFilesUpload()" style="display:none;"/>

                                        </div>
                                    </div>
                                    <progress style="width:100%;" max="100"
                                              :value.prop="uploadPercentage"></progress>
                                    <span class="text text-center">*minimum 200px x 200px</span>
                                </div>
                                <div class="accountContent">
                                    <div class="form-group">
                                        <label for="itemN-1">Họ và tên</label>
                                        <input v-model="user.data.name" value="" type="text" class="form-control" placeholder="Ali Tufan" id="itemN-1">
                                    </div>
                                    <div class="form-group">
                                        <label for="itemN-2">Email</label>
                                        <input v-model="user.email" type="email" class="form-control" placeholder="polygontheme@gmail.com" id="itemN-2">
                                    </div>
                                    <div class="form-group">
                                        <label for="itemN-3">Mobile</label>
                                        <input v-model="user.data.mobile" value="{{ user.data.mobile }}" type="tel" class="form-control" placeholder="0402 2020 202" id="itemN-3">
                                    </div>
                                    <div class="form-group">
                                        <label for="itemN-4">Giới thiệu</label>
                                        <quill-editor v-model="user.data.intro"
                                                      ref="introEditor"
                                                      :options="introEditorOption"></quill-editor>

{#                                        <textarea v-model="user.data.intro" id="itemN-4" class="form-control" placeholder=""></textarea>#}
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- accountData -->
                    <div class="accountData">
                        <form>
                            <div class="head">
                                <h4 class="fontNeuron">Thông tin mạng xã hội</h4>
                            </div>
                            <div class="accountHolder">
                                <div class="accountContent">
                                    <div class="row">
                                        <div class="col-xs-12 col-md-6">
                                            <div class="form-group">
                                                <label for="itemN-8">Facebook URL</label>
                                                <input v-model="user.data.fb_url" type="text" class="form-control" placeholder="www.facebook.com/PolygonTheme" id="itemN-8">
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-6">
                                            <div class="form-group">
                                                <label for="itemN-9">Twitter URL</label>
                                                <input v-model="user.data.twitter_url" type="text" class="form-control" placeholder="PolygonTheme" id="itemN-9">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12 col-md-6">
                                            <div class="form-group">
                                                <label for="itemN-10">Linkedin URL</label>
                                                <input v-model="user.data.linkedin_url" type="text" class="form-control" placeholder="PolygonTheme" id="itemN-10">
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <div class="form-group">
                                                <label for="itemN-11">Instagram URL</label>
                                                <input v-model="user.data.insta_url" type="text" class="form-control" placeholder="PolygonTheme" id="itemN-11">
                                            </div>
                                        </div>
                                    </div>
                                    <button v-on:click.stop.prevent="submit()" type="submit" class="btn alighRight btnSecondary buttonL fontNeuron" >Cập nhật</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
{% endblock %}

{% block foot %}
    {{partial('modules/vireal/pages/profile/partials/vuejs')}}
{% endblock %}