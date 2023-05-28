<div class="row">
    {% for item in items %}
        <div class="col-lg-3 col-md-3">
            <div class="card" style="">
                <img class="card-img-top" src="{{ item.data.image[0].url ? item.data.image[0].url : theme_path ~ '/assets/images/vme1.jpg' }}" alt="">
                <div class="card-body">
                    <h5 class="card-title">{{ item.data.title.vi }}</h5>
                    <p class="card-text"></p>
                    <a href="{{ url(['for':'bookstore-book-single-lang','slug': item.slug, 'language': language]) }}" class="custom-button">{{ t('xemchitiet') }}</a>
                </div>
            </div>
        </div>
    {% endfor %}
</div>