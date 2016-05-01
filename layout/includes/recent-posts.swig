
{% if site.posts.length > 0 %}
  <div id="recent-posts">
    <h1>{{ __('archive_title') }}
    {% if page.posts.length %}
      <span class="posts-count">
      {{ __('total_title') }}
      {{ page.posts.length }}
      {% if 1 === page.posts %}
        {{ __('post_title') }}
      {% else %}
        {{ __('posts_title') }}
      {% endif %}
      </span>
    {% else %}
        {{ __('not_post') }}
    {% endif %}
    </h1>
    {% set howMuch = {} %}
    {% for postItem in page.posts.toArray() %}
      {% set thisYear = date(postItem.date, 'YYYY') %}
      {% if !howMuch[thisYear] %}
        {% set howMuch[thisYear] = 0 %}
      {% endif %}
      {% set howMuch[thisYear] = howMuch[thisYear] + 1 %}
    {% endfor %}
    {% set lastYear %}
    {% for postItem in page.posts.toArray() %}
      {% set thisYear = date(postItem.date, 'YYYY') %}
      {% if thisYear !== lastYear %}
        {% set lastYear = thisYear %}
        <h3 class="archive-year-title">{{ thisYear }}
        {% if howMuch[thisYear] %}
          <span class="posts-count">
          {{ __('total_title') }}
          {{ howMuch[thisYear] }}
          {% if 1 === howMuch[thisYear] %}
            {{ __('post_title') }}
          {% else %}
            {{ __('posts_title') }}
          {% endif %}
          </span>
        {% else %}
            {{ __('not_post') }}
        {% endif %}
        </h3>
      {% endif %}
      <div class="post-title-item">
        <a href="{{ config.root }}{{ postItem.path }}">{{ postItem.title }}</a>
        {% if postItem.date %}
          <time datetime="{{ postItem.date.toJSON() }}">
            {{ date(postItem.date) }}
          </time>
        {% endif %}
      </div>
    {% endfor %}
  </div>
{% endif %}
