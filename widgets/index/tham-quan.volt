{% for item in items %}
<div class="content">
    <h5>{{ item.data.title|getAttribute(language) }}</h5>
    <p>{{ item.data.detail|getAttribute(language) }}</p>
</div>
{% endfor %}