{*
	variables that are available:
	- {$widgetSubpages}: An array with all the subpages that should be shown as a block on the current page.

	How to make a new template:
	1. Create a new widget template in pages/layout/widgets (probably in your theme).
	2. Create a new extra (in the database, pages_extras table) based on the extra for module 'pages' and with action 'subpages':
		- Change the label. Also create the label in the translations module and make sure the description describes what info will be shown and how.
		- Change the template info in the data field of the extra. After 's:' has to be the length of the filename of the new tempalte (eg. s:8:"test.tpl";).
	3. The new template will now be used on pages where the new extra has been linked to a block.
*}

{option:widgetSubpages}
	{iteration:widgetSubpages}
	<article class="centered summary">
		<a href="{$widgetSubpages.full_url}" class="summary__content">
			<div class="summaryContentText">
				<h2>{$widgetSubpages.title}</h2>
				<p>{$widgetSubpages.description}</p>
			</div>
		</a>
	</article>
	{/iteration:widgetSubpages}
{/option:widgetSubpages}
