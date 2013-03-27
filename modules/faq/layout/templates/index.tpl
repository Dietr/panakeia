{*
	variables that are available:
	- {$faqCategories}: contains all categories, along with all questions inside a category
*}


{option:!faqCategories}
<div id="faqIndex">
	<div class="centered article faq">
		<h2>{$msgFaqNoItems}</h2>
	</div>
</div>
{/option:!faqCategories}

{option:faqCategories}
<section id="faqIndex">
	{option:allowMultipleCategories}
	<div class="centered article faqCategories">
		<ul class="faqList">
			{iteration:faqCategories}
			<li><a href="{$faqCategories.full_url}" title="{$faqCategories.title}">{$faqCategories.title}</a></li>
			{/iteration:faqCategories}
		</ul>
	</div>
	{/option:allowMultipleCategories}

	{iteration:faqCategories}
	<article class="centered summary faq">

		{option:allowMultipleCategories}
		<a href="{$faqCategories.full_url}" title="{$faqCategories.title}" class="faqTitle">
			<h2 id="{$faqCategories.url}">{$faqCategories.title}</h2>
		</a>
		{/option:allowMultipleCategories}

		<ul class="faqList">
			{iteration:faqCategories.questions}
				<li><a href="{$faqCategories.questions.full_url}" class="textlink textlinkBorder">{$faqCategories.questions.question}</a></li>
			{/iteration:faqCategories.questions}
		</ul>

	</article>
	{/iteration:faqCategories}

</section>
{/option:faqCategories}
