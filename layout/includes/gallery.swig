<div class="center-title">
{% for photo in page.photos %}
  <a class="fancybox-thumb" rel="fancybox-thumb" href="{{photo}}">
    <img src="{{photo}}" />
  </a>
{% endfor %}
</div>
