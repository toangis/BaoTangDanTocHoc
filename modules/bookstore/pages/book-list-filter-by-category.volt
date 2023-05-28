{% extends 'layouts/child.volt' %}
{% block content %}
    {{ partial('partials/slider') }}
    <!-- findFormBlock -->
{#    {{ partial('/modules/bookstore/partials/search-child') }}#}
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
                <!-- <h1 class="fontNeuron">Sách</h1> -->
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
            <div class="col-xs-12">
                <!-- content -->
                <div id="content">
{#                    <header class="row rowHead rowHead2">#}
{#                        <div class="col-xs-12 col-md-8">#}
{#                            <!-- postsFiltersList -->#}
{#                            <ul class="list-unstyled postsFiltersList postsFiltersList2 text-capitalize text-center isoFiltersList">#}
{#                                <li class="active"><a href="#">All</a></li>#}
{#                                <li><a href="#" data-filter=".rent">For Rent</a></li>#}
{#                                <li><a href="#" data-filter=".sale">For Sale</a></li>#}
{#                            </ul>#}
{#                        </div>#}
{#                        <div class="col-xs-12 col-md-4">#}
{#                            <!-- sortGroup -->#}
{#                            <div class="sortGroup">#}
{#                                <strong class="groupTitle fwNormal">Sort by:</strong>#}
{#                                <div class="dropdown">#}
{#                                    <button class="dropdown-toggle buttonReset" type="button" id="sortGroup" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Default Order <i class="icn fas fa-chevron-down"></i></button>#}
{#                                    <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="sortGroup">#}
{#                                        <li><a href="#">Default Order</a></li>#}
{#                                        <li><a href="#">Default Order</a></li>#}
{#                                        <li><a href="#">Default Order</a></li>#}
{#                                        <li><a href="#">Default Order</a></li>#}
{#                                    </ul>#}
{#                                </div>#}
{#                            </div>#}
{#                        </div>#}
{#                    </header>#}
                    {{ render_widget('bookstore.book-listing',['limit':10,'current_page':current_page],['viewsDir': widgets_volt,'view':'bookstore-book-listing-1']) }}

                </div>
            </div>

        </div>
    </section>
{% endblock %}