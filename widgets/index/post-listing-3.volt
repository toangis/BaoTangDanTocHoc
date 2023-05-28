{% set leng = items | length %}
{% if leng > 0 %}
    {% for item in items %}
        <div class="lazy"
             data-bg="{{ item.data.image[0].url ? item.data.image[0].url : theme_path ~ '/assets/images/vme1.jpg' }}"
             style="width: 100%; padding-top: 66%; background-size: contain; background-repeat: no-repeat; background-position: center; border-radius: 4px;"></div>
    {% endfor %}
{% else %}
    <div class="lazy" data-bg="{{ theme_path ~ '/assets/images/vme1.jpg' }}"
         style="width: 100%; padding-top: 66%; background-size: cover; background-position: center;  border-radius: 4px;"></div>
{% endif %}