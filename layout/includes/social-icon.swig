<ul class="social-icon">
  {% set socialConfig = config.social || theme.social %}
  {% for i in Object.keys( socialConfig ) %}
    <li>
      <a href="{{ socialConfig[i] }}">
        {% if i && i|lower === 'rss' %}
          <i class="icon iconfont rss">&#xe60e;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('douban.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont douban">&#xe60f;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('twitter.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont twitter">&#xe600;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('linkedin.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont linkedin">&#xe601;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('weibo.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont weibo">&#xe602;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('plus.google.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont google-plus">&#xe603;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('facebook.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont facebook">&#xe604;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('dribbble.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont dribbble">&#xe605;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('github.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont github">&#xe606;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('coding.net', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont coding">&#xe607;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('npmjs.org', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont npmjs">&#xe608;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('youtube.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont youtube">&#xe60a;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('zhihu.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont zhihu">&#xe60b;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('lofter.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont lofter">&#xe60d;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('quora.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont quora">&#xe60c;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('instagram.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont instagram">&#xe613;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('segmentfault.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont segmentfault">&#xe611;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('stackoverflow.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont stackoverflow">&#xe612;</i>
        {% elif socialConfig[i] && socialConfig[i]|replace('jianshu.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont jian">&#xe614;</i>
        {% else %}
          {{i}}
        {% endif %}
      </a>
    </li>
  {% endfor %}
</ul>