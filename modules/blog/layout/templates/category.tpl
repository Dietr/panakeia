{*
	variables that are available:
	- {$category}: contains data about the category
	- {$items}: contains an array with all posts, each element contains data about the post
*}

{option:items}
	<section id="blogCategory">
		{iteration:items}
			<article class="block summary">
			<a href="{$items.full_url}" title="{$items.title}" class="summaryContent">
				<img src="/frontend/files/blog/images/source/{$items.image}" alt="placeholder" class="summaryContentImage">
				<header class="summaryContentText">
					<h1 class="h2">{$items.title|ucfirst}</h1>
					<h4 class="">{$msgWrittenBy|ucfirst|sprintf:{$items.user_id|usersetting:'nickname'}} {$lblOn}
						<time datetime="{$items.publish_on|date:'c':{$LANGUAGE}}">
							<span class="day">{$items.publish_on|date:'d':{$LANGUAGE}}</span>
							<span class="month">{$items.publish_on|date:'m':{$LANGUAGE}}</span>
							<span class="year">{$items.publish_on|date:'Y':{$LANGUAGE}}</span>
						</time>
					</h4>
					{$items.introduction|substring:0:256|ucfirst} ...
				</header>
			</a>

			<footer class="summaryFooter">
				<h4 class="textlink">
					{option:!items.comments}
					<a href="{$items.full_url}#{$actComment}">
						{$msgBlogNoComments|ucfirst}
					</a>
					{/option:!items.comments}
					{option:items.comments}
						{option:items.comments_multiple}<a href="{$items.full_url}#{$actComments}">{$msgBlogNumberOfComments|sprintf:{$items.comments_count}}</a>{/option:items.comments_multiple}
						{option:!items.comments_multiple}<a href="{$items.full_url}#{$actComments}">{$msgBlogOneComment}</a>{/option:!items.comments_multiple}
					{/option:items.comments}
				</h4>
					<ul class="h4 footerCategory">
						<li class="category"><a href="{$items.category.full_url}">{$items.category_title}</a></li>
					</ul>
			</footer>
		</article>
		{/iteration:items}
	</section>
	{include:core/layout/templates/pagination.tpl}
{/option:items}
