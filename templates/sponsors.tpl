{**
 * plugins/generic/primaryNavigation/templates/sponsors.tpl
 *
 * Copyright (c) 2016 Language Science Press
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 *}

{include file="frontend/components/header.tpl" pageTitleTranslated="$title"}

<link rel="stylesheet" href="{$baseUrl}/plugins/generic/primaryNavigation/css/primaryNavigation.css" type="text/css" />

	{* Sponsors *}
	{if $sponsorship.sponsorNote || $sponsorship.sponsors}
		<div class="sponsors">
			<h2>
				{translate key="about.sponsors"}
				{include file="frontend/components/editLink.tpl" page="management" op="settings" path="press" anchor="affiliationAndSupport" sectionTitleKey="about.sponsors"}
			</h2>
			{$sponsorship.sponsorNote|nl2br}
			{if $sponsorship.sponsors}
				<ul>
					{foreach from=$sponsorship.sponsors item=sponsor}
						<li>
							<a href="{$sponsor.url|escape}">
								{$sponsor.institution|escape}
							</a>
						</li>
					{/foreach}
				</ul>
			{/if}
		</div>
	{/if}

	{* Contributors *}
	{if $sponsorship.contributorNote || $sponsorship.contributors}
		<div class="contributors">
			<h2>
				{translate key="about.contributors"}
				{include file="frontend/components/editLink.tpl" page="management" op="settings" path="press" anchor="affiliationAndSupport" sectionTitleKey="about.contributors"}
			</h2>
			{$sponsorship.contributorNote|nl2br}
			{if $sponsorship.contributors}
				<ul>
					{foreach from=$sponsorship.contributors item=contributor}
						<li>
							<a href="{$contributor.url|escape}">
								{$contributor.institution|escape}
							</a>
						</li>
					{/foreach}
				</ul>
			{/if}
		</div>
	{/if}



{include file="frontend/components/footer.tpl"}


