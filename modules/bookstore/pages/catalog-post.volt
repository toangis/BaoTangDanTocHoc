{% extends 'layouts/default.volt' %}
{% block content %}

<!--====================  breadcrumb area ====================-->
<div class="breadcrumb-area bg-img" data-bg="{{ theme_path }}/assets/img/backgrounds/funfact-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col">

                <div class="page-banner text-center">
                    <h1>Công trình</h1>
                    <ul class="page-breadcrumb">
                        <li><a href="/">{{ t('trangchu') }}</a></li>
                        <li><a href="/{{ language }}/c/category-4/tintuc-p1.html">Công trình</a></li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
</div>
<!--====================  End of breadcrumb area  ====================-->
<div class="page-wrapper section-space--inner--120">
  <!--Projects section start-->
  <div class="project-section">
      <div class="container">
          <div class="row">
              <div class="col-lg-12">
                  <div class="project-item-wrapper">
                      <div class="row">

                        {% for post in items %}
                          <div class="col-lg-4 col-sm-6 col-12 section-space--bottom--30">
                              <div class="service-grid-item service-grid-item--style2">
                                  <div class="service-grid-item__image">
                                      <div class="service-grid-item__image-wrapper">
                                          <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html">
                                              <img src="{{post.data.image[0].url}}" class="img-fluid" alt="">
                                          </a>
                                      </div>

                                  </div>
                                  <div class="service-grid-item__content">
                                      <h3 class="title">
                                          <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html">{{ post.data.title|getAttribute(language) }}</a>
                                      </h3>
                                      <p class="subtitle">{{ post.data.desc|getAttribute(language)|striptags }}</p>
                                      <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html" class="see-more-link">CHI TIẾT</a>
                                  </div>
                              </div>
                          </div>                    
                          {% endfor %}

                      </div>
                  </div>
              </div>
          </div>

          <div class="row section-space--top--60">
              <div class="col">
                  <ul class="page-pagination">
                    {% if(pages > 0) %}
                      {% for i in 1..pages %}
                      <li><a href="/{{ language }}/c/category-{{category}}/{{ slug }}-p{{ i }}.html">{{ i }}</a></li>
                      {% endfor %}
                    {% endif %}
                  </ul>
              </div>
          </div>

      </div>
  </div>
  <!--Projects section end-->
  </div>

{% endblock %}