<header id="banner" class="wrapper">
  <div class="inner">
    <h2 id="banner-title">{{ page.subtitle }}</h2>
    <div id="banner-start">
      <span id="banner-start-command"> grep -r '$' blog/ | more </span><a id="banner-start-link" href="docs/"><i class="fa fa-arrow-right"></i></a>
    </div>
    <div id="banner-share">{{ partial('partial/share') }}</div>
  </div>
</header>
<div id="content-wrap">
  <div class="wrapper">
    <div class="inner">
      {{ page.content }}
      <ul id="intro-cmd-wrap">
        <li class="intro-cmd-item">Toutes la smore!</li>
        <li class="intro-cmd-item">Bu blu-ay bloo blah ooh! Pfoof!</li>
        <li class="intro-cmd-item">C'est mon petit frère.</li>
        <li class="intro-cmd-item">Il est un peu retardé.</li>
        <li class="intro-cmd-item">Toute-de-le-fruit!</li>
      </ul>
      <div id="intro-get-started-wrap">
        <a href="docs/" id="intro-get-started-link">{{ __('index.get_started') }}</a>
      </div>
    </div>
  </div>
</div>
