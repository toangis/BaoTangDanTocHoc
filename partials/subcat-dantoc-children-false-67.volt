{% if not category_children is empty %}
<div class="row" style="--bs-gutter-x: 3rem;">
    {% for cat in category_children %}
    <div class="col-lg-3 col-md-3 col-12 mt-5">
        <a href="/{{ language }}/c/category-{{ cat.id }}/{{ cat.slug|getAttribute(language) }}-p1.html">
            <div class="subcat-76" style="background-image: url('{{ theme_path }}/assets/images/vme1.jpg');">
                <div class="background-subcat-76" style=""></div>
                <h2 class="subcat-title-76">
                        {{ cat.title | getAttribute(language) }}
                </h2>
            </div>
        </a>
    </div>
    {% endfor %}
</div>
{% endif %}