{**
 * @file plugins/generic/primaryNavigation/templates/primaryNavMenuModified.tpl
 *
 * Copyright (c) 2016 Language Science Press
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Primary navigation menu list for OMP
 *}

<ul id="navigationPrimary" class="pkp_navigation_primary pkp_nav_list">

	<li>
		<a href="{url router=$smarty.const.ROUTE_PAGE page="catalog"}">
			{translate key="plugins.generic.primaryNavigation.catalog"}
		</a>
	</li>

	<li>
		<a href="{url router=$smarty.const.ROUTE_PAGE page="series"}">
			{translate key="plugins.generic.primaryNavigation.series"}
		</a>
	</li>

	<li class='has_submenu'>
		<a>
			{translate key="plugins.generic.primaryNavigation.background"}
		</a>
		<ul>
			<li>
				<a href="{url router=$smarty.const.ROUTE_PAGE page="motivation"}">
					{translate key="plugins.generic.primaryNavigation.motivation"}
				</a>
			</li>
			<li>
				<a href="{url router=$smarty.const.ROUTE_PAGE page="setup"}">
					{translate key="plugins.generic.primaryNavigation.setup"}
				</a>
			</li>
			<li>
				<a href="{url router=$smarty.const.ROUTE_PAGE page="vision"}">
					{translate key="plugins.generic.primaryNavigation.vision"}
				</a>
			</li>

		</ul>
	</li>

	<li class='has_submenu'>
		<a>
			{translate key="plugins.generic.primaryNavigation.community"}
		</a>
		<ul>
			<li>
				<a href="{url router=$smarty.const.ROUTE_PAGE page="advisoryBoard"}">
					{translate key="plugins.generic.primaryNavigation.advisoryBoard"}
				</a>
			</li>
			<li>
				<a href="{url router=$smarty.const.ROUTE_PAGE page="supporters"}">
					{translate key="plugins.generic.primaryNavigation.supporters"}
				</a>
			</li>
			<li>
				<a href="{url router=$smarty.const.ROUTE_PAGE page="sponsors"}">
					{translate key="plugins.generic.primaryNavigation.sponsors"}
				</a>
			</li>
			<li>
				<a href="{url router=$smarty.const.ROUTE_PAGE page="hallOfFame"}">
					{translate key="plugins.generic.primaryNavigation.hallOfFame"}
				</a>
			</li>
			<li>
				<a href="{url router=$smarty.const.ROUTE_PAGE page="supportUs"}">
					{translate key="plugins.generic.primaryNavigation.supportUs"}
				</a>
			</li>
		</ul>
	</li>

</ul>

