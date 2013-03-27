{include:core/layout/templates/head.tpl}
<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	{include:core/layout/templates/header.tpl}

	<div class="wrapper">

		<div class="container mainContent">

			<div class="centered">
				<a href="/" class="monogramNeg">{$siteTitle|substring:0:1}</a>
				<p class="pageTitle"><span>{iteration:breadcrumb}{option:breadcrumb.last}{$breadcrumb.title}{/option:breadcrumb.last}{/iteration:breadcrumb}</span></p>
			</div>


			{* Content *}
			{iteration:positionMain}
				{option:positionMain.blockIsHTML}
				<article class="full article lead">
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


