<div class="side-navigate hide-area">
  {% if page.prev.path %}
    <div class="item prev">
      <a href="{{url_for(page.prev.path)}}">
        <div class="item-icon"></div>
      </a>
      <div class="item-title">
        {{page.prev.title}}
      </div>
    </div>
  {% endif %}
  {% if page.next.path %}
    <div class="item next">
      <a href="{{url_for(page.next.path)}}">
        <div class="item-icon"></div>
      </a>
      <div class="item-title">
        {{page.next.title}}
      </div>
    </div>
  {% endif %}
</div>