{**
 * plugins/generic/primaryNavigation/templates/usernavModified.tpl
 *
 * Copyright (c) 2016 Language Science Press
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 *}

<script type="text/javascript">
	// Attach the JS file tab handler.
	$(function() {ldelim}
		$('#navigationUser').pkpHandler(
				'$.pkp.controllers.MenuHandler');
	{rdelim});
 </script>
<ul id="navigationUser" class="pkp_navigation_user pkp_nav_list" role="navigation" aria-label="{translate|escape key="common.navigation.user"}">
	<li>
		<a class="social_media_icon" href="https://www.facebook.com/langsci/" title="Language Science Press on Facebook">
			<img alt="" src="{$baseUrl}/plugins/generic/primaryNavigation/img/facebook30.png"></img>
		</a>
	</li>
	<li>
		<a class="social_media_icon" href="https://twitter.com/LangSciPress" title="Language Science Press on Twitter">
			<img alt="" src="{$baseUrl}/plugins/generic/primaryNavigation/img/twitter30.png"></img>
		</a>
	</li>
	<li>
		<a class="social_media_icon" href="http://userblogs.fu-berlin.de/langsci-press/" title="The Language Science Press Blog">
			<img alt="" src="{$baseUrl}/plugins/generic/primaryNavigation/img/blog30.png"></img>
		</a>
	</li>
	<li>
		<a class="social_media_icon" href="newsletterlink" title="Get the Language Science Press newsletter">
			<img alt="" src="{$baseUrl}/plugins/generic/primaryNavigation/img/newsletter30.png"></img>
		</a>
	</li>
	{if $isUserLoggedIn}
		<li>
			{include file="controllers/page/tasks.tpl"}
		</li>
		<li class="profile has_submenu">
			<a href="{url router=$smarty.const.ROUTE_PAGE page="submissions"}">{$loggedInUsername|escape}</a>
			<ul>
				{if array_intersect(array(ROLE_ID_MANAGER, ROLE_ID_ASSISTANT, ROLE_ID_REVIEWER, ROLE_ID_AUTHOR), $userRoles)}
					<li>
						<a href="{url router=$smarty.const.ROUTE_PAGE page="submissions"}">
							{translate key="navigation.submissions"}
						</a>
					</li>
				{/if}
				<li>
					<a href="{url router=$smarty.const.ROUTE_PAGE page="user" op="profile"}">
						{translate key="common.viewProfile"}
					</a>
				</li>
				{if array_intersect(array(ROLE_ID_SITE_ADMIN), $userRoles)}
				<li>
					<a href="{if $multipleContexts}{url router=$smarty.const.ROUTE_PAGE context="index" page="admin" op="index"}{else}{url router=$smarty.const.ROUTE_PAGE page="admin" op="index"}{/if}">
						{translate key="navigation.admin"}
					</a>
				</li>
				{/if}
				<li>
					<a href="{url router=$smarty.const.ROUTE_PAGE page="login" op="signOut"}">
						{translate key="user.logOut"}
					</a>
				</li>
				{if $isUserLoggedInAs}
					<li>
						<a href="{url router=$smarty.const.ROUTE_PAGE page="login" op="signOutAsUser"}">
							{translate key="user.logOutAs"} {$loggedInUsername|escape}
						</a>
					</li>
				{/if}
			</ul>
		</li>
	{elseif !$notInstalled}
		{if !$hideRegisterLink}
			<li><a href="{url router=$smarty.const.ROUTE_PAGE page="user" op="register"}">{translate key="navigation.register"}</a></li>
		{/if}
		<li><a href="{url router=$smarty.const.ROUTE_PAGE page="login"}">{translate key="navigation.login"}</a></li>
	{/if}
</ul>