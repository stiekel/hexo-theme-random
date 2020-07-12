<div class="center-title">
{% for photo in page.photos %}
  <a class="fancybox-thumb" rel="fancybox-thumb" href="{{url_for(photo)}}">
    <img src="{{url_for(photo)}}" />
  </a>
{% endfor %}
</div>
