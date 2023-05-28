<aside class="profileSidebar">
    <header class="head">
        <div class="imgProfile">
            <div style="background:url({{ user['data'].photo.url }});background-size:cover;width:75px;height:75px;"></div>
        </div>
        <div class="info">
            <span class="text">{{ user['username'] }}</span>
            <span class="text"><a href="#" class="link">Đổi mật khẩu</a></span>
        </div>
    </header>
    <ul class="navUser list-unstyled">
        <li>
            <a href="{{ url(['for':'vireal-profile-index']) }}">
                <i class="far fa-user"></i>
                <span>Thông tin tài khoản</span>
            </a>
        </li>
        <li>
            <a href="{{ url(['for':'vireal-profile-sell-post']) }}">
                <i class="fi flaticon-house"></i>
                <span>Tin của tôi</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="far fa-heart"></i>
                <span>Favorited Properties</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-plus"></i>
                <span>Submit Property</span>
            </a>
        </li>
        <li>
            <a href="{{ url(['for':'changepassword']) }}">
                <i class="fa fa-sign-out-alt"></i>
                <span>Đổi mật khẩu</span>
            </a>
        </li>
        <li>
            <a href="{{ url(['for':'logout']) }}">
                <i class="fa fa-sign-out-alt"></i>
                <span>Đăng xuất</span>
            </a>
        </li>
    </ul>
</aside>