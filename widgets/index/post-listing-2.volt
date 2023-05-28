
    {% for item in items %}
        <div class="lazy" data-bg="{{ item.data.image[0].url ? item.data.image[0].url : theme_path ~ '/assets/images/vme1.jpg' }}" style="width: 100%; padding-top: 66%; background-size: cover; background-position: center"></div>
    {% endfor %}