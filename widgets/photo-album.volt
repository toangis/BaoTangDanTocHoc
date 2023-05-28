{% set leng = album.data.items | length %}
{% if leng == 1 %}
<div style="width: 50%; margin-left: 25%;">
    <div>
        <img src="{{ album.data.items[0].url }}">
    </div>
    <div class="caption" style="width: 100%;color: #000000;text-align: left;">
        <h3 class="">{{ album.data.items[0].title | getAttribute(language) }}</h3>
        <div>
            {{ album.data.items[0].desc | getAttribute(language) }}
        </div>
    </div>
</div>
{% else %}
<div class="owl-carousel photo-album-carousel" style="width: 50%; margin-left: 25%;">
    {% for img in album.data.items %}
    <div class="item">
        <div>
            <img src="{{ img.url }}">
        </div>
        <div class="caption" style="position: absolute;bottom: 0;background: rgba(0,0,0,0.2);width: 100%;color: #fff;text-align: center;">
            <h3 class="">{{ img.title | getAttribute(language) }}</h3>
            <div>
                {{ img.desc | getAttribute(language) }}
            </div>
        </div>
    </div>
    {% endfor %}
</div>
{% endif %}