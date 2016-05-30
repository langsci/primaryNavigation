<?php

/**
 * @file plugins/generic/primaryNavigation/PluginAboutContextHandler.inc.php
 *
 * Copyright (c) 2016 Language Science Press
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class PluginAboutContextHandler
 */

import('classes.handler.Handler');
import('pages.about.AboutContextHandler');

class PluginAboutContextHandler extends AboutContextHandler {

	function PluginAboutContextHandler() {
		parent::AboutContextHandler();
	}

	static function getSubmissionsInfo($context) {
		return AboutContextHandler::getSubmissionsInfo($context);
	}

	static function getEditorialPoliciesInfo($context) {
		return AboutContextHandler::getEditorialPoliciesInfo($context);
	}

	static function getSponsorshipInfo($context) {
		return AboutContextHandler::getSponsorshipInfo($context);
	}

}

?>
