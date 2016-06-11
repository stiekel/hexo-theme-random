<div class="random-toc-area">
  <button class="btn-hide-toc btn-hide-toc-show" style="display: none" onclick="TOCToggle()">{{__('show_toc')}}</button>
  <button class="btn-hide-toc btn-hide-toc-hide" onclick="TOCToggle()">{{__('hide_toc')}}</button>
  <div class="random-toc">
    <h2>{{__('toc')}}</h2>
    {{ toc(page.content, {list_number: false}) }}
  </div>
</div>
