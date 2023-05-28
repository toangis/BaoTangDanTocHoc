{% if not ( breadcrumb is empty ) %}
    <ol class="breadcrumb breadcrumb1">
{#        <li><a href="/"><img src="{{ theme_path }}/assets/images/logo1.png" style="height:32px;"/></a></li>#}
        {% for item in breadcrumb %}
            <li><a href="{{url(['for':'catalog-single','catalog':'category','category_id':item['id'],'page':1,'slug':item['slug']|getAttribute(language),'language':language])}}">{{ item['title']|getAttribute(language)}}</a>
            </li>
        {% endfor %}
    </ol>
{% endif %}

