{*
	variables that are available:
	- {$searchResults}: contains an array with all items, each element contains data about the item
	- {$searchTerm}: the term that has been searched for
*}

{option:searchTerm}
	<section id="searchResults" class="">
			{option:!searchResults}
			<div class="article centered">
				<div class="articleContent">
					<p>{$msgSearchNoItems}</p>
				</div>
			</div>
			{/option:!searchResults}
			{option:searchResults}
			{iteration:searchResults}
			<section class="summary centered">
					<a href="{$searchResults.full_url}" title="{$searchResults.title}" class="searchResult">
						<h1 class="h2">{$searchResults.title}</h1>
						{option:!searchResults.introduction}
						<p>{$searchResults.text|truncate:200}</p>
						{/option:!searchResults.introduction}
						{option:searchResults.introduction}
						{$searchResults.introduction}
						{/option:searchResults.introduction}
					</a>
			</section>
			{/iteration:searchResults}
			{/option:searchResults}
		</div>
	</section>
	{include:Core/Layout/Templates/Pagination.tpl}
{/option:searchTerm}
