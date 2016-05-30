{**
 * plugins/generic/primaryNavigation/templates/policies.tpl
 *
 * Copyright (c) 2016 Language Science Press
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 *}

{include file="frontend/components/header.tpl" pageTitleTranslated="$title"}

<h2>{translate key="plugins.generic.primaryNavigation.editorialPolicies.title"}</h2>

<h3>{translate key="plugins.generic.primaryNavigation.copyrightNotice"}</h3>
<p>{$submissionInfo.copyrightNotice|nl2br|strip_unsafe_html}</p>

<h3>{translate key="about.privacyStatement"}</h2>
</p>{$submissionInfo.privacyStatement|nl2br|strip_unsafe_html}</p>

<h3>{translate key="about.reviewPolicy"}</h2>
<p>{$submissionInfo.reviewPolicy|nl2br|strip_unsafe_html}</p>
	
<h3>{translate key="about.openAccessPolicy"}</h2>	
{$editorialPolicies.openAccessPolicy|nl2br|strip_unsafe_html}

{include file="frontend/components/footer.tpl"}


