{include:core/layout/templates/head.tpl}
<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	{include:core/layout/templates/header.tpl}

	<div class="container hero">
		{* Logo *}
		<h1 class="full">
			<a href="/" class="logo" title="{$pageTitle}"><span class="monogram">{$siteTitle|substring:0:1}</span><span class="logotype">{$siteTitle}</span></a>
		</h1>

		{* Content block *}
		{iteration:positionTop}
		<div class="mainContent heroBlurb">
				<div class="centered">{$positionTop.blockContent}</div>
		</div>
		{/iteration:positionTop}
	</div>

	<div class="wrapper wrapperLong">

		<!-- Blog overview -->
		<div class="container mainContent">
			{* Content *}
			{iteration:positionMain}
				{option:positionMain.blockIsHTML}
				<article class="full article">
					<div class="centered articleContent">
						{$positionMain.blockContent}
					</div>
				</article>
				{/option:positionMain.blockIsHTML}
			{/iteration:positionMain}

			{* Widgets *}
			{iteration:positionMain}
				{option:!positionMain.blockIsHTML}
					{$positionMain.blockContent}
				{/option:!positionMain.blockIsHTML}
			{/iteration:positionMain}

			{* Search *}
			{iteration:positionSearch}
				{option:!positionSearch.blockIsHTML}
					{$positionSearch.blockContent}
				{/option:!positionSearch.blockIsHTML}
			{/iteration:positionSearch}

		</div>

	{include:core/layout/templates/footer.tpl}
	</div>
	{* Site wide HTML *}
	{$siteHTMLFooter}
</body>
</html>


