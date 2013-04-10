{*
	variables that are available:
	- {$widgetBlogRecentArticlesList}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesList}
	<section id="blogRecentArticlesListWidget" class="mod">
			<h3>{$lblRecentArticles|ucfirst}</h3>
			<ul>
				{iteration:widgetBlogRecentArticlesList}
					<li><a href="{$widgetBlogRecentArticlesList.full_url}" title="{$widgetBlogRecentArticlesList.title}">{$widgetBlogRecentArticlesList.title}</a></li>
					{/iteration:widgetBlogRecentArticlesList}
			</ul>
		</div>
	</section>
{/option:widgetBlogRecentArticlesList}
