<footer class="container doormat">
	<!-- Recent comments -->
	<div class="row">
	<section class="dominant doormatWidget">
			{* Recent comments *}
			{iteration:positionLeftfooter}
				{option:!positionLeftfooter.blockIsHTML}
					{$positionLeftfooter.blockContent}
				{/option:!positionLeftfooter.blockIsHTML}
			{/iteration:positionLeftfooter}
	</section>

	<!-- Blurb -->
	<section class="secondary doormatBlurb">
		{* Content block *}
		{iteration:positionRightfooter}
			{option:!positionRightfooter.blockIsHTML}
				{$positionRightfooter.blockContent}
			{/option:!positionRightfooter.blockIsHTML}
		{/iteration:positionRightfooter}
	</section>

	<!-- Social -->
	<section class="tertiary doormatSocial">
		{iteration:positionSocial}
			{option:!positionSocial.blockIsHTML}
				{$positionSocial.blockContent}
			{/option:!positionSocial.blockIsHTML}
		{/iteration:positionSocial}
	</section>

	<!-- Info -->
	<section class="full doormatInfo">
		<p class="small left">
			{* Footer links *}
			{iteration:footerLinks}
				<a href="{$footerLinks.url}" title="{$footerLinks.title}" {option:footerLinks.rel} rel="{$footerLinks.rel}"{/option:footerLinks.rel} class="textlink textlinkBorder">{$footerLinks.navigation_title}</a>
			{/iteration:footerLinks}
			<a id="RSSfeed" href="{$var|geturlforblock:'blog':'rss'}" class="textlink textlinkBorder">{$lblSubscribeToTheRSSFeed|ucfirst}</a>
		</p>
		<p class="small right">Copyright © {$now|date:'Y'} {$siteTitle}.
			<a href="http://www.fork-cms.com" class="textlink textlinkBorder">Fork CMS</a>
			<a href="http://www.fork-cms.com/extensions/detail/panakeia" class="textlink textlinkBorder">Panakeia theme</a>
		</p>
	</section>
	</div>
</footer>

	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}

	{* Theme specific Javascript *}
	<!-- Make responsive website responsive in IE<9 -->
	<!--[if lt IE 9  & (!IEMobile)]><script src="{$THEME_URL}/core/js/respond.min.js"></script><![endif]-->
	<script src="{$THEME_URL}/core/js/scripts.min.js"></script>
