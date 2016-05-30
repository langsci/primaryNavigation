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

This plugin replaces the template for the primary navigation menu and the user navigation (meta navigation at the top/right). Additionally, it adds two new page (about/policies and community/sponsors). 
 
Implementation
================

Hooks
-----
- used hooks: 2

		TemplateManager::include
		LoadHandler

New pages
------
- new pages: 1

		about/policies

Templates
---------
- templates that replace other templates: 1

		primaryNavMenuModified.tpl replaces templates/frontend/components/primaryNavMenu.tpl
		usernavModified.tpl replaces templates/header/frontend/usernav.tpl

- templates that are modified with template hooks: 0
- new/additional templates: 1

		policies.tpl

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
		Handler
		AboutContextHandler
	
- OMP classes used (js, jqeury, ajax): 1

		MenuHandler

- necessary plugins: 0
- optional plugins: 0
- use of external software: no
- file upload: no
 
Metrics
--------
- number of files: 13
- lines of code: 644

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


