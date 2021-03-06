{*
	variables that are available:
	- {$category}: contains data about the category
	- {$items}: contains an array with all posts, each element contains data about the post
*}

{option:items}
	<div id="blogCategory">

		{iteration:items}
		<article class="block summary">
			<a href="{$items.full_url}" title="{$items.title}" class="summaryContent">
				<header class="summaryContentText autoEllipsis">
					<h1 class="h2">{$items.title|ucfirst}</h1>
					<p class="date">
						<time datetime="{$items.publish_on|date:'c':{$LANGUAGE}}">
							<span class="day">{$items.publish_on|date:'d':{$LANGUAGE}}</span>
							<span class="month">{$items.publish_on|date:'m':{$LANGUAGE}}</span>
							<span class="year">{$items.publish_on|date:'Y':{$LANGUAGE}}</span>
						</time>
					</p>
					{$items.introduction|ucfirst}
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
				<a href="{$items.category_full_url}" class="textlink category">{$items.category_title}</a></li>
			</footer>
		</article>
		{/iteration:items}
	</div>
	{include:Core/Layout/Templates/Pagination.tpl}
{/option:items}

