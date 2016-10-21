Key data
============

- name of the plugin: Primary Navigation Plugin
- author: Carola Fanselow
- current version: 1.0.0.0
- tested on OMP version: 1.2.0
- github link: https://github.com/langsci/primaryNavigation.git
- community plugin: 2 different versions for Language Science Press and the community
- date: 2016/05/11

Description
============

This plugin replaces the template for the primary navigation menu and the user navigation (meta navigation at the top/right).
 
Implementation
================

Hooks
-----
- used hooks: 1

		TemplateManager::include

New pages
------
- new pages: 0

Templates
---------
- templates that replace other templates: 1

		primaryNavMenuModified.tpl replaces templates/frontend/components/primaryNavMenu.tpl
		usernavModified.tpl replaces lib/pkp/templates/header/frontend/usernav.tpl

- templates that are modified with template hooks: 0
- new/additional templates: 0


Database access, server access
-----------------------------
- reading access to OMP tables: 0
- writing access to OMP tables: 0
- new tables: 0
- nonrecurring server access: no
- recurring server access: no
 
Classes, plugins, external software
-----------------------
- OMP classes used (php): 4
	
		GenericPlugin
		TemplateManager

- OMP classes used (js, jqeury, ajax): 1

		MenuHandler

- necessary plugins: 0
- optional plugins: 0
- use of external software: no
- file upload: no
 
Metrics
--------
- number of files: 10
- lines of code: 424

Settings
--------
- settings: no

Plugin category
----------
- plugin category: generic

Other
=============
- does using the plugin require special (background)-knowledge?: yes, the templates 'primaryNavMenuModified.tpl' and 'usernaviModified.tpl' have to be adapted
- access restrictions: no
- adds css: yes


