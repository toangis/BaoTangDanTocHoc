<div class="row justify-content-center">
    {% for item in items %}
    <div class="col-lg-4 col-md-6">
        <!-- <a href="{{ url(['for':'frontend-post-lang','slug':item.slug|getAttribute(language), 'language':language]) }}"> -->
        <div class="exhibition-box">
            <a
                href="{{ url(['for':'frontend-post-lang','slug':item.slug|getAttribute(language), 'language':language]) }}">
                <div class="subcat">
                    <img class="lazy" style="width: 100%;"
                        src="{{ item.data.image[0].url ? item.data.image[0].url : theme_path ~ '/assets/images/vme1.jpg' }}">
                    <!-- <div class="lazy" data-bg="{{ item.data.image[0].url ? item.data.image[0].url : theme_path ~ '/assets/images/vme1.jpg' }}" style="width: 100%; padding-top: 66%; background-size: cover; background-position: center"></div> -->
                    <div class="content-box">
                        <h2 class="subcat-title mt-2">
                            <a
                                href="{{ url(['for':'frontend-post-lang','slug':item.slug|getAttribute(language), 'language':language]) }}">{{
                                item.data.title|getAttribute(language) }}</a>
                        </h2>
                        <p>{{ item.data.desc|getAttribute(language) }}</p>
                    </div>
                </div>

            </a>
        </div>
        <!-- </a> -->
    </div>
    {% endfor %}
    <!-- <div class="col-12 text-center mt-5"><a href="/{{ language }}/c/category-130/tin-tuc-p1.html"><img
                class="btn-more-custom" src="{{ theme_path }}/assets/images/{{ language }}/xt.png"></a></div> -->
</div>