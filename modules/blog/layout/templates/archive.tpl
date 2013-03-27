{*
	variables that are available:
	- {$archive}: contains an array with some dates
	- {$items}: contains an array with all items, each element contains data about the items
*}

{option:!items}
	<section id="blogArchive" class="mod">
		<div class="inner">
			<div class="bd content">
				<p>{$msgBlogNoItems}</p>
			</div>
		</div>
	</section>
{/option:!items}
{option:items}
	<section id="blogArchive" class="mod">
		<article class="block summary">
			<a href="{$items.full_url}" title="{$items.title}" class="summaryContent">
				<header class="summaryContentText">
					<h1 class="h2">{$items.title|ucfirst}</h1>
					<p class="date">{$msgWrittenBy|ucfirst|sprintf:{$items.user_id|usersetting:'nickname'}} {$lblOn}
						<time datetime="{$items.publish_on|date:'c':{$LANGUAGE}}">
							<span class="day">{$items.publish_on|date:'d':{$LANGUAGE}}</span>
							<span class="month">{$items.publish_on|date:'m':{$LANGUAGE}}</span>
							<span class="year">{$items.publish_on|date:'Y':{$LANGUAGE}}</span>
						</time>
					</p>
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
					<a href="{$items.category_full_url}" class="textlink category">{$items.category_title}</a>
			</footer>
		</article>
	</section>
	{include:core/layout/templates/pagination.tpl}
{/option:items}
