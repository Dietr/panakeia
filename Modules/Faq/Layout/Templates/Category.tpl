{*
	variables that are available:
	- {$questions}: contains all questions inside this category
*}

<div class="centered article faq">
	<h2>{$category.title}</h2>
		{option:questions}
			<ul class="faqList">
				{iteration:questions}
					<li><a href="{$questions.full_url}">{$questions.question}</a></li>
				{/iteration:questions}
			</ul>
		{/option:questions}

		{option:!questions}
			<p>{$msgNoQuestionsInCategory|ucfirst}</p>
		{/option:!questions}
</div>

<div class="full more">
	<ul>
		<li><a href="{$var|geturlforblock:'faq'}" title="{$lblMore|ucfirst}">{$lblMore|ucfirst}</a></li>
	</ul>
</div>
