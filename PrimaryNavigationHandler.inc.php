<?php

/**
 * @file pplugins/generic/primaryNavigation/PrimaryNavigationHandler.inc.php
 *
 * Copyright (c) 2016 Language Science Press
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class PrimaryNavigationHandler
 *
 */

import('classes.handler.Handler');
import('plugins.generic.primaryNavigation.PluginAboutContextHandler');

class PrimaryNavigationHandler extends Handler {	

	static $plugin;

	function PrimaryNavigationHandler() {
		parent::Handler();
	}

	/**
	 * Provide the plugin to the handler.
	 */
	static function setPlugin($plugin) {
		self::$plugin = $plugin;
	}

	function policies($args, $request) {

		// create new page for press policies
		$templateMgr = TemplateManager::getManager($request);
		$this->setupTemplate($request); // important for getting the correct menu
		$context = $request->getContext();

		$templateMgr->assign('submissionInfo', PluginAboutContextHandler::getSubmissionsInfo($context));
		$templateMgr->assign('editorialPolicies', PluginAboutContextHandler::getEditorialPoliciesInfo($context));
		$templateMgr->assign('pageTitle', 'plugins.generic.primaryNavigation.editorialPolicies.title');
		$primaryNavigationPlugin = PluginRegistry::getPlugin('generic', PRIMARYNAVIGATION_PLUGIN_NAME);
		$templateMgr->display($primaryNavigationPlugin->getTemplatePath().'policies.tpl');
	}

	function sponsors($args, $request) {

		// create new page for sponsors
		$templateMgr = TemplateManager::getManager($request);
		$this->setupTemplate($request); // important for getting the correct menu
		$context = $request->getContext();
		$templateMgr->assign('sponsorship', PluginAboutContextHandler::getSponsorshipInfo($context));
		$templateMgr->assign('pageTitle', 'plugins.generic.primaryNavigation.sponsors.title');
		$primaryNavigationPlugin = PluginRegistry::getPlugin('generic', PRIMARYNAVIGATION_PLUGIN_NAME);
		$templateMgr->display($primaryNavigationPlugin->getTemplatePath().'sponsors.tpl');
	}

}

?>
