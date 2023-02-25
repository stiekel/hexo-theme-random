<div id="gitalk-container"></div>
<script src="https://unpkg.com/gitalk/dist/gitalk.min.js"></script>
<script>
  var gitalk = new Gitalk({
    clientID: "{{ theme.gitalk.clientID }}", 
    clientSecret: "{{ theme.gitalk.clientSecret }}",
    repo: "{{ theme.gitalk.repo }}",
    owner: "{{ theme.gitalk.owner }}",
    admin: ["{{ theme.gitalk.owner }}"],
    id: location.pathname,
    distractionFreeMode: false,
  });
  gitalk.render('gitalk-container');
</script>
