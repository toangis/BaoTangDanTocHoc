{% extends 'layouts/child.volt' %}
{% block content %}
    <!-- findFormBlock -->
    <section class="twoColumns container">
        <!-- contentFiltersHeadingWrap -->
        <header class="contentFiltersHeadingWrap row">
            <div class="col-xs-12 col-sm-10">
                <!-- breadcrumb -->
                {% if not ( breadcrumb is empty ) %}
                    <ol class="breadcrumb breadcrumb1">
                        <li><a href="/">{{ t('trangchu') }}</a></li>
                        {% for item in breadcrumb %}
                            <li><a href="{{url(['for':'bookstore-book-category','id':item['id'],'page':1,'slug':item['slug']|getAttribute(language),'language':language])}}">{{ item['title'].vi }}</a>

                            </li>
                        {% endfor %}
                    </ol>
                {% endif %}
            </div>
            <div class="col-xs-12 col-sm-2">
                <!-- viewFilterLinks -->
                <ul class="list-unstyled viewFilterLinks">
                    <li class="active"><a href="#"><i class="fas fa-th-large"></i></a></li>
                    <li><a href="#"><i class="fas fa-list"></i></a></li>
                </ul>
            </div>
        </header>
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <!-- content -->
                <h1 class="fontNeuron">Tủ sách</h1>
                <div id="content">
                    {{ render_widget('bookstore.book-listing',['limit':10],['viewsDir': widgets_volt,'view':'bookstore-book-listing-1']) }}
                </div>
            </div>
        </div>
    </section>
{% endblock %}