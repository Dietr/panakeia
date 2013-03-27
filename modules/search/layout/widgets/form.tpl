<section id="searchFormWidget" class="indent search">
	{form:search}
	<form accept-charset="UTF-8" action="/search" method="get" id="search">
		<!-- <input type="hidden" value="search" id="formSearch" name="form" /> -->
		<div class="">
			{$txtQWidget}
			<input id="submit" class="inputSubmit" type="submit" name="submit" value="{$lblSearch|ucfirst}" />
		</div>
	</form>
	{/form:search}
</section>
