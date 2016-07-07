<div id="content-wrap">
  <div id="content" class="wrapper">
    <div id="content-inner">
      <article class="article-container" itemscope itemtype="http://schema.org/Article">
        <div class="article-inner">
          <div class="article">
            <div class="inner">
              <header class="article-header">
                <h1 class="article-title" itemprop="name">{{ page.title }}</h1>
                 {% if page.iseditable %}  <!-- if iseditable: false in page frontdata, make better disappears-->
                     {% if page.iseditable == true %}
                         <a href="{{ raw_link(page.source) }}" class="article-edit-link" title="{{ __('page.improve') }}"><i class="fa fa-pencil"></i></a>
                     {% endif %}
                 {% endif %}
              </header>
              <div class="article-content" itemprop="articleBody">
                {{ page_anchor(page.content) }}
                {% if page.iscontact %}
                  {% if page.iscontact == true %} 
                   {{ partial('partial/contact') }}
                  {% endif %}
                {% endif %}
              </div>
              <footer class="article-footer">
                <time class="article-footer-updated" datetime="{{ date_xml(page.updated) }}" itemprop="dateModified">{{ __('page.last_updated', date(page.updated)) }}</time>
                {{ page_nav() }}
              </footer>
              {{ partial('partial/comment') }}
            </div>
          </div>

          <aside id="article-toc" role="navigation">
            <div id="article-toc-inner" >

             {% if page.nosidebar %}  <!--  if nosidebar: true in frontdata, nosidebar-->
                {% if page.nosidebar == false %}
                       <strong class="sidebar-title">{{ __('page.contents') }}</strong>
                       {{ toc(page.content, {list_number: false}) }}
                       <a href="#" id="article-toc-top">{{ __('page.back_to_top') }}</a>  
                {% endif %}

            {% else %}

               <strong class="sidebar-title">{{ __('page.contents') }}</strong>
               {{ toc(page.content, {list_number: false}) }}
               <a href="#" id="article-toc-top">{{ __('page.back_to_top') }}</a> 

            {% endif %}
              
            </div>
          </aside>
          <!-- Uncomment the below line to hide sidemenu when no contents are available-->
          <!-- <script>$("#article-toc-inner").css("visibility", "hidden");</script> -->
          

        </div>
      </article>
      {{ partial('partial/sidebar') }}
    </div>
  </div>
</div>
