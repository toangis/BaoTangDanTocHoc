
    {% for item in items %}
    <div class="col-lg-2 col-md-2 col-12 mt-4">
        <a href="/{{ language }}/p/{{ item.slug | getAttribute(language) }}.html">
            <div class="subcat">
                <div class="lazy"
             data-bg="{{ item.data.image[0].url ? item.data.image[0].url : theme_path ~ '/assets/images/vme1.jpg' }}"
             style="width: 100%; padding-top: 140%; background-size: contain; background-repeat: no-repeat; background-position: center; border-radius: 4px;"></div>
                <h2 class="mt-4 subcat-title"><a style="text-decoration: none;"
                        href="/{{ language }}/p/{{ item.slug | getAttribute(language) }}.html">{{ item.data.title|getAttribute(language) }}</a>
                </h2>
            </div>
        </a>
    </div>
    {% endfor %}