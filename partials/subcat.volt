{% if not category_children is empty %}
<div class="container" style="display: block;">
    <div class="row" style="--bs-gutter-x: 3rem;">
        {% for cat in category_children %}
            <div class="col-lg-4 col-md-4 col-12 mt-4 ">
                <a href="/{{ language }}/c/category-{{ cat.id }}/{{ cat.slug|getAttribute(language) }}-p1.html">
                    <div class="subcat">
                        {{ render_widget('post-listing',['catalog':'category','category':[cat.id],
                            'limit':1,'include_children':true],['viewsDir':
                            widgets_volt,'view':'index/post-listing-3']) }}
                        <h2 class="mt-2 subcat-title"><a style="text-decoration: none;" 
                                            href="/{{ language }}/c/category-{{ cat.id }}/{{ cat.slug|getAttribute(language) }}-p1.html">{{ cat.title | getAttribute(language) }}</a>
                        </h2>
                    </div>
                </a>
            </div>
        {% endfor %}
    </div>
</div>
{% endif %}