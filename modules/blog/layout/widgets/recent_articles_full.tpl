{*
	variables that are available:
	- {$widgetBlogRecentArticlesFull}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesFull}
	<section id="blogRecentArticlesFullWidget">

		{iteration:widgetBlogRecentArticlesFull}
		<article class="block summary">
			<a href="{$widgetBlogRecentArticlesFull.full_url}" title="{$widgetBlogRecentArticlesFull.title}" class="summaryContent">
				<header class="summaryContentText autoEllipsis">
					<h1 class="h2">{$widgetBlogRecentArticlesFull.title|ucfirst}</h1>
					<p class="date"><!-- {$msgWrittenBy|ucfirst|sprintf:{$widgetBlogRecentArticlesFull.user_id|usersetting:'nickname'}} {$lblOn} -->
						<time datetime="{$widgetBlogRecentArticlesFull.publish_on|date:'c':{$LANGUAGE}}">
							<span class="day">{$widgetBlogRecentArticlesFull.publish_on|date:'d':{$LANGUAGE}}</span>
							<span class="month">{$widgetBlogRecentArticlesFull.publish_on|date:'m':{$LANGUAGE}}</span>
							<span class="year">{$widgetBlogRecentArticlesFull.publish_on|date:'Y':{$LANGUAGE}}</span>
						</time>
					</p>
					{$widgetBlogRecentArticlesFull.introduction|ucfirst}
				</header>

			</a>

			<footer class="summaryFooter">
				<h4 class="textlink">
					{option:!widgetBlogRecentArticlesFull.comments}
					<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComment}">
						{$msgBlogNoComments|ucfirst}
					</a>
					{/option:!widgetBlogRecentArticlesFull.comments}
					{option:widgetBlogRecentArticlesFull.comments}
						{option:widgetBlogRecentArticlesFull.comments_multiple}<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComments}">{$msgBlogNumberOfComments|sprintf:{$widgetBlogRecentArticlesFull.comments_count}}</a>{/option:widgetBlogRecentArticlesFull.comments_multiple}
						{option:!widgetBlogRecentArticlesFull.comments_multiple}<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComments}">{$msgBlogOneComment}</a>{/option:!widgetBlogRecentArticlesFull.comments_multiple}
					{/option:widgetBlogRecentArticlesFull.comments}
				</h4>
				<a href="{$widgetBlogRecentArticlesFull.category_full_url}" class="category">{$widgetBlogRecentArticlesFull.category_title}</a>
			</footer>
		</article>
		{/iteration:widgetBlogRecentArticlesFull}

		<div class="full more">
			<ul>
				<li><a href="{$var|geturlforblock:'blog'}" rel="next nofollow">{$lblMore|ucfirst}</a></li>
			</ul>
		</div>

	</section>

{/option:widgetBlogRecentArticlesFull}



