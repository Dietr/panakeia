{*
	variables that are available:
	- {$item}: contains data about the post
	- {$comments}: contains an array with the comments for the post, each element contains data about the comment.
	- {$commentsCount}: contains a variable with the number of comments for this blog post.
	- {$navigation}: contains an array with data for previous and next post
*}


<div id="blogDetail">
	<!-- Facebook button -->
	<div id="fb-root"></div>
	<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/nl_NL/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
	<!-- Article -->
	{option:item}
	<article class="full blogDetail">
		<div class="blogDetailTitle">
			<h1>{$item.title}</h1>
			<p class="date">{$msgWrittenBy|ucfirst|sprintf:{$item.user_id|usersetting:'nickname'}} {$lblOn}
				<time datetime="{$item.publish_on|date:'c':{$LANGUAGE}}">
					<span class="day">{$item.publish_on|date:'d':{$LANGUAGE}}</span>
					<span class="month">{$item.publish_on|date:'m':{$LANGUAGE}}</span>
					<span class="year">{$item.publish_on|date:'Y':{$LANGUAGE}}</span>
				</time>
			</p>
		</div>
		<meta itemprop="interactionCount" content="UserComments:{$commentsCount}">
		<meta itemprop="author" content="{$item.user_id|usersetting:'nickname'}">

		{option:item.image}
		<img src="{$FRONTEND_FILES_URL}/blog/images/source/{$item.image}" alt="{$item.image}" class="blogDetailImage">
		{/option:item.image}

		<div class="centered">
			<span class="plain">{$item.text}</span>
			<ul class="shareButtons">
					<li><a href="http://twitter.com/share" class="twitter-share-button" data-count="none">Tweet</a></li>
					<li class="facebook"><div class="fb-like" data-send="false" data-layout="button_count" data-width="450" data-show-faces="true"></div>
					<li><div class="g-plusone" data-size="medium" annotations="none"></div></li>
			</ul>
			<h4 class="textlink">
				{option:!comments}
					<a href="#{$actComment}">
						{$msgBlogNoComments|ucfirst}
					</a>
					{/option:!comments}
					{option:comments}
						{option:comments_multiple}<a href="#{$actComments}">{$msgBlogNumberOfComments|sprintf:{$comments_count}}</a>{/option:comments_multiple}
							{option:!comments_multiple}<a href="#{$actComments}">{$msgBlogOneComment}</a>{/option:!comments_multiple}
						{/option:comments}
				</h4>
				<a href="{$item.category_full_url}" class="textlink category">{$item.category_title}</a>
 		</div>
	</article>
	{/option:item}

	<div class="centered pageNavigation">
		{option:navigation.previous}
		<a href="{$navigation.previous.url}" rel="previous">{$lblPrevious|ucfirst}: <span>{$navigation.previous.title}</span></a>
		{/option:navigation.previous}
		{option:!navigation.previous}
		<a href="/blog" rel="next"><span>{$lblRecentArticles|ucfirst}</span></a>
		{/option:!navigation.previous}
	</div>

	<!-- Comments -->
	{option:comments}
	<div id="comments" class="centered comments">
		{iteration:comments}
		<article id="comment-{$comments.id}" class="comment" itemprop="comment" itemscope itemtype="http://schema.org/UserComments">
			<meta itemprop="discusses" content="{$item.title}" />
			<p class="commentAuthor" itemscope itemtype="http://schema.org/Person">
				{option:comments.website}
				<a href="{$comments.website}" itemprop="url">
				{/option:comments.website}
					<span itemprop="creator name">{$comments.author}</span>
				{option:comments.website}
				</a>
				{/option:comments.website}
				{$lblWrote}
				<time itemprop="commentTime" datetime="{$comments.created_on|date:'Y-m-d\TH:i:s'}">{$comments.created_on|timeago}</time>
			</p>
			<div itemprop="commentText">
				{$comments.text|ucfirst}
			</div>
		</article>
		{/iteration:comments}
	</div>
	{/option:comments}

	{option:item.allow_comments}
	<section id="blogCommentForm" class="centered commentsForm">
		<h3 id="{$actComment}">{$msgComment|ucfirst}</h3>
		<div>
			{option:commentIsInModeration}
			<div class="message warning">
				<p>{$msgBlogCommentInModeration}</p>
			</div>
			{/option:commentIsInModeration}

			{option:commentIsSpam}
			<div class="message error">
				<p>{$msgBlogCommentIsSpam}</p>
			</div>
			{/option:commentIsSpam}

			{option:commentIsAdded}
			<div class="message success">
				<p>{$msgBlogCommentIsAdded}</p>
			</div>
			{/option:commentIsAdded}

			{form:commentsForm}
			<p {option:txtAuthorError}class="errorArea"{/option:txtAuthorError}>
				<label for="author">{$lblName|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
				{$txtAuthor} {$txtAuthorError}
			</p>
			<p {option:txtEmailError}class="errorArea"{/option:txtEmailError}>
				<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
				{$txtEmail} {$txtEmailError}
			</p>
		</div>

		<p class="bigInput{option:txtWebsiteError} errorArea{/option:txtWebsiteError}">
			<label for="website">{$lblWebsite|ucfirst}</label>
			{$txtWebsite} {$txtWebsiteError}
		</p>

		<p class="bigInput{option:txtMessageError} errorArea{/option:txtMessageError}">
			<label for="message">{$lblMessage|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
			{$txtMessage} {$txtMessageError}
		</p>

		<p>
			<input class="inputSubmit" type="submit" name="comment" value="{$msgComment|ucfirst}" />
		</p>
		{/form:commentsForm}
	</section>
	{/option:item.allow_comments}
</div>
