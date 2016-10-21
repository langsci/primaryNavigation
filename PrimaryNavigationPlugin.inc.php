<?php
/**
 * @file plugins/generic/primaryNavigation/PrimaryNavigationPlugin.inc.php
 *
 * Copyright (c) 2016 Language Science Press
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class PrimaryNavigationPlugin
 *
 */
import('lib.pkp.classes.plugins.GenericPlugin');
class PrimaryNavigationPlugin extends GenericPlugin {
	/**
	 * Register the plugin.
	 * @param $category string
	 * @param $path string
	 */
	function register($category, $path) {
		if (parent::register($category, $path)) {
			if ($this->getEnabled()) {
				HookRegistry::register ('TemplateManager::include', array(&$this, 'handleIncludeTemplate'));
			}
			return true;
		}
		return false;
	}
	function handleIncludeTemplate($hookName, $args) {
		$templateMgr =& $args[0];
		$params =& $args[1];
		if (!isset($params['smarty_include_tpl_file'])) {
			return false;
		}
		switch ($params['smarty_include_tpl_file']) {
			case 'frontend/components/primaryNavMenu.tpl':
				$templateMgr->display($this->getTemplatePath() . 
				'primaryNavMenuModified.tpl', 'text/html', 'TemplateManager::include');
				return true;
			case 'header/frontend/usernav.tpl':
				$templateMgr->display($this->getTemplatePath() . 
				'usernavModified.tpl', 'text/html', 'TemplateManager::include');
				return true;
		}
		return false;
	}
	/**
	 * @copydoc PKPPlugin::getDisplayName()
	 */
	function getDisplayName() {
		return __('plugins.generic.primaryNavigation.displayName');
	}
	/**
	 * @copydoc PKPPlugin::getDescription()
	 */
	function getDescription() {
		return __('plugins.generic.primaryNavigation.description');
	}
	/**
	 * @copydoc PKPPlugin::getTemplatePath
	 */
	function getTemplatePath() {
		return parent::getTemplatePath() . 'templates/';
	}
}
?>
