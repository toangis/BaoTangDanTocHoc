<head>

</head>

{{ partial('partials/aside') }}
<div class="top-header">
    <div class="container">
        <div class="row">
        </div>
    </div>
</div>
<nav class="navbar" id="masthead">
    <div class="logo"><a href="/{{ language }}"> <img src="{{ theme_path }}/assets/images/{{ language }}/logo-text.png" alt="Image"> </a>
    </div>
    <div class="right-bar">
        <!-- end hamburger-menu -->
        <div class="top-bar">
            <div class="navbar-languages">
                <a href="/vi" class="flag-icon flag-icon-vnm"></a>
                <a href="/en" class="flag-icon flag-icon-ukf"></a>
                <a href="/fr" class="flag-icon flag-icon-fra"></a>
            </div>
            <!-- end navbar-button -->
            <div class="search-button"> <i class="far fa-search"></i> </div>
        </div>          
        <div class="site-menu">
            {{ render_widget('catalog-listing',['id':0,
            'ul_class':'menu','ul_class_submenu':'submenu','li_class':'','ul':true,'disable_parent_link':false, 'depth':
            3],['viewsDir': widgets_volt,'view':'top-menu']) }}
        </div>
    </div> 
    <div class="hamburger-menu">
        <svg class="hamburger" width="30" height="30" viewBox="0 0 30 30">
            <path class="line line-top" d="M0,9h30" />
            <path class="line line-center" d="M0,15h30" />
            <path class="line line-bottom" d="M0,21h30" />
        </svg>
    </div>
</nav>
