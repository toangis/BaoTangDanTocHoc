{{ partial('partials/search-box') }}
<aside class="side-widget">
    <div class="d-flex justify-content-between" style="width:90%;">
        <a href="/"><figure class="logo"><img src="{{theme_path}}/assets/images/logo1.png" alt="Image"> </figure></a>
        <div class="navbar-languages d-flex flex-row"><span class="flag-icon flag-icon-vnm"></span><span
                    class="flag-icon flag-icon-eng"></span><span class="flag-icon flag-icon-fra"></span></div>
    </div>

    <!-- end logo -->
    <div class="display-mobile">
        <div class="site-menu">
            {{ render_widget('catalog-listing',['id':0,
            'ul_class':'menu','ul_class_submenu':'submenu','li_class':'','ul':true,'disable_parent_link':false, 'depth':
            1],['viewsDir': widgets_volt,'view':'aside-menu']) }}
        </div>
        <!-- end site-menu -->
    </div>
    <!-- end display-mobile -->
</aside>