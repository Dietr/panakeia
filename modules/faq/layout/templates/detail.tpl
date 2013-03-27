{*
	variables that are available:
	- {$item}: contains data about the question
	- {$related}: the related items
*}
<div id="faqDetail">
	<article class="full article">
		<div class="row">
			<div class="centered articleContent">
				<h2>{$item.question}</h2>
				{option:settings.allow_multiple_categories}
					{* Category*}
					<p class="faqCategory">
						{$lblIn|ucfirst} {$lblThe} {$lblCategory} <a href="{$item.category_full_url}" title="{$item.category_title}">{$item.category_title}</a>
					</p>
        {/option:settings.allow_multiple_categories}

				{$item.answer}
			</div>
		</div>
	</article>

	{option:inSameCategory}
		<section id="faqRelatedItems" class="centered article faq">
			<div class="">
				<header class="hd">
                	{option:settings.allow_multiple_categories}<h3>{$msgQuestionsInSameCategory|ucfirst}</h3>{/option:settings.allow_multiple_categories}
                	{option:!settings.allow_multiple_categories}<h3>{$msgOtherQuestions|ucfirst}</h3>{/option:!settings.allow_multiple_categories}
				</header>
				<div class="bd">
					<ul class="faqList">
						{iteration:inSameCategory}
							<li><a href="{$inSameCategory.full_url}" title="{$inSameCategory.question}">{$inSameCategory.question}</a></li>
						{/iteration:inSameCategory}
					</ul>
				</div>
			</div>
		</section>
	{/option:inSameCategory}

	{option:related}
		<section id="faqRelatedItems" class="centered article faq">
			<div class="">
				<header class="hd">
					<h3>{$msgRelatedQuestions|ucfirst}</h3>
				</header>
				<div class="bd">
					<ul class="faqList">
						{iteration:related}
							<li><a href="{$related.full_url}" title="{$related.question}">{$related.question}</a></li>
						{/iteration:related}
					</ul>
				</div>
			</div>
		</section>
	{/option:related}


	<footer class="full more">
			<ul>
				<li><a href="{$var|geturlforblock:'faq'}" title="{$lblToFaqOverview|ucfirst}">{$lblMore|ucfirst}</a></li>
			</ul>
	</footer>

	{option:settings.allow_feedback}
		<section id="faqFeedbackForm" class="mod">
			<div class="inner">
				<header class="hd">
					<h3 id="{$actFeedback}">{$msgFeedback|ucfirst}</h3>
				</header>
				<div class="bd">
					{option:success}<div class="message success"><p>{$msgFeedbackSuccess}</p></div>{/option:success}
					{option:spam}<div class="message error"><p>{$errFeedbackSpam}</p></div>{/option:spam}

					{form:feedback}
						{$hidQuestionId}
						<div class="options">
							<ul class="inputList">
								{iteration:useful}
									<li>
										{$useful.rbtUseful}
										<label for="{$useful.id}">{$useful.label|ucfirst}</label>
									</li>
								{/iteration:useful}
							</ul>
						</div>

						<div id="feedbackNoInfo"{option:hideFeedbackNoInfo} style="display: none;"{/option:hideFeedbackNoInfo}>
							<p class="bigInput{option:txtMessageError} errorArea{/option:txtMessageError}">
								<label for="message">{$msgHowToImprove|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
								{$txtMessage} {$txtMessageError}
							</p>
							<p>
								<input class="inputSubmit" type="submit" name="comment" value="{$lblSend|ucfirst}" />
							</p>
						</div>
					{/form:feedback}
				</div>
			</div>
		</section>
	{/option:settings.allow_feedback}
</div>
