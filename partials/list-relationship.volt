<nav class="navbar">
    <div class="logo"><a href="/"> <img src="{{ theme_path }}/assets/images/logo1.png" alt="Image">
        </a></div>
    <div class="site-menu">
        {{ render_widget('catalog-listing',['id':0, 'ul_class':'menu','ul_class_submenu':'submenu','li_class':'','ul':true,'disable_parent_link':false, 'depth': 3],['viewsDir': widgets_volt,'view':'top-menu']) }}
    </div>

    <!-- end hamburger-menu -->
    <div class="navbar-languages"><span class="flag-icon flag-icon-vnm"></span><span
                class="flag-icon flag-icon-eng"></span><span class="flag-icon flag-icon-fra"></span></div>
    <!-- end navbar-button -->
    <div class="search-button"> <i class="far fa-search"></i> </div>
    <div class="hamburger-menu">
        <svg class="hamburger" width="30" height="30" viewBox="0 0 30 30">
            <path class="line line-top" d="M0,9h30"/>
            <path class="line line-center" d="M0,15h30"/>
            <path class="line line-bottom" d="M0,21h30"/>
        </svg>
    </div>
</nav>