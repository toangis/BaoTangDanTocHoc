{% extends 'layouts/child.volt' %}
{% block content %}

    {{ partial('/modules/vireal/partials/search-child') }}
    <section id="content" class="container pabIndent">
        <!-- contentFiltersHeadingWrap -->
        {{ partial('modules/vireal/pages/profile/partials/header') }}
        <!-- userProfile -->
        <div class="userProfile">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-lg-3">
                    <!-- profileSidebar -->
                    {{ partial('modules/vireal/pages/profile/partials/sidebar') }}
                </div>
                <div class="col-xs-12 col-sm-8 col-lg-9">
                    {{ render_widget('vireal.estate-sell-listing',['limit':10,'current_page':current_page,'filter_attr':'user','user_uuid':user['uuid']],['viewsDir': widgets_volt,'view':'vireal-estate-sell-listing-2']) }}
                </div>
            </div>
        </div>
    </section>
{% endblock %}

{% block foot %}
    {{partial('/modules/vireal/pages/profile/partials/vuejs')}}
{% endblock %}