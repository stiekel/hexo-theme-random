
<nav id="pagination">
  {% if page.prev_link %}
    <a href="{{ url_for(page.prev_link) }}" class="prev">&larr; {{ __('prev') }}</a>
  {% elif page.prev && page.prev.path %}
    <a href="{{ url_for(page.prev.path) }}" class="prev">&larr; {{  __('prev_post') + ' ' + page.prev.title }}</a>
  {% endif %}

  {% if page.current && page.total %}
    <span class="page-number">
      {{ __('page_number_part1') }} {{ page.current }} {{ __('page_number_part2') }} {{ page.total }} {{ __('page_number_part3') }}
    </span>
  {% endif %}

  {% if page.next_link %}
    <a href="{{ url_for(page.next_link) }}" class="next">{{ __('next') }} &rarr;</a>
  {% elif page.next && page.next.path %}
    <a href="{{ url_for(page.next.path) }}" class="next">{{ __('next_post') + ' ' + page.next.title }} &rarr;</a>
  {% endif %}
</nav>
