<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="theme-color" content="#feed01"/>
    <title>{{ t('tenbaotang') }}</title>
    <meta name="author" content="vme">
    <meta name="description" content="For all kind of exhibition museum website">
    <meta name="keywords"
          content="vme, exhibition, museum, art, history, entry, ticket, contemporary, modern, booking, visit, culture, life, centuries, roots, fancy, vietnam">

    <!-- SOCIAL MEDIA META -->
    <meta property="og:description" content="{{ t('tenbaotang') }}">
    <meta property="og:image" content="">
    <meta property="og:site_name" content="{{ t('tenbaotang') }}">
    <meta property="og:title" content="{{ t('tenbaotang') }}">
    <meta property="og:type" content="website">
    <meta property="og:url" content="">

    <!-- TWITTER META -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="@vme">
    <meta name="twitter:creator" content="@vme">
    <meta name="twitter:title" content="vme">
    <meta name="twitter:description" content="{{ t('tenbaotang') }}">
    <meta name="twitter:image" content="">

    <!-- FAVICON FILES -->
    <link href="{{ theme_path }}/assets/images/favicon.png" rel="apple-touch-icon"
          sizes="">
    <link href="{{ theme_path }}/assets/images/favicon.png" rel="apple-touch-icon"
          sizes="">
    <link href="{{ theme_path }}/assets/images/favicon.png" rel="apple-touch-icon">
    <link href="{{ theme_path }}/assets/images/favicon.png" rel="apple-touch-icon">
    <link href="{{ theme_path }}/assets/images/favicon.png" rel="shortcut icon">

    <!-- CSS FILES -->

    {{ partial('partials/css') }}
    {% block head %}
    {% endblock %}
</head>
<body>
{{ partial('partials/preloader') }}
{% block content %}

{% endblock %}
<!-- JS FILES -->
{{ partial('partials/js-foot') }}
{% block foot %}
{% endblock %}
</body>
</html>