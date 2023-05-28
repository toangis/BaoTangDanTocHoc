<div class="row">
{% for item in items %}
    <div class="col-lg-3 col-md-3">
        <div class="card" style="">
            <img class="card-img-top" src="{{ theme_path }}/assets/images/tapchi/tapchi.jpg" alt="">
            <div class="card-body">
                <h5 class="card-title">{{ item.data.title.vi }}</h5>
                <p class="card-text"></p>
                <a href="{{ url(['for':'bookstore-magazine-single-lang','slug': item.slug, 'language': language]) }}" >
                    <img class="xt-tapchi" src="{{ theme_path }}/assets/images/{{ language }}/xt.png">
                </a>
            </div>
        </div>
    </div>
{% endfor %}
</div>