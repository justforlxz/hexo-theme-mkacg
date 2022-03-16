
{% if page.posts.length > 0 %}
  <div id="recent-posts">
    {% for postItem in page.posts.toArray() %}
      <div class="recent-post-item">
        <a href="{{ url_for(postItem.path) }}">{{ postItem.title }}</a>
        <time datetime="{{ postItem.date.toJSON() }}">
          {{ date(postItem.date) }}
        </time>
        <div>
          {{ postItem.excerpt }}
        </div>
        <a id="recent-post-seeall" href="{{ postItem.path }}">
          查看全文
        </a>
      </div>
    {% endfor %}
  </div>
{% endif %}
