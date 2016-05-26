{% set pageTitle = page.title || config.subtitle || '' %}
{% if is_archive() %}
  {% set pageTitle = _p('archive_title') %}
{% endif %}
{% if is_tag() %}
  {% set pageTitle = __('tag_title') + ': ' + page.tag %}
{% endif %}
{% if is_category() %}
  {% set pageTitle = __('category_title') + ': ' + page.category %}
{% endif %}
{% if is_month() %}
  {% set pageTitle = pageTitle + ': ' + page.month + '/' + page.year %}
{% endif %}
{% if is_year() %}
  {% set pageTitle = pageTitle + ': ' + page.year %}
{% endif %}
{% set pageTitle = pageTitle + ' [ ' + config.title + ' ]' %}
<!doctype html>
<html lang="{{ config.language }}">
<head>
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  {% if config.author %}
  <meta name="author" content="{{config.author}}">
  {% endif %}
  {% if config.keywords || theme.keywords %}
  <meta name="keywords" content="{{config.keywords || theme.keywords}}">
  {% endif %}
  {% set metaDescription = trim(strip_html(page.description || page.excerpt || page.content || config.description)) %}
  {% if metaDescription.length > 200 %}
    <meta name="description" content="{{ truncate( metaDescription, {length: 200}) }}">
  {% else %}
    <meta name="description" content="{{ metaDescription }}">
  {% endif %}
  <title>{{ pageTitle }}</title>
  {% if config.feed || theme.feed %}
    {{ feed_tag(config.feed.path || theme.feed.path, {title: config.title, type: config.feed.type || theme.feed.type}) }}
  {% endif %}
  {% if config.favicon || theme.favicon%}
    {{ favicon_tag(config.favicon || theme.favicon) }}
  {% endif %}
  {% if theme.stylesheets !== undefined && theme.stylesheets.length > 0 %}
  {{ css(theme.stylesheets) }}
  {% endif %}
</head>
