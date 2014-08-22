{*
	variables that are available:
	- {$searchResults}: contains an array with all items, each element contains data about the item
	- {$searchTerm}: the term that has been searched for
*}

<section id="searchFormWidget" class="indent searchAgain">
	{form:search}
	<form accept-charset="UTF-8" action="/search" method="get" id="search">
		<div>
			{$txtQ} {$txtQError}
			<input id="submit" class="inputSubmit" type="submit" name="submit" value="{$lblSearch|ucfirst}" />
		</div>
	</form>
	{/form:search}
</section>


{* don't remove this container nor replace the id - it'll be used to populate the search results live as you type *}
<div id="searchContainer">
	{include:Modules/Search/Layout/Templates/Results.tpl}
</div>


