{% extends 'includes/layout.swig' %}

{% block body %}
  <article id="page">
    {% for cat in site.categories %}
      {% if cat.name === page.category %}
        <h1 class="center-title">
          {{ page_title || __('category_title') }}
          {# {{ page.category }}
          {% if cat.posts.length %}
          <span class="posts-count">
            {{ __('total_title') }}
            {{ cat.posts.length }}
            {% if 1 === cat.posts.length %}
              {{ __('post_title') }}
            {% else %}
              {{ __('posts_title') }}
            {% endif %}
          </span>
          {% else %}
            {{ __('not_post') }}
          {% endif %} #}
        </h1>
      {% endif %}
    {% endfor %}
    <ul class="category-list">
      {% for cat in site.categories %}
        <li class="category-list-item">
        {% if cat.name === page.category %}
          <a class="active" href="{{url_for(cat.path)}}">{{cat.name}}</a>
        {% else %}
          <a href="{{url_for(cat.path)}}">{{cat.name}}</a>
        {% endif %}
          <span class="category-list-count">{{cat.posts.length}}</span>
        </li>
      {% endfor %}
    </ul>
    {% set allPosts = site.posts.sort('date', 'desc') %}
    {% for postItem in allPosts %}
      {% set isShow = false %}
      {% for cat in postItem.categories %}
        {% if cat.name === page.category %}
          {% set isShow = true %}
        {% endif %}
      {% endfor %}
      {% if isShow %}
      {% include 'includes/post-title-item.swig' %}
      {% endif %}
    {% endfor %}
  </article>

  {# {% include 'includes/pagination.swig' %} #}
{% endblock %}
