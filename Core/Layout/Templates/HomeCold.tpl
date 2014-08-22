{include:Core/Layout/Templates/Head.tpl}
<body class="{$LANGUAGE} cold" itemscope itemtype="http://schema.org/WebPage">
	{include:Core/Layout/Templates/Header.tpl}

	<div class="container hero">
		{* Logo *}
		<h1 class="full">
			<a href="/" class="logo" title="{$pageTitle}"><span class="monogram">{$siteTitle|substring:0:1}</span><span class="logotype">{$siteTitle}</span></a>
		</h1>

		{* Content block *}
		{iteration:positionTop}
		<div class="heroBlurb">
				<div class="centered">{$positionTop.blockContent}</div>
		</div>
		{/iteration:positionTop}
	</div>

	<div class="wrapper wrapperLong">

		<div class="container frame">
			{* Content *}
			{iteration:positionMain}
				{option:positionMain.blockIsHTML}
				<article class="full article">
					<div class="centered articleContent plain">
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

	{include:Core/Layout/Templates/Footer.tpl}
	</div>
	{* Site wide HTML *}
	{$siteHTMLFooter}
</body>
</html>


