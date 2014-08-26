{*
	variables that are available:
	- {$widgetBlogCategories}:
*}

{option:widgetBlogCategories}
			<ul class="subNav">
				<li>
					<a href="{$var|geturlforblock:'Blog'}" rel="next nofollow" title="Next page">{$lblAll|ucfirst}</a>
				</li>
				{iteration:widgetBlogCategories}
				<li>
					<a href="{$widgetBlogCategories.url}">{$widgetBlogCategories.label|rtrim}&nbsp;<span>({$widgetBlogCategories.total|rtrim})</span></a>
				</li>
					{/iteration:widgetBlogCategories}
			</ul>
{/option:widgetBlogCategories}
