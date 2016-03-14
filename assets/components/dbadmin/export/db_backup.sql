-- Время создания: 26 Dec 2015, 04:56

--
-- Структура таблицы `modx_access_actiondom`
--

DROP TABLE IF EXISTS `modx_access_actiondom`;
CREATE TABLE `modx_access_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actions`
--

DROP TABLE IF EXISTS `modx_access_actions`;
CREATE TABLE `modx_access_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_category`
--

DROP TABLE IF EXISTS `modx_access_category`;
CREATE TABLE `modx_access_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_context`
--

DROP TABLE IF EXISTS `modx_access_context`;
CREATE TABLE `modx_access_context` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES 
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_elements`
--

DROP TABLE IF EXISTS `modx_access_elements`;
CREATE TABLE `modx_access_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_media_source`
--

DROP TABLE IF EXISTS `modx_access_media_source`;
CREATE TABLE `modx_access_media_source` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_menus`
--

DROP TABLE IF EXISTS `modx_access_menus`;
CREATE TABLE `modx_access_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_namespace`
--

DROP TABLE IF EXISTS `modx_access_namespace`;
CREATE TABLE `modx_access_namespace` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_permissions`
--

DROP TABLE IF EXISTS `modx_access_permissions`;
CREATE TABLE `modx_access_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `template` (`template`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES 
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(22, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(23, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(24, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(25, 1, 'delete_template', 'perm.delete_template_desc', 1),
(26, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(27, 1, 'delete_role', 'perm.delete_role_desc', 1),
(28, 1, 'delete_user', 'perm.delete_user_desc', 1),
(29, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(30, 1, 'directory_create', 'perm.directory_create_desc', 1),
(31, 1, 'directory_list', 'perm.directory_list_desc', 1),
(32, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(33, 1, 'directory_update', 'perm.directory_update_desc', 1),
(34, 1, 'edit_category', 'perm.edit_category_desc', 1),
(35, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(36, 1, 'edit_context', 'perm.edit_context_desc', 1),
(37, 1, 'edit_document', 'perm.edit_document_desc', 1),
(38, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(39, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(40, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(41, 1, 'edit_role', 'perm.edit_role_desc', 1),
(42, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(43, 1, 'edit_template', 'perm.edit_template_desc', 1),
(44, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(45, 1, 'edit_user', 'perm.edit_user_desc', 1),
(46, 1, 'element_tree', 'perm.element_tree_desc', 1),
(47, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(48, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(49, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(50, 1, 'export_static', 'perm.export_static_desc', 1),
(51, 1, 'file_create', 'perm.file_create_desc', 1),
(52, 1, 'file_list', 'perm.file_list_desc', 1),
(53, 1, 'file_manager', 'perm.file_manager_desc', 1),
(54, 1, 'file_remove', 'perm.file_remove_desc', 1),
(55, 1, 'file_tree', 'perm.file_tree_desc', 1),
(56, 1, 'file_update', 'perm.file_update_desc', 1),
(57, 1, 'file_upload', 'perm.file_upload_desc', 1),
(58, 1, 'file_view', 'perm.file_view_desc', 1),
(59, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(60, 1, 'frames', 'perm.frames_desc', 1),
(61, 1, 'help', 'perm.help_desc', 1),
(62, 1, 'home', 'perm.home_desc', 1),
(63, 1, 'import_static', 'perm.import_static_desc', 1),
(64, 1, 'languages', 'perm.languages_desc', 1),
(65, 1, 'lexicons', 'perm.lexicons_desc', 1),
(66, 1, 'list', 'perm.list_desc', 1),
(67, 1, 'load', 'perm.load_desc', 1),
(68, 1, 'logout', 'perm.logout_desc', 1),
(69, 1, 'logs', 'perm.logs_desc', 1),
(70, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(71, 1, 'menu_security', 'perm.menu_security_desc', 1),
(72, 1, 'menu_site', 'perm.menu_site_desc', 1),
(73, 1, 'menu_support', 'perm.menu_support_desc', 1),
(74, 1, 'menu_system', 'perm.menu_system_desc', 1),
(75, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(76, 1, 'menu_user', 'perm.menu_user_desc', 1),
(77, 1, 'menus', 'perm.menus_desc', 1),
(78, 1, 'messages', 'perm.messages_desc', 1),
(79, 1, 'namespaces', 'perm.namespaces_desc', 1),
(80, 1, 'new_category', 'perm.new_category_desc', 1),
(81, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(82, 1, 'new_context', 'perm.new_context_desc', 1),
(83, 1, 'new_document', 'perm.new_document_desc', 1),
(84, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(85, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(86, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(87, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(88, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(89, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(90, 1, 'new_role', 'perm.new_role_desc', 1),
(91, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(92, 1, 'new_template', 'perm.new_template_desc', 1),
(93, 1, 'new_tv', 'perm.new_tv_desc', 1),
(94, 1, 'new_user', 'perm.new_user_desc', 1),
(95, 1, 'packages', 'perm.packages_desc', 1),
(96, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(97, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(98, 1, 'policy_new', 'perm.policy_new_desc', 1),
(99, 1, 'policy_save', 'perm.policy_save_desc', 1),
(100, 1, 'policy_view', 'perm.policy_view_desc', 1),
(101, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(102, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(103, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(104, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(105, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(106, 1, 'property_sets', 'perm.property_sets_desc', 1),
(107, 1, 'providers', 'perm.providers_desc', 1),
(108, 1, 'publish_document', 'perm.publish_document_desc', 1),
(109, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(110, 1, 'remove', 'perm.remove_desc', 1),
(111, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(112, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(113, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(114, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(115, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(116, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(117, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(118, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(119, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(120, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(121, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(122, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(123, 1, 'save', 'perm.save_desc', 1),
(124, 1, 'save_category', 'perm.save_category_desc', 1),
(125, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(126, 1, 'save_context', 'perm.save_context_desc', 1),
(127, 1, 'save_document', 'perm.save_document_desc', 1),
(128, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(129, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(130, 1, 'save_role', 'perm.save_role_desc', 1),
(131, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(132, 1, 'save_template', 'perm.save_template_desc', 1),
(133, 1, 'save_tv', 'perm.save_tv_desc', 1),
(134, 1, 'save_user', 'perm.save_user_desc', 1),
(135, 1, 'search', 'perm.search_desc', 1),
(136, 1, 'settings', 'perm.settings_desc', 1),
(137, 1, 'events', 'perm.events_desc', 1),
(138, 1, 'source_save', 'perm.source_save_desc', 1),
(139, 1, 'source_delete', 'perm.source_delete_desc', 1),
(140, 1, 'source_edit', 'perm.source_edit_desc', 1),
(141, 1, 'source_view', 'perm.source_view_desc', 1),
(142, 1, 'sources', 'perm.sources_desc', 1),
(143, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(144, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(145, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(146, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(147, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(148, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(149, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(150, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(151, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(152, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(153, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(154, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(155, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(156, 1, 'view', 'perm.view_desc', 1),
(157, 1, 'view_category', 'perm.view_category_desc', 1),
(158, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(159, 1, 'view_context', 'perm.view_context_desc', 1),
(160, 1, 'view_document', 'perm.view_document_desc', 1),
(161, 1, 'view_element', 'perm.view_element_desc', 1),
(162, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(163, 1, 'view_offline', 'perm.view_offline_desc', 1),
(164, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(165, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(166, 1, 'view_role', 'perm.view_role_desc', 1),
(167, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(168, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(169, 1, 'view_template', 'perm.view_template_desc', 1),
(170, 1, 'view_tv', 'perm.view_tv_desc', 1),
(171, 1, 'view_user', 'perm.view_user_desc', 1),
(172, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(173, 1, 'workspaces', 'perm.workspaces_desc', 1),
(174, 2, 'add_children', 'perm.add_children_desc', 1),
(175, 2, 'copy', 'perm.copy_desc', 1),
(176, 2, 'create', 'perm.create_desc', 1),
(177, 2, 'delete', 'perm.delete_desc', 1),
(178, 2, 'list', 'perm.list_desc', 1),
(179, 2, 'load', 'perm.load_desc', 1),
(180, 2, 'move', 'perm.move_desc', 1),
(181, 2, 'publish', 'perm.publish_desc', 1),
(182, 2, 'remove', 'perm.remove_desc', 1),
(183, 2, 'save', 'perm.save_desc', 1),
(184, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(185, 2, 'undelete', 'perm.undelete_desc', 1),
(186, 2, 'unpublish', 'perm.unpublish_desc', 1),
(187, 2, 'view', 'perm.view_desc', 1),
(188, 3, 'load', 'perm.load_desc', 1),
(189, 3, 'list', 'perm.list_desc', 1),
(190, 3, 'view', 'perm.view_desc', 1),
(191, 3, 'save', 'perm.save_desc', 1),
(192, 3, 'remove', 'perm.remove_desc', 1),
(193, 4, 'add_children', 'perm.add_children_desc', 1),
(194, 4, 'create', 'perm.create_desc', 1),
(195, 4, 'copy', 'perm.copy_desc', 1),
(196, 4, 'delete', 'perm.delete_desc', 1),
(197, 4, 'list', 'perm.list_desc', 1),
(198, 4, 'load', 'perm.load_desc', 1),
(199, 4, 'remove', 'perm.remove_desc', 1),
(200, 4, 'save', 'perm.save_desc', 1),
(201, 4, 'view', 'perm.view_desc', 1),
(202, 5, 'create', 'perm.create_desc', 1),
(203, 5, 'copy', 'perm.copy_desc', 1),
(204, 5, 'list', 'perm.list_desc', 1),
(205, 5, 'load', 'perm.load_desc', 1),
(206, 5, 'remove', 'perm.remove_desc', 1),
(207, 5, 'save', 'perm.save_desc', 1),
(208, 5, 'view', 'perm.view_desc', 1),
(209, 6, 'load', 'perm.load_desc', 1),
(210, 6, 'list', 'perm.list_desc', 1),
(211, 6, 'view', 'perm.view_desc', 1),
(212, 6, 'save', 'perm.save_desc', 1),
(213, 6, 'remove', 'perm.remove_desc', 1),
(214, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(215, 6, 'copy', 'perm.copy_desc', 1),
(216, 7, 'list', 'perm.list_desc', 1),
(217, 7, 'load', 'perm.load_desc', 1),
(218, 7, 'view', 'perm.view_desc', 1),
(219, 8, 'table_export', 'table_export', 1),
(220, 8, 'sql_query_execute', 'sql_query_execute', 1),
(221, 8, 'tables_list', 'tables_list', 1),
(222, 8, 'table_remove', 'table_remove', 1),
(223, 8, 'table_truncate', 'table_truncate', 1),
(224, 8, 'table_view', 'table_view', 1),
(225, 8, 'table_save', 'table_save', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policies`
--

DROP TABLE IF EXISTS `modx_access_policies`;
CREATE TABLE `modx_access_policies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `template` int(10) unsigned NOT NULL DEFAULT '0',
  `class` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `class` (`class`),
  KEY `template` (`template`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES 
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{\"load\":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"new_document\":true,\"delete_document\":true}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}', 'permissions'),
(12, 'Hidden Namespace', 'Hidden Namespace policy, will not show Namespace in lists.', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true}', 'permissions'),
(13, 'dbAdministrator', 'A policy for database administrator.', 0, 8, '', '{\"tables_list\":true,\"table_view\":true,\"table_save\":true,\"table_truncate\":true,\"table_remove\":true,\"table_export\":true,\"sql_query_execute\":true}', 'dbadmin:permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_template_groups`
--

DROP TABLE IF EXISTS `modx_access_policy_template_groups`;
CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES 
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.'),
(6, 'Namespace', 'All Namespace based policy templates.');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_templates`
--

DROP TABLE IF EXISTS `modx_access_policy_templates`;
CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_group` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES 
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions'),
(7, 6, 'NamespaceTemplate', 'Namespace Policy Template with all attributes.', 'permissions'),
(8, 1, 'dbAdministratorPolicyTemplate', 'Database administrator policy template.', 'dbadmin:permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resource_groups`
--

DROP TABLE IF EXISTS `modx_access_resource_groups`;
CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resources`
--

DROP TABLE IF EXISTS `modx_access_resources`;
CREATE TABLE `modx_access_resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_templatevars`
--

DROP TABLE IF EXISTS `modx_access_templatevars`;
CREATE TABLE `modx_access_templatevars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_actiondom`
--

DROP TABLE IF EXISTS `modx_actiondom`;
CREATE TABLE `modx_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(255) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `set` (`set`),
  KEY `action` (`action`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `for_parent` (`for_parent`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions`
--

DROP TABLE IF EXISTS `modx_actions`;
CREATE TABLE `modx_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(255) NOT NULL,
  `haslayout` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `controller` (`controller`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_actions`
--

INSERT INTO `modx_actions` (`id`, `namespace`, `controller`, `haslayout`, `lang_topics`, `assets`, `help_url`) VALUES 
(1, 'modupdater', 'index', 1, 'modupdater:default', '', ''),
(2, 'dbadmin', 'index', 1, 'dbadmin:default', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions_fields`
--

DROP TABLE IF EXISTS `modx_actions_fields`;
CREATE TABLE `modx_actions_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(255) NOT NULL DEFAULT '',
  `form` varchar(255) NOT NULL DEFAULT '',
  `other` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `action` (`action`),
  KEY `type` (`type`),
  KEY `tab` (`tab`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES 
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(33, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(34, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(35, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(36, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(37, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(38, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(39, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(40, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(41, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(42, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(43, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(44, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(45, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(46, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(47, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(48, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(49, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(51, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(52, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(53, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(54, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(55, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(56, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(57, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(58, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(59, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(60, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(61, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(62, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(63, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(64, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(65, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(66, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(67, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(68, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(69, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(70, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(71, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(72, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(73, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(74, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(75, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(76, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_users`
--

DROP TABLE IF EXISTS `modx_active_users`;
CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories`
--

DROP TABLE IF EXISTS `modx_categories`;
CREATE TABLE `modx_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`parent`,`category`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `parent`, `category`, `rank`) VALUES 
(1, 0, 'modUpdater', 0),
(2, 0, 'dbAdmin', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories_closure`
--

DROP TABLE IF EXISTS `modx_categories_closure`;
CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) unsigned NOT NULL DEFAULT '0',
  `descendant` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ancestor`,`descendant`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_categories_closure`
--

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES 
(1, 1, 0),
(0, 1, 0),
(2, 2, 0),
(0, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_class_map`
--

DROP TABLE IF EXISTS `modx_class_map`;
CREATE TABLE `modx_class_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(255) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:resource',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`),
  KEY `parent_class` (`parent_class`),
  KEY `name_field` (`name_field`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES 
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_content_type`
--

DROP TABLE IF EXISTS `modx_content_type`;
CREATE TABLE `modx_content_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES 
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context`
--

DROP TABLE IF EXISTS `modx_context`;
CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`),
  KEY `name` (`name`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES 
('web', 'Website', 'The default front-end context for your web site.', 0),
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_resource`
--

DROP TABLE IF EXISTS `modx_context_resource`;
CREATE TABLE `modx_context_resource` (
  `context_key` varchar(255) NOT NULL,
  `resource` int(11) unsigned NOT NULL,
  PRIMARY KEY (`context_key`,`resource`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_setting`
--

DROP TABLE IF EXISTS `modx_context_setting`;
CREATE TABLE `modx_context_setting` (
  `context_key` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`context_key`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES 
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard`
--

DROP TABLE IF EXISTS `modx_dashboard`;
CREATE TABLE `modx_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `hide_trees` (`hide_trees`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES 
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget`
--

DROP TABLE IF EXISTS `modx_dashboard_widget`;
CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(255) NOT NULL DEFAULT '',
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(255) NOT NULL DEFAULT 'half',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `namespace` (`namespace`),
  KEY `lexicon` (`lexicon`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES 
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget_placement`
--

DROP TABLE IF EXISTS `modx_dashboard_widget_placement`;
CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int(10) unsigned NOT NULL DEFAULT '0',
  `widget` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dashboard`,`widget`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_dbadmin_tables_map`
--

DROP TABLE IF EXISTS `modx_dbadmin_tables_map`;
CREATE TABLE `modx_dbadmin_tables_map` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(100) DEFAULT '',
  `package` varchar(255) DEFAULT '',
  PRIMARY KEY (`name`),
  KEY `class` (`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dbadmin_tables_map`
--

INSERT INTO `modx_dbadmin_tables_map` (`name`, `class`, `package`) VALUES 
('modx_access_actiondom', 'modAccessActionDom', 'modx'),
('modx_access_actions', 'modAccessAction', 'modx'),
('modx_access_category', 'modAccessCategory', 'modx'),
('modx_access_context', 'modAccessContext', 'modx'),
('modx_access_elements', 'modAccessElement', 'modx'),
('modx_access_media_source', 'modAccessMediaSource', 'modx.sources'),
('modx_access_menus', 'modAccessMenu', 'modx'),
('modx_access_namespace', 'modAccessNamespace', 'modx'),
('modx_access_permissions', 'modAccessPermission', 'modx'),
('modx_access_policies', 'modAccessPolicy', 'modx'),
('modx_access_policy_template_groups', 'modAccessPolicyTemplateGroup', 'modx'),
('modx_access_policy_templates', 'modAccessPolicyTemplate', 'modx'),
('modx_access_resource_groups', 'modAccessResourceGroup', 'modx'),
('modx_access_resources', 'modAccessResource', 'modx'),
('modx_access_templatevars', 'modAccessTemplateVar', 'modx'),
('modx_actiondom', 'modActionDom', 'modx'),
('modx_actions', 'modAction', 'modx'),
('modx_actions_fields', 'modActionField', 'modx'),
('modx_active_users', 'modActiveUser', 'modx'),
('modx_categories', 'modCategory', 'modx'),
('modx_categories_closure', 'modCategoryClosure', 'modx'),
('modx_class_map', 'modClassMap', 'modx'),
('modx_content_type', 'modContentType', 'modx'),
('modx_context', 'modContext', 'modx'),
('modx_context_resource', 'modContextResource', 'modx'),
('modx_context_setting', 'modContextSetting', 'modx'),
('modx_dashboard', 'modDashboard', 'modx'),
('modx_dashboard_widget', 'modDashboardWidget', 'modx'),
('modx_dashboard_widget_placement', 'modDashboardWidgetPlacement', 'modx'),
('modx_dbadmin_tables_map', '', ''),
('modx_document_groups', 'modResourceGroupResource', 'modx'),
('modx_documentgroup_names', 'modResourceGroup', 'modx'),
('modx_element_property_sets', 'modElementPropertySet', 'modx'),
('modx_extension_packages', 'modExtensionPackage', 'modx'),
('modx_fc_profiles', 'modFormCustomizationProfile', 'modx'),
('modx_fc_profiles_usergroups', 'modFormCustomizationProfileUserGroup', 'modx'),
('modx_fc_sets', 'modFormCustomizationSet', 'modx'),
('modx_lexicon_entries', 'modLexiconEntry', 'modx'),
('modx_manager_log', 'modManagerLog', 'modx'),
('modx_media_sources', 'modMediaSource', 'modx.sources'),
('modx_media_sources_contexts', 'modMediaSourceContext', 'modx.sources'),
('modx_media_sources_elements', 'modMediaSourceElement', 'modx.sources'),
('modx_member_groups', 'modUserGroupMember', 'modx'),
('modx_membergroup_names', 'modUserGroup', 'modx'),
('modx_menus', 'modMenu', 'modx'),
('modx_namespaces', 'modNamespace', 'modx'),
('modx_property_set', 'modPropertySet', 'modx'),
('modx_register_messages', 'modDbRegisterMessage', 'modx.registry.db'),
('modx_register_queues', 'modDbRegisterQueue', 'modx.registry.db'),
('modx_register_topics', 'modDbRegisterTopic', 'modx.registry.db'),
('modx_session', 'modSession', 'modx'),
('modx_site_content', 'modResource', 'modx'),
('modx_site_htmlsnippets', 'modChunk', 'modx'),
('modx_site_plugin_events', 'modPluginEvent', 'modx'),
('modx_site_plugins', 'modPlugin', 'modx'),
('modx_site_snippets', 'modSnippet', 'modx'),
('modx_site_templates', 'modTemplate', 'modx'),
('modx_site_tmplvar_access', 'modTemplateVarResourceGroup', 'modx'),
('modx_site_tmplvar_contentvalues', 'modTemplateVarResource', 'modx'),
('modx_site_tmplvar_templates', 'modTemplateVarTemplate', 'modx'),
('modx_site_tmplvars', 'modTemplateVar', 'modx'),
('modx_system_eventnames', 'modEvent', 'modx'),
('modx_system_settings', 'modSystemSetting', 'modx'),
('modx_transport_packages', 'modTransportPackage', 'modx.transport'),
('modx_transport_providers', 'modTransportProvider', 'modx.transport'),
('modx_user_attributes', 'modUserProfile', 'modx'),
('modx_user_group_roles', 'modUserGroupRole', 'modx'),
('modx_user_group_settings', 'modUserGroupSetting', 'modx'),
('modx_user_messages', 'modUserMessage', 'modx'),
('modx_user_settings', 'modUserSetting', 'modx'),
('modx_users', 'modUser', 'modx'),
('modx_workspaces', 'modWorkspace', 'modx');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_document_groups`
--

DROP TABLE IF EXISTS `modx_document_groups`;
CREATE TABLE `modx_document_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document_group` (`document_group`),
  KEY `document` (`document`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_documentgroup_names`
--

DROP TABLE IF EXISTS `modx_documentgroup_names`;
CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_element_property_sets`
--

DROP TABLE IF EXISTS `modx_element_property_sets`;
CREATE TABLE `modx_element_property_sets` (
  `element` int(10) unsigned NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`element`,`element_class`,`property_set`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_extension_packages`
--

DROP TABLE IF EXISTS `modx_extension_packages`;
CREATE TABLE `modx_extension_packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(255) NOT NULL DEFAULT '',
  `service_class` varchar(255) NOT NULL DEFAULT '',
  `service_name` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles`
--

DROP TABLE IF EXISTS `modx_fc_profiles`;
CREATE TABLE `modx_fc_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `rank` (`rank`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles_usergroups`
--

DROP TABLE IF EXISTS `modx_fc_profiles_usergroups`;
CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`usergroup`,`profile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_sets`
--

DROP TABLE IF EXISTS `modx_fc_sets`;
CREATE TABLE `modx_fc_sets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `profile` (`profile`),
  KEY `action` (`action`),
  KEY `active` (`active`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_lexicon_entries`
--

DROP TABLE IF EXISTS `modx_lexicon_entries`;
CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(255) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `topic` (`topic`),
  KEY `namespace` (`namespace`),
  KEY `language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_log`
--

DROP TABLE IF EXISTS `modx_manager_log`;
CREATE TABLE `modx_manager_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT '0000-00-00 00:00:00',
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_occurred` (`user`,`occurred`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES 
(1, 1, '2015-12-26 04:01:14', 'login', 'modContext', 'mgr'),
(2, 1, '2015-12-26 04:06:36', 'resource_update', 'modResource', '1'),
(3, 1, '2015-12-26 04:08:13', 'resource_update', 'modResource', '1'),
(4, 1, '2015-12-26 04:09:13', 'resource_update', 'modResource', '1'),
(5, 1, '2015-12-26 04:11:09', 'resource_update', 'modResource', '1'),
(6, 1, '2015-12-26 04:16:15', 'dashboard_duplicate', 'modDashboard', '2'),
(7, 1, '2015-12-26 04:16:32', 'dashboard_update', 'modDashboard', '1'),
(8, 1, '2015-12-26 04:16:45', 'dashboard_delete', 'modDashboard', '2'),
(9, 1, '2015-12-26 04:49:19', 'directory_create', '', '/paas/c1747/www/assets/images'),
(10, 1, '2015-12-26 04:49:52', 'file_upload', '', '/paas/c1747/www/assets/images/'),
(11, 1, '2015-12-26 04:50:01', 'save_profile', 'modUser', '1'),
(12, 1, '2015-12-26 04:51:05', 'menu_update', 'modMenu', 'installer'),
(13, 1, '2015-12-26 04:51:15', 'menu_update', 'modMenu', 'refresh_site');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources`
--

DROP TABLE IF EXISTS `modx_media_sources`;
CREATE TABLE `modx_media_sources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_key` (`class_key`),
  KEY `is_stream` (`is_stream`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES 
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_contexts`
--

DROP TABLE IF EXISTS `modx_media_sources_contexts`;
CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_elements`
--

DROP TABLE IF EXISTS `modx_media_sources_elements`;
CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) unsigned NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`object`,`object_class`,`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_member_groups`
--

DROP TABLE IF EXISTS `modx_member_groups`;
CREATE TABLE `modx_member_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_group` int(10) unsigned NOT NULL DEFAULT '0',
  `member` int(10) unsigned NOT NULL DEFAULT '0',
  `role` int(10) unsigned NOT NULL DEFAULT '1',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES 
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_names`
--

DROP TABLE IF EXISTS `modx_membergroup_names`;
CREATE TABLE `modx_membergroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `dashboard` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`),
  KEY `dashboard` (`dashboard`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES 
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_menus`
--

DROP TABLE IF EXISTS `modx_menus`;
CREATE TABLE `modx_menus` (
  `text` varchar(255) NOT NULL DEFAULT '',
  `parent` varchar(255) NOT NULL DEFAULT '',
  `action` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `menuindex` int(11) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  PRIMARY KEY (`text`),
  KEY `parent` (`parent`),
  KEY `action` (`action`),
  KEY `namespace` (`namespace`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES 
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('installer', 'topnav', 'workspaces', '', '', 4, '', '', 'packages', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('refresh_site', 'topnav', '', 'refresh_site_desc', '', 5, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 1, '', '\nMODx.msg.confirm({\n    title: _(\'remove_locks\')\n    ,text: _(\'confirm_remove_locks\')\n    ,url: MODx.config.connectors_url\n    ,params: {\n        action: \'system/remove_locks\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() {\n            var tree = Ext.getCmp(\"modx-resource-tree\");\n            if (tree && tree.rendered) {\n                tree.refresh();\n            }\n         },scope:this}\n    }\n});', 'remove_locks', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 2, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('reports', 'manage', '', 'reports_desc', '', 4, '', '', 'menu_reports', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core'),
('usernav', '', '', 'usernav_desc', '', 1, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon icon-large\"></i>', 6, '', '', 'settings', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('about', 'usernav', 'help', '', '<i class=\"icon-question-circle icon icon-large\"></i>', 7, '', '', 'help', 'core'),
('modupdater', 'components', '1', 'modupdater_menu_desc', 'images/icons/plugin.gif', 0, '', '', '', 'core'),
('dbadmin', 'components', '2', 'dbadmin_menu_desc', 'images/icons/plugin.gif', 0, '', '', '', 'core');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_namespaces`
--

DROP TABLE IF EXISTS `modx_namespaces`;
CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES 
('core', '{core_path}', '{assets_path}'),
('modupdater', '{core_path}components/modupdater/', ''),
('tinymce', '{core_path}components/tinymce/', NULL),
('ace', '{core_path}components/ace/', ''),
('dbadmin', '{core_path}components/dbadmin/', '{base_path}dbAdmin/assets/components/dbadmin/');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_property_set`
--

DROP TABLE IF EXISTS `modx_property_set`;
CREATE TABLE `modx_property_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `properties` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_messages`
--

DROP TABLE IF EXISTS `modx_register_messages`;
CREATE TABLE `modx_register_messages` (
  `topic` int(10) unsigned NOT NULL,
  `id` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) unsigned NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic`,`id`),
  KEY `created` (`created`),
  KEY `valid` (`valid`),
  KEY `accessed` (`accessed`),
  KEY `accesses` (`accesses`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_queues`
--

DROP TABLE IF EXISTS `modx_register_queues`;
CREATE TABLE `modx_register_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES 
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_topics`
--

DROP TABLE IF EXISTS `modx_register_topics`;
CREATE TABLE `modx_register_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  KEY `queue` (`queue`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES 
(1, 1, '/resource/', '2015-12-26 04:02:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_session`
--

DROP TABLE IF EXISTS `modx_session`;
CREATE TABLE `modx_session` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `access` int(20) unsigned NOT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`),
  KEY `access` (`access`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES 
('mu4tel2dmt745h50m6tpq0lo30', 1451099448, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx567e02cf2b57f4.61731848_1567e02faddb629.50745039\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:3:{i:0;s:23:\"567e0352152c58.59763305\";i:1;s:23:\"567e04362dc212.33298491\";i:2;s:23:\"567e0538651069.76953044\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content`
--

DROP TABLE IF EXISTS `modx_site_content`;
CREATE TABLE `modx_site_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(255) NOT NULL DEFAULT '',
  `donthit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) unsigned NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `published` (`published`),
  KEY `pub_date` (`pub_date`),
  KEY `unpub_date` (`unpub_date`),
  KEY `parent` (`parent`),
  KEY `isfolder` (`isfolder`),
  KEY `template` (`template`),
  KEY `menuindex` (`menuindex`),
  KEY `searchable` (`searchable`),
  KEY `cacheable` (`cacheable`),
  KEY `hidemenu` (`hidemenu`),
  KEY `class_key` (`class_key`),
  KEY `context_key` (`context_key`),
  KEY `uri` (`uri`(333)),
  KEY `uri_override` (`uri_override`),
  KEY `hide_children_in_tree` (`hide_children_in_tree`),
  KEY `show_in_tree` (`show_in_tree`),
  KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES 
(1, 'document', 'text/html', 'Главная', '', '', 'index', '', 1, 0, 0, 0, 0, '', '<div class=\"dashboard-block dashboard-block-half \">\r\n    <h3 class=\"title\">Канал новостей MODX</h3>\r\n    <div class=\"body\">\r\n    <div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/qJz2XPzZYq4/modx-revolution-2-4-2-bugfixes-and-ui-improvements\" target=\"_blank\">MODX Revolution 2.4.2 — Bugfixes and UI Improvements</a></h2>\r\n    <span class=\"content\">The latest release of MODX Revolution is a patch upgrade to 2.4.2. If you missed the <a href=\"http://modx.com/blog/2015/08/19/revolution-2.4/\" target=\"_blank\" rel=\"nofollow\">2.4.0 announcement</a>, check out the details <a href=\"http://modx.com/blog/2015/08/26/deep-dive-into-modx-revolution-2.4/\" target=\"_blank\" rel=\"nofollow\">here</a>. 2.4.0 was a big one.<br>\r\n<br>\r\nHighlights from <a href=\"https://raw.githubusercontent.com/modxcms/revolution/v2.4.2-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">the changelog</a>:<ul class=\"dis-ul\"><br>\r\n<li>Add resource title in Manager Log for edited resources</li>\r\n<li>Update Font-Awesome to 4.4 (note if you haven’t voted for a MODX icon in FontAwesome you can do it <a href=\"https://github.com/FortAwesome/Font-Awesome/issues/3455\" target=\"_blank\" rel=\"nofollow\">here</a>)</li>\r\n<li>Update setup to check the minimum supported PHP version</li>\r\n<li>…and a bunch of UI improvements &amp; fixes</li>\r\n</ul>\r\n<br>\r\n<br>\r\n<strong>Important:</strong> 2.3.6 contains a security patch and is considered a mandatory update. 2.4.0 contains all patches from 2.3.6, and also closes the security issue. 2.4.2 is a non-critical patch of the 2.4 branch.<br>\r\n<br>\r\n<strong>Contributors on this Release</strong><br>\r\nLet’s take the time to thank the individual contributors to this release (in no particular order):&#8203;matdave&#8203;&#8203;, &#8203;ilyautkin&#8203;&#8203;, &#8203;inreti&#8203;&#8203;, &#8203;zaigham&#8203;&#8203;, &#8203;jpdevries&#8203;&#8203;, &#8203;whitebyte&#8203;&#8203;, &#8203;Jako&#8203;&#8203;, &#8203;sergant210&#8203;&#8203;, &#8203;argnist&#8203;&#8203;, theboxer&#8203;&#8203;, along with many other contributors who log &amp; triage issues, review PRs, and commit code. The MODX Community is a Beautiful Thing.<br>\r\n<br>\r\n<strong>Security is an Ongoing Process</strong><br>\r\nWe cannot stress how important it is to run the most current version of MODX. We are always improving security. Upgrade regularly to reduce the chance of your site getting hacked. If you need help upgrading your MODX site, <a href=\"http://modx.com/support-and-services/maintain/\" target=\"_blank\" rel=\"nofollow\">let us know</a>.<br>\r\n<br>\r\n<strong>Get Started with Revo 2.4</strong><br>\r\nHere’s what you need to get started or upgrade to MODX Revolution 2.4:<br>\r\n<ul class=\"dis-ul\"><br>\r\n<li><a href=\"http://modx.com/download/\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.4</a></li>\r\n<li><a href=\"http://rtfm.modx.com/revolution/2.x/getting-started/server-requirements\" target=\"_blank\" rel=\"nofollow\">What’s required</a> to run Revolution 2.3.x</li>\r\n<li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a></li>\r\n<li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a></li><li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation</a></li>\r\n</ul>\r\n<br>\r\n<strong>It Takes a Village</strong><br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"https://github.com/modxcms/revolution/issues?state=open\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>,<a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums.<br>\r\n<br>\r\nOn behalf of the entire MODX Team,<br>\r\nThank-you!</span>\r\n    <span class=\"date_stamp\">Tue Oct  6 13:45:31 2015</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/6F1MQdgn32M/modx-revolution-2-4-1-updates-fixes\" target=\"_blank\">MODX Revolution 2.4.1—Updates &amp; Fixes</a></h2>\r\n    <span class=\"content\">The latest release of MODX Revolution is a patch upgrade to 2.4.1. If you missed the <a href=\"http://modx.com/blog/2015/08/19/revolution-2.4/\" target=\"_blank\" rel=\"nofollow\">2.4.0 announcement</a>, get the low-down <a href=\"http://modx.com/blog/2015/08/26/deep-dive-into-modx-revolution-2.4/\" target=\"_blank\" rel=\"nofollow\">here</a>. Lots of goodies.<br>\r\n<br>\r\nHighlights from the changelog:<br>\r\n<br>\r\n<ul class=\"dis-ul\"><br>\r\n<li>Update PHPMailer to v5.2.13</li>\r\n<li>Make user grid in ACL view consistent with user group view</li>\r\n<li>Update xPDO to 2.4.1-pl</li>\r\n<li>Fix dropping elements in template [#12572]</li>\r\n<li>On policy template update sync policies with policy template [#12654]</li>\r\n<li>Restore backwards compatibility for addons interacting with modTransportProvider [#12633]</li>\r\n</ul>\r\n<br>\r\n<strong>Important:</strong> 2.3.6 contains a security patch and is considered a mandatory update. 2.4.0 contains all patches from 2.3.6, and also closes the security issue. 2.4.1 is a non-critical patch of the 2.4 branch.<br>\r\n<br>\r\n<strong>Contributors on this Release</strong><br>\r\n<br>\r\nLet’s take the time to thank the individual contributors to this release (in no particular order): bezumkin, hansek, Mark-H, and theboxer, along with many other contributors who log &amp; triage issues, review PRs, and commit code. The MODX Community Rocks!<br>\r\n<br>\r\n<strong>Security is an Ongoing Process</strong><br>\r\n<br>\r\nWe cannot stress how important it is to run the most current version of MODX. We are always improving security. Upgrade regularly to reduce the chance of your site getting hacked. If you need help upgrading your MODX site, let us know.<br>\r\n<br>\r\n<strong>Get Started with Revo 2.4</strong> <br>\r\nHere’s what you need to get started or upgrade to MODX Revolution 2.4: <br>\r\n<ul class=\"dis-ul\"> <br>\r\n<li><a href=\"modx.com/download/\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.4</a> </li>\r\n<li><a href=\"rtfm.modx.com/revolution/2.x/getting-started/server-requirements\" target=\"_blank\" rel=\"nofollow\">What’s required</a> to run Revolution 2.3.x</li>\r\n<li>How to <a href=\"rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a></li>\r\n<li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a></li>\r\n<li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation</a> </li>\r\n</ul> <br>\r\n<br>\r\n<strong>It Takes a Village</strong> <br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"https:/github.com/modxcms/revolution/issues?state=open\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>, <a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums. <br>\r\n<br>\r\nOn behalf of the entire MODX Team, <br>\r\nThank-you!</span>\r\n    <span class=\"date_stamp\">Wed Sep 23 11:31:17 2015</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/vjg9O7WP4CM/revolution-2-4-package-dependencies-more\" target=\"_blank\">Revolution 2.4 — Package Dependencies &amp; More</a></h2>\r\n    <span class=\"content\"><br>\r\nThe latest release of MODX Revolution is a minor version upgrade to 2.4.0. This release adds package dependencies along with over 70 improvements. <br>\r\n<br>\r\nHighlights are listed below, but check out the <a href=\"https:/raw.githubusercontent.com/modxcms/revolution/v2.4.0-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">changelog</a> for the play-by-play. <ul class=\"dis-ul\"> <li>Package Dependencies! Developers can now specify dependencies for their MODX Extras. This is a way bigger deal than can be decribed here. There\'s never been a more exciting time to develop for your favorite platform <img src=\"http://modx.com/assets/components/discuss/themes/modx/images/smileys/laugh.gif\" alt=\"laugh\"> <br>\r\n</li>\r\n<li>Some improvements have been made to the accessibility of the Manager UI. We\'ve got a ways to go yet, but this version sets the stage better than any previous version. <br>\r\n</li>\r\n<li>Heroic and necessary steps were taken towards making MODX fully <strong>testable</strong>, thanks to @markwillis82. <br>\r\n</li>\r\n<li>Everyone loves performance optimization, and new database indexes in 2.4 deliver the warm fuzzies. <br>\r\n</li>\r\n<li>Better UX, stability, security and overall goodness abound. <br>\r\n</li>\r\n<li>Again, for the full (and rather long) list, read <a href=\"https:/raw.githubusercontent.com/modxcms/revolution/v2.4.0-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">this</a>. </li></ul> <br>\r\n<br>\r\n<strong>Important:</strong> <br>\r\nRevolution 2.3.6 contained a security patch and is considered a mandatory update. Revolution 2.4.0 contains all same patches from 2.3.6, and also closes the same security issue. <br>\r\n<br>\r\n<strong>Contributors on this Release</strong><br>\r\nLet’s take the time to thank the individual contributors to this release (in no particular order): <a href=\"https:/github.com/markwillis82\" target=\"_blank\" rel=\"nofollow\">markwillis82</a>, <a href=\"https:/github.com/Mark-H\" target=\"_blank\" rel=\"nofollow\">Mark-H</a>, <a href=\"https:/github.com/rtripault\" target=\"_blank\" rel=\"nofollow\">rtripault</a>, <a href=\"https:/github.com/danyaPostfactum\" target=\"_blank\" rel=\"nofollow\">danyaPostfactum</a>, <a href=\"https:/github.com/Jacqbus\" target=\"_blank\" rel=\"nofollow\">Jacqbus</a>, <a href=\"https:/github.com/OCDCoder\" target=\"_blank\" rel=\"nofollow\">OCDCoder</a>, <a href=\"https:/github.com/matdave\" target=\"_blank\" rel=\"nofollow\">matdave</a>, <a href=\"https:/github.com/pixelchutes\" target=\"_blank\" rel=\"nofollow\">pixelchutes</a>, <a href=\"https:/github.com/13hakta\" target=\"_blank\" rel=\"nofollow\">13hakta</a>, <a href=\"https:/github.com/wuschigesetwas\" target=\"_blank\" rel=\"nofollow\">wuschigesetwas</a>, <a href=\"https:/github.com/inreti\" target=\"_blank\" rel=\"nofollow\">inreti</a>, <a href=\"https:/github.com/bertoost\" target=\"_blank\" rel=\"nofollow\">bertoost</a>, <a href=\"https:/github.com/exside\" target=\"_blank\" rel=\"nofollow\">exside</a>, <a href=\"https:/github.com/pepimpepa\" target=\"_blank\" rel=\"nofollow\">pepimpepa</a> <a href=\"https:/github.com/OptimusCrime\" target=\"_blank\" rel=\"nofollow\">OptimusCrime</a>, and <a href=\"https:/github.com/theboxer\" target=\"_blank\" rel=\"nofollow\">theboxer</a>. <br>\r\n<br>\r\n<strong>Security is an Ongoing Process</strong> <br>\r\nWe cannot stress how important it is to run the most current version of MODX. We are always improving security. Upgrade regularly to reduce the chance of your site getting hacked. If you need help upgrading your MODX site, <a href=\"http://modx.com/support-and-services/maintain/\" target=\"_blank\" rel=\"nofollow\">let us know</a>. <br>\r\n<br>\r\n<strong>Get Started with Revo 2.4</strong> <br>\r\nHere’s what you need to get started or upgrade to MODX Revolution 2.4: <ul class=\"dis-ul\"> <br>\r\n<li><a href=\"modx.com/download/\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.4</a> </li>\r\n<li><a href=\"rtfm.modx.com/revolution/2.x/getting-started/server-requirements\" target=\"_blank\" rel=\"nofollow\">What’s required</a> to run Revolution 2.3.x <br>\r\n[li]How to <a href=\"rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a></li>\r\n<li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a></li>\r\n<li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation</a> </li>\r\n</ul> <br>\r\n<br>\r\n<strong>It Takes a Village</strong> <br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"https:/github.com/modxcms/revolution/issues?state=open\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>, <a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums. <br>\r\n<br>\r\nOn behalf of the entire MODX Team, <br>\r\nThank-you!</span>\r\n    <span class=\"date_stamp\">Fri Aug 21 15:13:43 2015</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/t1znJjRWA3I/revolution-2-3-6-ui-improvements-stability\" target=\"_blank\">Revolution 2.3.6 — UI Improvements &amp; Stability</a></h2>\r\n    <span class=\"content\">This Revolution 2.3.6 patch release includes incremental improvements to the Manager UI, as well as a number of fixes for stability and security. <br>\r\n<br>\r\nHere are some of the changes in Revo 2.3.6: <ul class=\"dis-ul\"><li>Those using the traditional install can now disable on-the-fly compression. </li>\r\n<li>A potential XSS vector was closed. </li>\r\n<li>Some category dropdowns were missing pagination—now see them in all their paginated glory. </li>\r\n<li>Setup Options window has been taught to be more flexible. </li>\r\n<li>Improved experience of Image TVs, and thumbnails, in the Manager. </li>\r\n<li>Hunting for version info is a thing of the past. Hover over the MODX Logo and all shall be clear again. </li>\r\n<li>View the <a href=\"https:/raw.githubusercontent.com/modxcms/revolution/v2.3.6-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">Revo 2.3.6 change log</a> for full details.</li> </ul> <br>\r\n<br>\r\n<strong>Contributors on this Release</strong> <br>\r\nLet’s take the time to thank the individual contributors to this release (in no particular order): <a href=\"https:/github.com/BobRay\" target=\"_blank\" rel=\"nofollow\">BobRay</a>, <a href=\"https:/github.com/cedwardsmedia\" target=\"_blank\" rel=\"nofollow\">cedwardsmedia</a>, <a href=\"https:/github.com/Jako\" target=\"_blank\" rel=\"nofollow\">Jako</a>, <a href=\"https:/github.com/sottwell\" target=\"_blank\" rel=\"nofollow\">sottwell</a>, <a href=\"https:/github.com/sitex-pro\" target=\"_blank\" rel=\"nofollow\">sitex-pro</a>, <a href=\"https:/github.com/rtripault\" target=\"_blank\" rel=\"nofollow\">rtripault</a>, <a href=\"https:/github.com/argnist\" target=\"_blank\" rel=\"nofollow\">argnist</a>, <a href=\"https:/github.com/bertoost\" target=\"_blank\" rel=\"nofollow\">bertoost</a>, <a href=\"https:/github.com/Fi1osof\" target=\"_blank\" rel=\"nofollow\">Fi1osof</a>, <a href=\"https:/github.com/bezumkin\" target=\"_blank\" rel=\"nofollow\">bezumkin</a>, <a href=\"https:/github.com/mindeffects\" target=\"_blank\" rel=\"nofollow\">mindeffects</a>, <a href=\"https:/github.com/inreti\" target=\"_blank\" rel=\"nofollow\">inreti</a>, and <a href=\"https:/github.com/theboxer\" target=\"_blank\" rel=\"nofollow\">theboxer</a>. <br>\r\n<br>\r\n<strong>Security is an Ongoing Process</strong> <br>\r\nWe cannot stress how important it is to be running the most current version of MODX. We are always improving security and staying in the habit of regular upgrades dramatically reduces the chance of your site getting hacked. <br>\r\n<br>\r\n<strong>Get Started with Revo 2.3.6</strong> <br>\r\nHere’s what you need to get started or upgrade to MODX Revolution 2.3.6: <br>\r\n<ul class=\"dis-ul\"><br>\r\n<li><a href=\"modx.com/download/\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.3.6</a> </li>\r\n<li><a href=\"rtfm.modx.com/revolution/2.x/getting-started/server-requirements\" target=\"_blank\" rel=\"nofollow\">What’s required</a> to run Revolution 2.3.x How to <a href=\"rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a> </li>\r\n<li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a> </li>\r\n<li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation<br>\r\n</a> </li>\r\n</ul> <br>\r\n<br>\r\n<strong>Not Yet Using Revolution 2.3?</strong> <br>\r\nRevolution 2.3 was a significant release. If you\'re not yet using it <a href=\"http://modx.com/blog/2014/07/15/revolution-2.3-brings-a-revamped-manager-user-experience-and-much-more/\" target=\"_blank\" rel=\"nofollow\">here\'s what you\'re missing out on</a>. <br>\r\n<br>\r\n<strong>It Takes a Village</strong> <br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"https:/github.com/modxcms/revolution/issues?state=open\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>, <a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums. <br>\r\n<br>\r\nOn behalf of the entire MODX Team, <br>\r\nThank-you!</span>\r\n    <span class=\"date_stamp\">Fri Aug 21 14:58:21 2015</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/6NKJMy-zwbY/revo-2-3-4-2-3-5-two-dozen-manager-fixes-and-more\" target=\"_blank\">Revo 2.3.4+2.3.5—Two Dozen Manager Fixes and More</a></h2>\r\n    <span class=\"content\">Revo 2.3.5 has been released. This patch release follows two days after the release of Revo 2.3.4 to correct an issue causing problems with sorting the Resource tree via drag and drop. We also squeezed in a couple more fixes. Why wouldn\'t we? I missed posting on the day of release of 2.3.4 and held off until 2.3.5 was released to publish the announcement so here\'s a combined announcement that includes details of both patch releases. Most of the major improvements were in the 2.3.4 release. Read on to find out more. <br>\r\n<br>\r\nHere\'s the list of changes in Revo 2.3.5: <br>\r\n<ul class=\"dis-ul\"><li>Fix drag and drop Resource sort when auto_isfolder setting is enabled </li>\r\n<li>Fix Account drop down hover on small screens </li>\r\n<li>Compile Sass with libsass </li>\r\n<li>Update npm packages </li>\r\n<li>Update and Relax bower packages View the <a href=\"https:/raw.githubusercontent.com/modxcms/revolution/v2.3.5-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">changelog</a>. </li></ul>\r\n<br>\r\n<strong>Contributors on the 2.3.5 release</strong> <br>\r\nLet\'s take the time to thank the individual contributors of this release (in no particular order): <a href=\"https:/github.com/jpdevries \" target=\"_blank\" rel=\"nofollow\">jpdevries </a>, <a href=\"https:/github.com/zaigham\" target=\"_blank\" rel=\"nofollow\">zaigham</a>, and <a href=\"https:/github.com/theboxer\" target=\"_blank\" rel=\"nofollow\">theboxer</a>. <br>\r\n<br>\r\nRevolution 2.3.4 included two dozen fixes, many of which are bugfixes and refinements to the Manager. Here are the highlights:<br>\r\n<ul class=\"dis-ul\"><li>Fixes to custom manager themes </li>\r\n<li>Fix editing Amazon S3 Media sources </li>\r\n<li>Quick update form, now displays the Resource pagetitle or Element name rather than just \"Quick Update\". </li>\r\n<li>Update Font Awesome to 4.3.0 </li>\r\n<li>Update bower package for correctly building Manager themes </li>\r\n<li>Correctly apply Resource locks to current user </li>\r\n<li>For a complete list of changes in Revo 2.3.4 view the <a href=\"https:/raw.githubusercontent.com/modxcms/revolution/v2.3.4-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">changelog</a></li></ul>\r\n<br>\r\n<strong>Contributors on the 2.3.4 Release</strong> <br>\r\n<br>\r\nLet\'s take the time to thank the individual contributors of this release (in no particular order): <a href=\"https:/github.com/argnist\" target=\"_blank\" rel=\"nofollow\">argnist</a>, <a href=\"https:/github.com/bezumkin\" target=\"_blank\" rel=\"nofollow\">bezumkin</a>, <a href=\"https:/github.com/sepiariver\" target=\"_blank\" rel=\"nofollow\">sepiariver</a>, <a href=\"https:/github.com/soulcreate\" target=\"_blank\" rel=\"nofollow\">soulcreate</a>, <a href=\"https:/github.com/Jako\" target=\"_blank\" rel=\"nofollow\">Jako</a>, <a href=\"https:/github.com/goldsky\" target=\"_blank\" rel=\"nofollow\">goldsky</a>, <a href=\"https:/github.com/opengeek\" target=\"_blank\" rel=\"nofollow\">opengeek</a>, <a href=\"https:/github.com/pixelchutes\" target=\"_blank\" rel=\"nofollow\">pixelchutes</a>, <a href=\"https:/github.com/rtripault\" target=\"_blank\" rel=\"nofollow\">rtripault</a>, <a href=\"https:/github.com/TheBoxer\" target=\"_blank\" rel=\"nofollow\">TheBoxer</a>, <a href=\"https:/github.com/zaigham\" target=\"_blank\" rel=\"nofollow\">Zaigham</a>, <a href=\"https:/github.com/markwillis82\" target=\"_blank\" rel=\"nofollow\">markwillis82</a>, <a href=\"https:/github.com/Fi1osof\" target=\"_blank\" rel=\"nofollow\">Fi1osof</a>, <a href=\"https:/github.com/hansek\" target=\"_blank\" rel=\"nofollow\">hansek</a>, <a href=\"https:/github.com/netProphET\" target=\"_blank\" rel=\"nofollow\">netProphET</a>, <a href=\"https:/github.com/mindeffects\" target=\"_blank\" rel=\"nofollow\">mindeffects</a>, <a href=\"https:/github.com/pepim\" target=\"_blank\" rel=\"nofollow\">pepim</a>, <a href=\"https:/github.com/renekopcem\" target=\"_blank\" rel=\"nofollow\">renekopcem</a>, <a href=\"https:/github.com/ianbrind\" target=\"_blank\" rel=\"nofollow\">ianbrind</a>, <a href=\"https:/github.com/victorhaggqvist\" target=\"_blank\" rel=\"nofollow\">victorhaggqvist</a>, <a href=\"https:/github.com/trevordixon\" target=\"_blank\" rel=\"nofollow\">trevordixon</a>, and <a href=\"https:/github.com/electrickite\" target=\"_blank\" rel=\"nofollow\">electrickite</a>. <br>\r\n<br>\r\n<strong>Security is an Ongoing Process</strong> <br>\r\nWe cannot stress how important it is to be running the most current version of MODX. We are always improving security and staying in the habit of regular upgrades dramatically reduces the chance of your site getting hacked. <br>\r\n<br>\r\n<strong>Get Started with Revo 2.3.5</strong> <br>\r\nHere\'s what you need to get started or upgrade to MODX Revolution 2.3.5: <br>\r\n<ul class=\"dis-ul\"><li><a href=\"modx.com/download/\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.3.5</a> </li>\r\n<li><a href=\"rtfm.modx.com/revolution/2.x/getting-started/server-requirements\" target=\"_blank\" rel=\"nofollow\">What\'s required</a> to run Revolution 2.3 </li>\r\n<li>How to <a href=\"rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a> </li>\r\n<li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a> </li>\r\n<li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation</a> </li></ul>\r\n<br>\r\n<strong>Not Yet Using Revolution 2.3?</strong> <br>\r\nRevolution 2.3 was a significant release. If you\'re not yet using it <a href=\"[[~883\" target=\"_blank\" rel=\"nofollow\">]]here\'s what you\'re missing out on</a>. <br>\r\n<br>\r\n<strong>It Takes a Village</strong> <br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"https:/github.com/modxcms/revolution/issues?state=open\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>, <a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums. <br>\r\n<br>\r\nOn behalf of the entire MODX Team, <br>\r\nThank-you!</span>\r\n    <span class=\"date_stamp\">Fri Jun 26 09:53:22 2015</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/WjCnSrI9NfA/announcing-modxpo-2015-november-21-22-in-munich-germany\" target=\"_blank\">Announcing MODXpo 2015 November 21-22 in Munich, Germany</a></h2>\r\n    <span class=\"content\">We\'re proud to announce that the fourth, official MODXpo will take place on November 21 and 22 in Munich, Germany. <br>\r\n<br>\r\nThe previous official MODXpo was hosted in <a href=\"http://2013.modxpo.eu/\" target=\"_blank\" rel=\"nofollow\">November 2013 in Cologne, Germany</a>. After a year hiatus (though not without an awesome MODX conference in between), web designer and MODX Ambassador, <a href=\"http://www.bdcreative-design.com/\" target=\"_blank\" rel=\"nofollow\">Benjamin Davis</a>, has taken the reins as chief organizer for the next official MODXpo with major help from the <a href=\"http://www.meetup.com/MODX-Muenchen/\" target=\"_blank\" rel=\"nofollow\">MODX Munich Meetup Group</a> and other <a href=\"http://modx.com/ambassadors\" target=\"_blank\" rel=\"nofollow\">MODX Ambassadors</a>. <br>\r\n<br>\r\nMODXpo is an international conference for people who build websites with, and use MODX. Sessions include presentations and workshops for both a beginner and seasoned pro. Everyone who attends a MODXpo comes away filled with new perspectives for solving business or clients\' problems. There\'s nothing like it. <br>\r\n<br>\r\n<strong>Host Sponsors Kochan &amp; Partner</strong><br>\r\nThe catalyst for MODXpo 2015 was the Munich-based agency, and MODX fans, Kochan &amp; Partner. They graciously offered to host the event in their 200 person capacity hall. <a href=\"http://www.kochan.de/\" target=\"_blank\" rel=\"nofollow\">Kochan &amp; Partner</a> have been long-time MODX users and host the local MODX meetups in Munich. <br>\r\n<br>\r\n<strong>Ideas and Voices</strong><br>\r\nNo conference would be complete without interesting topics and speakers. The organizers would like as much input as possible for shaping MODXpo 2015 into the best conference it can be. The organizing team is seeking your ideas on interesting talks and are looking for proposals from anyone in the MODX community who is interested in sharing some of how they work. <a href=\"https:/docs.google.com/forms/d/1TZXJ3upiYEjCzBvq0uPM4VPaNvCI7NtEGqFEk0qQ2nM/viewform\" target=\"_blank\" rel=\"nofollow\">Submit your topic ideas</a>. <br>\r\n<br>\r\nEven if you\'ve never spoken at an event before but have solved some problems in an interesting way for your business, your clients or just built something cool. That\'s all you need to start building your talk. <a href=\"https:/docs.google.com/forms/d/1dJDaWm9hTLfkyrkpLjlAiLqB09eWUcwbgJdHOQdcBPo/viewform\" target=\"_blank\" rel=\"nofollow\">Apply to speak at MODXpo 2015.</a> <br>\r\n<br>\r\n<strong>Call for Sponsors</strong><br>\r\nOf course an event of this size cannot rely only on a single host sponsor, as nice as the team at Kochan &amp; Partner are. We\'d like to partner with some awesome organizations who are looking to support the MODX event or put their brand in front of the MODX community at large. <a href=\"http://2015.modxpo.eu/#contact-form\" target=\"_blank\" rel=\"nofollow\">Contact the MODXpo 2015 team</a> to ask about becoming a sponsor partner <br>\r\n<br>\r\n<strong>Save the Date and Bookmark the Website</strong><br>\r\nIf you\'re looking to dig deep into MODX, meet some smart, interesting and diverse web designers and developers from all over the world, mark Novemer 21 and 22, 2015 in your calendar for MODXpo 2015. Stay up to date on what\'s happening with MODXpo 2015 at the <a href=\"http://2015.modxpo.eu/\" target=\"_blank\" rel=\"nofollow\">event website</a>. We hope to see you in Munich.</span>\r\n    <span class=\"date_stamp\">Wed May  6 16:41:17 2015</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/qKuqcQsX6jU/help-us-bring-modx-to-everyone-the-a11y-campaign\" target=\"_blank\">Help Us Bring MODX to Everyone: The A11y Campaign</a></h2>\r\n    <span class=\"content\"><strong>Help Us Bring MODX to Everyone</strong><br>\r\nWe\'ve embarked on <a href=\"http://a11y.modx.com\" target=\"_blank\" rel=\"nofollow\">a mission to make the MODX Manager accessible for all</a> and we need your help. <br>\r\n<br>\r\nAs you know, MODX has always stood for creative freedom. However, Revo’s Manager has failed to deliver that promise for all. People who use assistive technologies like screen readers, enlarged fonts and alternate input devices were never really given proper consideration. That must change. <br>\r\n<br>\r\nWe want to make it right by making it possible for anyone to use MODX, no matter what. <br>\r\n<br>\r\n<strong>A Huge Head Start</strong><br>\r\nWe have already started research and development work on this important initiative thanks to $25,000 in funding from <a href=\"http://www.osu.edu/\" target=\"_blank\" rel=\"nofollow\">The Ohio State University</a>. We’re looking to complete the effort by crowdfunding a matching amount. If only 1000 MODX community members and their clients donated $25, we’d reach our goal, virtually overnight. You can <a href=\"https://github.com/modxcms/a11y\" target=\"_blank\" rel=\"nofollow\">get directly involved</a>, too.<br>\r\n <br>\r\nAll funds raised will be used to dedicate development resources, expert consulting and user testing. <br>\r\n <br>\r\n<strong>You Can Make a Difference</strong><br>\r\nSo please help us reach our goal so we can bring MODX to everyone. Take a minute (right now please!) to visit <a href=\"http://a11y.modx.com\" target=\"_blank\" rel=\"nofollow\">a11y.modx.com</a> and find the donation level that’s right for you. Any amount will make a difference, and it’s easy to support this very worthy cause. All donations over $25 are eligible for a variety of donor rewards including MODX stickers, shirts and hats exclusive to this campaign, and some really awesome Accessibility courses from <a href=\"https://dequeuniversity.com/\" target=\"_blank\" rel=\"nofollow\">Deque University</a>. <br>\r\n<br>\r\n<strong>Help Spread the Word</strong><br>\r\nIf you can’t support this initiative personally, but work with MODX professionally, we’d love to see your company or customers supporting the accessible MODX Manager project, too. It takes just a few seconds to forward this message along with a simple request from you.<br>\r\n<br>\r\nFurther, we’d welcome translations to the accessibility campaign message; if you can help translate any of <a href=\"http://a11y.modx.com\" target=\"_blank\" rel=\"nofollow\">a11y.modx.com</a>, please get in touch. <br>\r\n<br>\r\n<strong>***<a href=\"http://a11y.modx.com\" target=\"_blank\" rel=\"nofollow\">Donate Now</a>***</strong></span>\r\n    <span class=\"date_stamp\">Wed Feb 18 08:57:11 2015</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/H4kQ-N6rEBo/revo-2-3-3-over-40-fixes-and-improvements\" target=\"_blank\">Revo 2.3.3—Over 40 Fixes and Improvements</a></h2>\r\n    <span class=\"content\">Today we released Revolution 2.3.3. This patch release includes over 40 fixes and improvements. <br>\r\n<br>\r\nHere are just some of the highlights of Revolution 2.3.3: <ul class=\"dis-ul\"><br>\r\n<li>Fixed Context settings remove and update from window </li>\r\n<li>Fixed autoredirect after creating new User </li>\r\n<li>Fixed @INHERIT binding in TVs </li>\r\n<li>Fixed showing lock tree icon for locked Resources </li>\r\n<li>Added option to delete property from Property Set using the UI </li>\r\n<li>Fixed showing Rich Text Editor in all resource types </li>\r\n<li>For a complete list of changes in Revo 2.3.3 view the <a href=\"https:/raw.githubusercontent.com/modxcms/revolution/v2.3.3-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">changelog</a><br>\r\n</li></ul> <br>\r\n<br>\r\n<strong>Contributers on this Release</strong> <br>\r\nLet\'s take the time to thank the individual contributors of this release: <a href=\"https:/github.com/argnist\" target=\"_blank\" rel=\"nofollow\">argnist</a>, <a href=\"https:/github.com/bartholomej\" target=\"_blank\" rel=\"nofollow\">bartholomej</a>, <a href=\"https:/github.com/BobRay\" target=\"_blank\" rel=\"nofollow\">BobRay</a>, <a href=\"https:/github.com/danyaPostfactum\" target=\"_blank\" rel=\"nofollow\">danyaPostfactum</a>, <a href=\"https:/github.com/enrichit\" target=\"_blank\" rel=\"nofollow\">enrichit</a>, <a href=\"https:/github.com/goldsky\" target=\"_blank\" rel=\"nofollow\">goldsky</a>, <a href=\"https:/github.com/hansek\" target=\"_blank\" rel=\"nofollow\">hansek</a>, <a href=\"https:/github.com/Jako\" target=\"_blank\" rel=\"nofollow\">Jako</a>, <a href=\"https:/github.com/Lefthandmedia\" target=\"_blank\" rel=\"nofollow\">Lefthandmedia</a>, <a href=\"https:/github.com/markwillis82\" target=\"_blank\" rel=\"nofollow\">markwillis82</a>, <a href=\"https:/github.com/numee\" target=\"_blank\" rel=\"nofollow\">numee</a>, <a href=\"https:/github.com/opengeek\" target=\"_blank\" rel=\"nofollow\">opengeek</a>, <a href=\"https:/github.com/OptimusCrime\" target=\"_blank\" rel=\"nofollow\">OptimusCrime</a>, <a href=\"https:/github.com/pixelchutes\" target=\"_blank\" rel=\"nofollow\">pixelchutes</a>, <a href=\"https:/github.com/rtripault\" target=\"_blank\" rel=\"nofollow\">rtripault</a>, <a href=\"https:/github.com/sottwell\" target=\"_blank\" rel=\"nofollow\">sottwell</a>, <a href=\"https:/github.com/TheBoxer\" target=\"_blank\" rel=\"nofollow\">TheBoxer</a>, and <a href=\"https:/github.com/whitebyte\" target=\"_blank\" rel=\"nofollow\">whitebyte</a>.<br>\r\n<br>\r\n<strong>Security is an Ongoing Process</strong><br>\r\nWe cannot stress how important it is to be running the most current version of MODX. We are always improving security and staying in the habit of regular upgrades dramatically reduces the chance of your site getting hacked. <br>\r\n<br>\r\n<strong>Get Started with Revo 2.3.3</strong> <br>\r\nHere\'s what you need to get started or upgrade to MODX Revolution 2.3.3: <br>\r\n<ul class=\"dis-ul\"> <br>\r\n<li><a href=\"modx.com/download/\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.3.3</a> </li>\r\n<li><a href=\"rtfm.modx.com/revolution/2.x/getting-started/server-requirements\" target=\"_blank\" rel=\"nofollow\">What\'s required</a> to run Revolution 2.3 </li>\r\n<li>How to <a href=\"rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a> </li>\r\n<li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a></li>\r\n<li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation</a> </li>\r\n</ul> <br>\r\n<br>\r\n<strong>Not Yet Using Revolution 2.3?</strong> <br>\r\nRevolution 2.3 was a significant release. If you\'re not yet using it <a href=\"http://modx.com/blog/2014/07/15/revolution-2.3-brings-a-revamped-manager-user-experience-and-much-more/\" target=\"_blank\" rel=\"nofollow\">here\'s what you\'re missing out on</a>. <br>\r\n<br>\r\n<strong>It Takes a Village</strong> <br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"https:/github.com/modxcms/revolution/issues?state=open\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>, <a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums. <br>\r\n<br>\r\nOn behalf of the entire MODX Team, <br>\r\nThank-you!</span>\r\n    <span class=\"date_stamp\">Thu Jan 29 09:08:49 2015</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/pknnbZ996KM/evolution-1-0-15-important-security-update-and-100-changes\" target=\"_blank\">Evolution 1.0.15 Important Security Update and 100+ Changes</a></h2>\r\n    <span class=\"content\">MODX Evolution 1.0.15 is now available. This release of MODX Evolution includes more than 100 fixes and improvements. It also includes fixes for two critical security vulnerabilities; one in the core and one in Jot, a commenting Extra that is packaged with Evolution. As this release contains critical security fixes, this should be considered a mandatory upgrade. <br>\r\n<br>\r\nHighlights of the 1.0.15 release include:<ul class=\"dis-ul\"><br>\r\n<li>Various security fixes including Jot fix and cookie handling</li>\r\n<li>Added MySQLi extender for PHP 5.5. support</li>\r\n<li>Updates to Wayfinder and eForm</li>\r\n<li>Many Language Translation Updates</li>\r\n<li>Read <a href=\"https://raw.github.com/modxcms/evolution/v1.0.15/install/changelog.txt\" target=\"_blank\" rel=\"nofollow\"> the complete changelog</a></li>\r\n</ul>\r\n<br>\r\n<strong>Thanks to the Contributors</strong><br>\r\nWe\'d like to thank the contributors for this release who are: <a href=\"https://github.com/Jako\" target=\"_blank\" rel=\"nofollow\">Jako (Thomas Jakobi)</a>, <a href=\"https://github.com/yama\" target=\"_blank\" rel=\"nofollow\">yama (Masanori Yamamoto)</a>, <a href=\"https://github.com/dmi3yy\" target=\"_blank\" rel=\"nofollow\">Dmi3yy (Dmytro Lukianenko)</a>, <a href=\"https://github.com/Segr\" target=\"_blank\" rel=\"nofollow\">Segr Kaparov (Segr)</a>, <a href=\"https://github.com/tonatos\" target=\"_blank\" rel=\"nofollow\">tonatos</a>, <a href=\"https://github.com/bossloper\" target=\"_blank\" rel=\"nofollow\"> bossloper</a>, <a href=\"https://github.com/mrhaw\" target=\"_blank\" rel=\"nofollow\">mrhaw (Andreas Wettainen)</a>, <a href=\"https://github.com/TimGS\" target=\"_blank\" rel=\"nofollow\">TimGS (Tim Spencer)</a>, <a href=\"https://github.com/Pathologic\" target=\"_blank\" rel=\"nofollow\">Pathologic</a>, <a href=\"https://github.com/olegpro\" target=\"_blank\" rel=\"nofollow\">olegpro (Олег Максименко)</a>, <a href=\"https://github.com/Haprog\" target=\"_blank\" rel=\"nofollow\">Haprog (Kari Söderholm)</a>, <a href=\"https://github.com/jasonabird\" target=\"_blank\" rel=\"nofollow\">jasonabird (Jason Bird)</a>, <a href=\"https://github.com/OptimusCrime\" target=\"_blank\" rel=\"nofollow\">OptimusCrime</a>, and <a href=\"https://github.com/juliolopez78\" target=\"_blank\" rel=\"nofollow\">juliolopez78 (Julio López)</a><br>\r\n<br>\r\nWith regard to the <a href=\"http://forums.modx.com/thread/94952/multiple-vulnerabilities-xss-c#dis-post-514187\" target=\"_blank\" rel=\"nofollow\">critical security issues</a>, there are two possible options to mitigate them:<ol class=\"dis-ol\"><br>\r\n<li>Upgrade to MODX Evolution 1.0.15 (recommended)</li>\r\n<li>If using Evo 1.0.11 and higher, replace the two files affected. <a href=\"http://forums.modx.com/thread/94952/multiple-vulnerabilities-xss-remote-command-injection#dis-post-514187\" target=\"_blank\" rel=\"nofollow\">See details</a>. </li>\r\n</ol>\r\n<br>\r\n<strong>Get Started with Evo 1.0.15</strong> <br>\r\nHere\'s what you need to get started or upgrade to MODX Evolution 1.0.15: <ul class=\"dis-ul\"><li><a href=\"modx.com/download/evolution/\" target=\"_blank\" rel=\"nofollow\">Download Evolution 1.0.15</a></li>\r\n<li><a href=\"http://develop.modx.com/develop/evolution/requirements/\" target=\"_blank\" rel=\"nofollow\">What\'s required</a> to run Evolution 1.0.15</li>\r\n<li>How to <a href=\"http://rtfm.modx.com/evolution/1.0/getting-started/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Evolution</a></li>\r\n<li>How to <a href=\"http://rtfm.modx.com/evolution/1.0/administration/upgrading\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Evolution</a> </li>\r\n<li>Read the <a href=\"http://rtfm.modx.com/evolution/1.0\" target=\"_blank\" rel=\"nofollow\">MODX Evolution Documentation</a> </li>\r\n</ul> <br>\r\n<br>\r\n<strong>It Takes a Village</strong><br>\r\nTo everyone who filed bugs and made feature requests. Thanks and keep them coming! <br>\r\n<br>\r\n<strong>Keep Your MODX Sites Safe</strong><br>\r\nTo keep your MODX sites safe and performing their best, we strongly recommend upgrading to the latest version of Evolution. If you need someone to assist you with your MODX Evolution upgrade, check out our <a href=\"http://modx.com/professionals/\" target=\"_blank\" rel=\"nofollow\">MODX Professionals</a> directory for a MODX professional near you or <a href=\"http://modx.com/support-and-services/project-inquiry/\" target=\"_blank\" rel=\"nofollow\">contact us</a>. <br>\r\n<br>\r\n<br>\r\nOn behalf of the MODX and Evolution teams, <br>\r\nThank-you.</span>\r\n    <span class=\"date_stamp\">Thu Nov  6 08:30:17 2014</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/LbPfufM99H0/revolution-2-2-16-fixes-password-reset-functionality\" target=\"_blank\">Revolution 2.2.16 Fixes Password Reset Functionality</a></h2>\r\n    <span class=\"content\">We have released Revolution 2.2.16. This patch release fixes password reset functionality.<br>\r\n<br>\r\n<strong>Not Yet Using Revolution 2.3?</strong><br>\r\nRevolution 2.3 was a significant release. If you\'re not yet using it <a href=\"blog/2014/07/15/revolution-2.3-brings-a-revamped-manager-user-experience-and-much-more/\" target=\"_blank\" rel=\"nofollow\">here\'s what you\'re missing out on</a>.<br>\r\n<br>\r\n<strong>Get Started with Revo 2.2.16</strong><br>\r\nHere\'s what you need to get started or upgrade to MODX Revolution 2.2.16:<ul class=\"dis-ul\"><li><a href=\"http://modx.com/download/release/revolution-2.2.16-pl\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.2.16</a></li><li><a href=\"http://rtfm.modx.com/revolution/2.x/getting-started/server-requirements\" target=\"_blank\" rel=\"nofollow\">What\'s required</a> to run Revolution 2.3</li><li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a></li><li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a></li><li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation</a></li></ul>\r\n<br>\r\n<strong>It Takes a Village</strong><br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"https://github.com/modxcms/revolution/issues?state=open\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>, <a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums.<br>\r\n<br>\r\nOn behalf of the entire MODX Team,<br>\r\nThank-you!</span>\r\n    <span class=\"date_stamp\">Fri Oct 24 09:53:14 2014</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/mjJNzdvUCuc/revolution-2-3-2-lots-of-little-fixes-add-up\" target=\"_blank\">Revolution 2.3.2—Lots of Little Fixes Add Up</a></h2>\r\n    <span class=\"content\">Today we released Revolution 2.3.2. This patch release includes dozens of fixes and improvements along with a fix to prevent low-risk cross site scripting (XSS). <br>\r\n<br>\r\nHere are just some of the highlights of Revolution 2.3.2: <ul class=\"dis-ul\"><li>Fix Custom Resource Class (CRCs) icons in trees</li>\r\n<li>Fixed missing Permissions tabs for anonymous User Group Disabled keyboard shortcut to focus the search bar </li>\r\n<li>Fixed MODx.Ajax.request ot handle multiple concurrent requests</li>\r\n<li>Use FontAwesome check box icons instead of sprite images</li>\r\n<li>Added visual indication in elements trees when an element is edited (active class)</li>\r\n<li>Fixed store load if init combobox value is 0</li>\r\n<li>Fixed rendering TVs to modx-resource-content by Manager customizations</li>\r\n<li>Fixed for arrow that pointed wrong way in collapse areas</li>\r\n<li>Language simplification for context menu items</li>\r\n<li>Fixed moving menu items, with \"n_\" in title, to different parent</li>\r\n<li>Prevent XSS in Manager</li>\r\n<li>For a complete list of changes in Revo 2.3.2 view the <a href=\"https:/raw.githubusercontent.com/modxcms/revolution/v2.3.2-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">changelog</a></li> </ul> <br>\r\nWe strongly recommend staying up with current releases to avoid unwanted compromise. While the security fix in 2.3.2 was not of a critical nature, keeping up with releases keeps your site secure and keeps you in the habit of routine upgrades. <br>\r\n<br>\r\n<strong>Get Started with Revo 2.3.2</strong> <br>\r\nHere\'s what you need to get started or upgrade to MODX Revolution 2.3.2: <ul class=\"dis-ul\"><li><a href=\"modx.com/download/\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.3.2</a></li><a href=\"modx.com/download/\" target=\"_blank\" rel=\"nofollow\">\r\n<li>[url=rtfm.modx.com/revolution/2.x/getting-started/server-requirements] </li>\r\n</a><li><a href=\"modx.com/download/\" target=\"_blank\" rel=\"nofollow\">What\'s required</a> to run Revolution 2.3</li>\r\n<li>How to <a href=\"rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a></li>\r\n<li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a> </li>\r\n<li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation</a> </li>\r\n</ul> <br>\r\n<br>\r\n<strong>Not Yet Using Revolution 2.3?</strong> <br>\r\nRevolution 2.3 was a significant release. If you\'re not yet using it <a href=\"http://modx.com/blog/2014/07/15/revolution-2.3-brings-a-revamped-manager-user-experience-and-much-more/\" target=\"_blank\" rel=\"nofollow\">here\'s what you\'re missing out on</a>. <br>\r\n<br>\r\n<strong>It Takes a Village</strong> <br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"https:/github.com/modxcms/revolution/issues?state=open\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>, <a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums. <br>\r\n<br>\r\nOn behalf of the entire MODX Team, <br>\r\nThank-you!</span>\r\n    <span class=\"date_stamp\">Tue Oct 21 15:17:30 2014</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/2-ovCW1AgRA/revolution-2-3-1-fixes-phpthumb-gravatar-and-more\" target=\"_blank\">Revolution 2.3.1 Fixes phpThumb, Gravatar and More</a></h2>\r\n    <span class=\"content\">Today we released the first patch release for MODX Revolution 2.3. With 2.3.1 we have resolved a number of annoyances and bugs that were missed in pre-release testing. These include issues with thumbnailing and Extras that relied on it, Snippets and Plugins inserting 1s into views or filling the error log, restored Forgot Password functionality and much more.  <br>\r\n<br>\r\n<strong>Highlights of Revolution 2.3.1</strong><ul class=\"dis-ul\"><br>\r\n<li>Fixed phpThumb issue breaking internal thumbnails and funcitonality of a number of Extras that relied on it</li>\r\n<li>Fixed the issue where Snippets and Plugins that didn\'t explicitly return a value were outputting 1s or logging errors</li>\r\n<li>Fixed Forgot Password functionality.</li>\r\n<li>Updated the MODX logo to the newly revlealed logo</li>\r\n<li>Fixed fallback for Gravatar to ensure manager loads if Gravatar can\'t be reached</li>\r\n<li>Added Revo only RSS Security Feed (no more Evo Security Issues in the Manager)</li>\r\n<li>For a complete list of changes in Revo 2.3.1 view the <a href=\"https://raw.githubusercontent.com/modxcms/revolution/v2.3.1-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">changelog</a></li>\r\n</ul>\r\n<br>\r\n<strong>Get Started with Revo 2.3.1</strong><br>\r\nHere\'s what you need to get started or upgrade to MODX Revolution 2.3.1:<ul class=\"dis-ul\"><br>\r\n<li><a href=\"http://modx.com/download/\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.3.1</a></li>\r\n<li><a href=\"http://rtfm.modx.com/revolution/2.x/getting-started/server-requirements\" target=\"_blank\" rel=\"nofollow\">What\'s required</a> to run Revolution 2.3.1</li>\r\n<li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a></li>\r\n<li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a></li>\r\n<li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation</a></li>\r\n</ul>\r\n<br>\r\n<strong>About Revolution 2.3</strong><br>\r\nRevolution 2.3 features an elegantly refined and updated MODX Manager with an all-new theme designed by Peter Knight (aka eladnova). Build and manage your sites faster, and in a more user friendly and less intimidating workspace. Revolution 2.3 also introduces the Uberbar, which provides Manager users with global search within Resources, Elements and Users. Now, whatever you\'re looking for is at your fingertips.<br>\r\n<br>\r\nWe have tried our best to encourage Extras authors to make sure their extras are up to date and compatible with 2.3, however, there may be extras that have not been tested. Before upgrading or starting a new project in Revolution 2.3, please take a look at <a href=\"https://github.com/modxcms/revolution/issues/11630#issue-37173621\" target=\"_blank\" rel=\"nofollow\">this list of Extras confirmed to work with 2.3</a>. <br>\r\n<br>\r\n<strong>Highlights of Revolution 2.3</strong><br>\r\nAs mentioned before, this is a pretty significant release, here\'s just a few key highlights of Revo 2.3:<br>\r\n<ul class=\"dis-ul\"><br>\r\n<li>Updated and streamlined MODX Manager User Experience including:[list]Noticeably faster page and screen loading / more performant ExtJS DOM</li>\r\n<li>New uberbar to find any Resource, Chunk, Snippet, Template or Plugin by name</li>\r\n<li>All new default Manager theme with native gravatar support</li>\r\n<li>Simpler customization workflow for making custom Manager themes using Sass</li>\r\n<li>Open Manager Views in Tabs or New Windows</li>\r\n<li>A slew of improvements and new features including:Custom Headers for Content Types</li>\r\n<li>Font-Awesome 4 icons replace PNGs for UI Elements</li>\r\n<li>Open objects like resources or actions in new Tabs/Windows for multi-tabbed browser workspace</li>\r\n<li>Updated languages from our many translators and proofreaders thanks to moving to Crowdin for group translations</li>\r\n<li>Five new manager translations added: Chinese, Finnish, Indonesian, Romanain, Danish and Belarusian</li>\r\n<li>Full-screen Media Browser</li>\r\n<li>Security patches from all 2.2.x releases</li>\r\n<li>Hundreds of bugfixes, enhancements and more</li>\r\n<li>For a complete list of changes view the <a href=\"https://raw.githubusercontent.com/modxcms/revolution/v2.3.0-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">changelog</a></li></ul>\r\n<br>\r\n<strong>Thanks to the Contributors</strong><br>\r\nLets give thanks to those whose code and pull requests were integrated into this release: <a href=\"https://github.com/danyaPostfactum\" target=\"_blank\" rel=\"nofollow\">danyaPostfactum</a>, Daniel Melo (<a href=\"https://github.com/danielmelo89\" target=\"_blank\" rel=\"nofollow\">danielmelo89</a>) , <a href=\"https://github.com/enigmatic-user\" target=\"_blank\" rel=\"nofollow\">enigmatic-user</a>, JP Devries (<a href=\"https://github.com/jpdevries\" target=\"_blank\" rel=\"nofollow\">jpdevries</a>), John Peca (<a href=\"https://github.com/TheBoxer\" target=\"_blank\" rel=\"nofollow\">TheBoxer</a>), Jason Coward (<a href=\"https://github.com/opengeek\" target=\"_blank\" rel=\"nofollow\">opengeek</a>), Garry Nutting (<a href=\"https://github.com/garryn\" target=\"_blank\" rel=\"nofollow\">garryn</a>), <a href=\"https://github.com/exside\" target=\"_blank\" rel=\"nofollow\">exside</a>, Jiri Pavlicek (<a href=\"https://github.com/jiripavlicek\" target=\"_blank\" rel=\"nofollow\">jiripavlicek</a>), Mark Hamstra (<a href=\"https://github.com/Mark-H\" target=\"_blank\" rel=\"nofollow\">Mark-H</a>), Luk (<a href=\"https://github.com/exside\" target=\"_blank\" rel=\"nofollow\">exside</a>), Petri Rautianen (<a href=\"https://github.com/the-dunnock\" target=\"_blank\" rel=\"nofollow\">the-dunnock</a>), Romain Tripault (<a href=\"https://github.com/rtripault\" target=\"_blank\" rel=\"nofollow\">rtripault</a>) Menno Pietersen, (<a href=\"https://github.com/DESIGNfromWITHIN\" target=\"_blank\" rel=\"nofollow\">DESIGNfromWITHIN</a>), Ivan Klimchuk (<a href=\"https://github.com/Alroniks\" target=\"_blank\" rel=\"nofollow\">Alroniks</a>), Mike Reid (<a href=\"https://github.com/pixelchutes\" target=\"_blank\" rel=\"nofollow\">pixelchutes</a>), Christian Seel (<a href=\"https://github.com/christianseel\" target=\"_blank\" rel=\"nofollow\">christianseel</a>), David Pede (<a href=\"https://github.com/davidpede\" target=\"_blank\" rel=\"nofollow\">davidpede</a>), Rico (<a href=\"https://github.com/goldsky\" target=\"_blank\" rel=\"nofollow\">goldsky</a>), Ryan Thrash (<a href=\"Ryan Thrash\" target=\"_blank\" rel=\"nofollow\">rthrash</a>), Alexey (<a href=\"https://github.com/Qwarble\" target=\"_blank\" rel=\"nofollow\">Qwarble</a>), Joakim Nyman (<a href=\"https://github.com/fractalwolfe\" target=\"_blank\" rel=\"nofollow\">fractalwolf</a>), Zaigham Rana (<a href=\"https://github.com/zaigham\" target=\"_blank\" rel=\"nofollow\">zaigham</a>), Peter Knight (<a href=\"https://github.com/eladnova\" target=\"_blank\" rel=\"nofollow\">eladnova</a>), Oliver Haase-Lobinger (<a href=\"https://github.com/mindeffects\" target=\"_blank\" rel=\"nofollow\">mindeffects</a>), Thomas Gautvedt (<a href=\"https://github.com/OptimusCrime\" target=\"_blank\" rel=\"nofollow\">OptimusCrime</a>), Gildas Noel (<a href=\"https://github.com/krismas\" target=\"_blank\" rel=\"nofollow\">krismas</a>), Thomas D (<a href=\"https://github.com/thomasd\" target=\"_blank\" rel=\"nofollow\">thomasd</a>), <a href=\"https://github.com/vasia123\" target=\"_blank\" rel=\"nofollow\">vasia123</a>, Jeroen Kenters (<a href=\"https://github.com/jkenters\" target=\"_blank\" rel=\"nofollow\">jkenters</a>), Andrey Grachov (<a href=\"https://github.com/grachov\" target=\"_blank\" rel=\"nofollow\">grachov</a>), <a href=\"https://github.com/Jacqbus\" target=\"_blank\" rel=\"nofollow\">Jacqbus</a>, Gleb Stiblo (<a href=\"https://github.com/UlfR\" target=\"_blank\" rel=\"nofollow\">UlfR</a>), Richard (<a href=\"https://github.com/Ketziel\" target=\"_blank\" rel=\"nofollow\">Ketziel</a>), <a href=\"https://github.com/smanu85\" target=\"_blank\" rel=\"nofollow\">smanu85</a>, Liam Kerr (<a href=\"https://github.com/tehsquidge\" target=\"_blank\" rel=\"nofollow\">tehsquidge</a>), Dmitry Ponomarev (<a href=\"https://github.com/earthperson\" target=\"_blank\" rel=\"nofollow\">earthperson</a>), Kreuder (<a href=\"https://github.com/mkay\" target=\"_blank\" rel=\"nofollow\">mkay</a>), Bert Oost (<a href=\"https://github.com/bertoost\" target=\"_blank\" rel=\"nofollow\">bertoost</a>), <a href=\"https://github.com/argnist\" target=\"_blank\" rel=\"nofollow\">argnist</a>, Rimas Kudelis (<a href=\"https://github.com/rimas-kudelis\" target=\"_blank\" rel=\"nofollow\">rimas-kudelis</a>), Steve Morgan (<a href=\"https://github.com/StevenMorgan\" target=\"_blank\" rel=\"nofollow\">StevenMorgan</a>), <a href=\"https://github.com/okyanet\" target=\"_blank\" rel=\"nofollow\">okyanet</a>, and Bob Ray (<a href=\"https://github.com/BobRay\" target=\"_blank\" rel=\"nofollow\">BobRay</a>). <br>\r\n<br>\r\nWe certainly don\'t want to leave any contributors out. If we did, please let us know and we\'ll add you promptly. We truly appreciate all you\'ve done to help out.<br>\r\n<br>\r\n<strong>It Takes a Village</strong><br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"https://github.com/modxcms/revolution/issues?state=open\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>, <a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums.<br>\r\n<br>\r\nOn behalf of the entire MODX Team,<br>\r\nThank-you![/list]</span>\r\n    <span class=\"date_stamp\">Tue Jul 22 13:32:06 2014</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/Fo62BN1ZkZc/revolution-2-3-brings-a-revamped-manager-user-experience-and-much-more\" target=\"_blank\">Revolution 2.3 Brings a Revamped Manager User Experience and Much More</a></h2>\r\n    <span class=\"content\">Today we proudly announce the release of the long-awaited MODX Revolution 2.3. This is a huge release incorporating more than a thousand commits by 17 code contributors, dozens of translators and countless bug-reporters.<br>\r\n<br>\r\nRevolution 2.3 features an elegantly refined and updated MODX Manager with an all-new theme designed by Peter Knight (aka eladnova). Build and manage your sites faster, and in a more user friendly and less intimidating workspace. Revolution 2.3 also introduces the Uberbar, which provides Manager users with global search within Resources, Elements and Users. Now, whatever you\'re looking for is at your fingertips.<br>\r\n<br>\r\nWe have tried our best to encourage Extras authors to make sure their extras are up to date and compatible with 2.3, however, there may be extras that have not been tested. Before upgrading or starting a new project in Revolution 2.3, please take a look at <a href=\"https://github.com/modxcms/revolution/issues/11630#issue-37173621\" target=\"_blank\" rel=\"nofollow\">this list of Extras confirmed to work with 2.3</a>. <br>\r\n<br>\r\n<strong>Highlights of Revolution 2.3</strong><br>\r\nAs mentioned before, this is a pretty significant release, here\'s just a few key highlights of Revo 2.3:<br>\r\n<ul class=\"dis-ul\"><br>\r\n<li>Updated and streamlined MODX Manager User Experience including:[list]Noticeably faster page and screen loading / more performant ExtJS DOM</li>\r\n<li>New uberbar to find any Resource, Chunk, Snippet, Template or Plugin by name</li>\r\n<li>All new default Manager theme with native gravatar support</li>\r\n<li>Simpler customization workflow for making custom Manager themes using Sass</li>\r\n<li>Open Manager Views in Tabs or New Windows</li>\r\n<li>A slew of improvements and new features including:Custom Headers for Content Types</li>\r\n<li>Font-Awesome 4 icons replace PNGs for UI Elements</li>\r\n<li>Open objects like resources or actions in new Tabs/Windows for multi-tabbed browser workspace</li>\r\n<li>Updated languages from our many translators and proofreaders thanks to moving to Crowdin for group translations</li>\r\n<li>Five new manager translations added: Chinese, Finnish, Indonesian, Romanain, Danish and Belarusian</li>\r\n<li>Full-screen Media Browser</li>\r\n<li>Security patches from all 2.2.x releases</li>\r\n<li>Hundreds of bugfixes, enhancements and more</li>\r\n<li>For a complete list of changes view the <a href=\"https://raw.githubusercontent.com/modxcms/revolution/v2.3.0-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">changelog</a></li></ul>\r\n<br>\r\n<strong>Thanks to the Contributors</strong><br>\r\nLets give thanks to those whose code and pull requests were integrated into this release: <a href=\"https://github.com/danyaPostfactum\" target=\"_blank\" rel=\"nofollow\">danyaPostfactum</a>, Daniel Melo (<a href=\"https://github.com/danielmelo89\" target=\"_blank\" rel=\"nofollow\">danielmelo89</a>) , <a href=\"https://github.com/enigmatic-user\" target=\"_blank\" rel=\"nofollow\">enigmatic-user</a>, JP Devries (<a href=\"https://github.com/jpdevries\" target=\"_blank\" rel=\"nofollow\">jpdevries</a>), John Peca (<a href=\"https://github.com/TheBoxer\" target=\"_blank\" rel=\"nofollow\">TheBoxer</a>), Jason Coward (<a href=\"https://github.com/opengeek\" target=\"_blank\" rel=\"nofollow\">opengeek</a>), Garry Nutting (<a href=\"https://github.com/garryn\" target=\"_blank\" rel=\"nofollow\">garryn</a>), <a href=\"https://github.com/exside\" target=\"_blank\" rel=\"nofollow\">exside</a>, Jiri Pavlicek (<a href=\"https://github.com/jiripavlicek\" target=\"_blank\" rel=\"nofollow\">jiripavlicek</a>), Mark Hamstra (<a href=\"https://github.com/Mark-H\" target=\"_blank\" rel=\"nofollow\">Mark-H</a>), Luk (<a href=\"https://github.com/exside\" target=\"_blank\" rel=\"nofollow\">exside</a>), Petri Rautianen (<a href=\"https://github.com/the-dunnock\" target=\"_blank\" rel=\"nofollow\">the-dunnock</a>), Romain Tripault (<a href=\"https://github.com/rtripault\" target=\"_blank\" rel=\"nofollow\">rtripault</a>) Menno Pietersen, (<a href=\"https://github.com/DESIGNfromWITHIN\" target=\"_blank\" rel=\"nofollow\">DESIGNfromWITHIN</a>), Ivan Klimchuk (<a href=\"https://github.com/Alroniks\" target=\"_blank\" rel=\"nofollow\">Alroniks</a>), Mike Reid (<a href=\"https://github.com/pixelchutes\" target=\"_blank\" rel=\"nofollow\">pixelchutes</a>), Christian Seel (<a href=\"https://github.com/christianseel\" target=\"_blank\" rel=\"nofollow\">christianseel</a>), David Pede (<a href=\"https://github.com/davidpede\" target=\"_blank\" rel=\"nofollow\">davidpede</a>), Rico (<a href=\"https://github.com/goldsky\" target=\"_blank\" rel=\"nofollow\">goldsky</a>), Ryan Thrash (<a href=\"Ryan Thrash\" target=\"_blank\" rel=\"nofollow\">rthrash</a>), Alexey (<a href=\"https://github.com/Qwarble\" target=\"_blank\" rel=\"nofollow\">Qwarble</a>), Joakim Nyman (<a href=\"https://github.com/fractalwolfe\" target=\"_blank\" rel=\"nofollow\">fractalwolf</a>), Zaigham Rana (<a href=\"https://github.com/zaigham\" target=\"_blank\" rel=\"nofollow\">zaigham</a>), Peter Knight (<a href=\"https://github.com/eladnova\" target=\"_blank\" rel=\"nofollow\">eladnova</a>), Oliver Haase-Lobinger (<a href=\"https://github.com/mindeffects\" target=\"_blank\" rel=\"nofollow\">mindeffects</a>), Thomas Gautvedt (<a href=\"https://github.com/OptimusCrime\" target=\"_blank\" rel=\"nofollow\">OptimusCrime</a>), Gildas Noel (<a href=\"https://github.com/krismas\" target=\"_blank\" rel=\"nofollow\">krismas</a>), Thomas D (<a href=\"https://github.com/thomasd\" target=\"_blank\" rel=\"nofollow\">thomasd</a>), <a href=\"https://github.com/vasia123\" target=\"_blank\" rel=\"nofollow\">vasia123</a>, Jeroen Kenters (<a href=\"https://github.com/jkenters\" target=\"_blank\" rel=\"nofollow\">jkenters</a>), Andrey Grachov (<a href=\"https://github.com/grachov\" target=\"_blank\" rel=\"nofollow\">grachov</a>), <a href=\"https://github.com/Jacqbus\" target=\"_blank\" rel=\"nofollow\">Jacqbus</a>, Gleb Stiblo (<a href=\"https://github.com/UlfR\" target=\"_blank\" rel=\"nofollow\">UlfR</a>), Richard (<a href=\"https://github.com/Ketziel\" target=\"_blank\" rel=\"nofollow\">Ketziel</a>), <a href=\"https://github.com/smanu85\" target=\"_blank\" rel=\"nofollow\">smanu85</a>, Liam Kerr (<a href=\"https://github.com/tehsquidge\" target=\"_blank\" rel=\"nofollow\">tehsquidge</a>), Dmitry Ponomarev (<a href=\"https://github.com/earthperson\" target=\"_blank\" rel=\"nofollow\">earthperson</a>), Kreuder (<a href=\"https://github.com/mkay\" target=\"_blank\" rel=\"nofollow\">mkay</a>), Bert Oost (<a href=\"https://github.com/bertoost\" target=\"_blank\" rel=\"nofollow\">bertoost</a>), <a href=\"https://github.com/argnist\" target=\"_blank\" rel=\"nofollow\">argnist</a>, Rimas Kudelis (<a href=\"https://github.com/rimas-kudelis\" target=\"_blank\" rel=\"nofollow\">rimas-kudelis</a>), Steve Morgan (<a href=\"https://github.com/StevenMorgan\" target=\"_blank\" rel=\"nofollow\">StevenMorgan</a>), <a href=\"https://github.com/okyanet\" target=\"_blank\" rel=\"nofollow\">okyanet</a>, and Bob Ray (<a href=\"https://github.com/BobRay\" target=\"_blank\" rel=\"nofollow\">BobRay</a>). <br>\r\n<br>\r\nWe certainly don\'t want to leave any contributors out. If we did, please let us know and we\'ll add you promptly. We truly appreciate all you\'ve done to help out.<br>\r\n<br>\r\n<strong>Get Started with Revo 2.3</strong><br>\r\nHere\'s what you need to get started or upgrade to MODX Revolution 2.3:<br>\r\n<ul class=\"dis-ul\"><br>\r\n<li><a href=\"http://modx.com/download/\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.3</a></li>\r\n<li><a href=\"http://rtfm.modx.com/revolution/2.x/getting-started/server-requirements\" target=\"_blank\" rel=\"nofollow\">What\'s required</a> to run Revolution 2.3</li>\r\n<li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a></li>\r\n<li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a></li>\r\n<li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation</a></li>\r\n</ul>\r\n<br>\r\n<br>\r\n<strong>It Takes a Village</strong><br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"https://github.com/modxcms/revolution/issues?state=open\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>, <a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums.<br>\r\n<br>\r\nOn behalf of the entire MODX Team,<br>\r\nThank-you![/list]</span>\r\n    <span class=\"date_stamp\">Tue Jul 15 13:35:14 2014</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/rKZtjEd2OPw/revolution-2-2-15-fixes-critical-security-issue-with-logins\" target=\"_blank\">Revolution 2.2.15 Fixes Critical Security Issue with Logins</a></h2>\r\n    <span class=\"content\">Revolution 2.2.15 was released today. This patch release addresses a <a href=\"http://forums.modx.com/thread/92129/critical-login-xss-csrf-revolution-2-2-1-4-and-prior#dis-post-503208\" target=\"_blank\" rel=\"nofollow\">critical security issue</a> related to the Manager login and logins using the Login snippet. In addition, there were several other minor security issues and bugfixes.<br>\r\n<br>\r\nThis is release includes critical security enhancements and should be considered a mandatory upgrade. <br>\r\n<br>\r\n<strong>Upgrading Is Critical</strong><br>\r\nWe can\'t stress enough about the importance of diligently upgrading to the latest version of MODX. While no software is 100% secure, staying on the most current version protects you from hackers that rely on exploiting outdated unpatched software. If you\'re not sure what version of MODX Revolution you\'re running, login to your website Manager and go to Reports&gt;System Info and you should see it in the top section.<br>\r\n<br>\r\nIf you need help upgrading your site, please contact your website builder, find a <a href=\"/modx.com/professionals\" target=\"_blank\" rel=\"nofollow\">MODX Professional</a> or get in touch with <a href=\"/modx.com/support-and-services/services/\" target=\"_blank\" rel=\"nofollow\">MODX Support</a>.<br>\r\n<br>\r\n<strong>Highlights of 2.2.15</strong><br>\r\nHere are some of the highlights of 2.2.15:<ul class=\"dis-ul\"><br>\r\n<li>Fixed Manager login/Login security issue</li>\r\n<li>Fixed incorrect sorting by rank in TV grid on template create/update screen</li>\r\n<li>Fixed two display issues with the Element Tree related to Categories</li>\r\n<li>Fixed to validation of Element Names</li>\r\n<li>For a complete list of changes view the <a href=\"https://raw.github.com/modxcms/revolution/v2.2.15-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">changelog</a>.</li></ul>\r\n<br>\r\n<strong>Thanks to the Contributors</strong><br>\r\nLets give thanks to those whose code was integrated in this release: <a href=\"https://github.com/danyaPostfactum\" target=\"_blank\" rel=\"nofollow\">danyaPostfactum</a>, Daniel Melo, <a href=\"https://github.com/enigmatic-user\" target=\"_blank\" rel=\"nofollow\">enigmatic-user</a>, JP Devries (<a href=\"https://github.com/jpdevries\" target=\"_blank\" rel=\"nofollow\">jpdevries</a>), John Peca (<a href=\"https://github.com/TheBoxer\" target=\"_blank\" rel=\"nofollow\">TheBoxer</a>), Jason Coward (<a href=\"https://github.com/opengeek\" target=\"_blank\" rel=\"nofollow\">opengeek</a>), Garry Nutting (<a href=\"https://github.com/garryn\" target=\"_blank\" rel=\"nofollow\">garryn</a>), <a href=\"https://github.com/exside\" target=\"_blank\" rel=\"nofollow\">exside</a>, Jiri Pavlicek (<a href=\"https://github.com/jiripavlicek\" target=\"_blank\" rel=\"nofollow\">jiripavlicek</a>), Mark Hamstra (<a href=\"https://github.com/Mark-H\" target=\"_blank\" rel=\"nofollow\">Mark-H</a>), Luk (<a href=\"https://github.com/exside\" target=\"_blank\" rel=\"nofollow\">exside</a>), Petri Rautianen <a href=\"https://github.com/the-dunnock\" target=\"_blank\" rel=\"nofollow\">the-dunnock</a>, and Romain Tripault (<a href=\"https://github.com/rtripault\" target=\"_blank\" rel=\"nofollow\">rtripault</a>)<br>\r\n<br>\r\n<strong>Get Started with 2.2.15</strong><br>\r\nHere\'s what you need to get started or upgrade to MODX Revolution 2.2.15:<ul class=\"dis-ul\"><br>\r\n<li><a href=\"http://modx.com/download/release/revolution-2.2.15-pl\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.2.15</a></li>\r\n<li><a href=\"/rtfm.modx.com/revolution/2.x/getting-started/server-requirements\" target=\"_blank\" rel=\"nofollow\">What\'s required</a> to run Revolution 2.2</li>\r\n<li>How to <a href=\"/rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a></li>\r\n<li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a></li>\r\n<li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation</a></li></ul>\r\n<br>\r\n<strong>It Takes a Village</strong><br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"https://github.com/modxcms/revolution/issues?state=open\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>, <a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums.<br>\r\n<br>\r\nOn behalf of the entire MODX Team,<br>\r\nThank-you!</span>\r\n    <span class=\"date_stamp\">Tue Jul 15 08:23:36 2014</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/cf0QXpccXHw/modx-evolution-1-0-14-out-now\" target=\"_blank\">MODX Evolution 1.0.14 Out Now</a></h2>\r\n    <span class=\"content\">MODX Evolution 1.0.14 is now available. This is the fifth release from the Ambassador-led Evolution team. Evo 1.0.14 includes an important security fix to AjaxSearch along with a several enhancements, bug and security fixes.<br>\r\n<br>\r\nWe\'d like to thank the contributors for this release who are: <a href=\"https://github.com/Jako\" target=\"_blank\" rel=\"nofollow\">Thomas Jakobi (Jako)</a>, <a href=\"https://github.com/dmi3yy\" target=\"_blank\" rel=\"nofollow\">Dmytro Lukianenko (Dmi3yy)</a>,  <a href=\"https://github.com/Segr\" target=\"_blank\" rel=\"nofollow\">Segr Kaparov (Segr)</a>, <a href=\"https://github.com/yama\" target=\"_blank\" rel=\"nofollow\">Masanori Yamamoto (yama)</a>, <a href=\"https://github.com/Haprog\" target=\"_blank\" rel=\"nofollow\">Kari Söderholm (Haprog)</a>, <a href=\"https://github.com/yakimoff\" target=\"_blank\" rel=\"nofollow\">Pavel Yakimov (yakimoff)</a>, <a href=\"https://github.com/MrSwed\" target=\"_blank\" rel=\"nofollow\">MrSwed</a>, and <a href=\"https://github.com/Pathologic\" target=\"_blank\" rel=\"nofollow\">Pathologic</a>.<br>\r\n<br>\r\nWith regard to the important AjaxSearch security issue, there are three options to mitigate the issue:<br>\r\n<ul class=\"dis-ul\"><br>\r\n<li>(better) Update AjaxSearch to 1.10.1</li>\r\n<li>(best) Upgrade to MODX Evolution 1.0.14</li>\r\n</ul>\r\n<br>\r\nTo everyone who filed bugs and made feature requests. Thanks and keep them coming! <br>\r\n<br>\r\nTo keep your MODX sites safe and performing their best, we strongly recommend upgrading to the latest version of Evolution. If you need someone to assist you with your MODX Evolution upgrade, check out our <a href=\"http://modx.com/professionals/\" target=\"_blank\" rel=\"nofollow\">MODX Professionals</a> directory. <br>\r\n<br>\r\nHere are the highlights of the 1.0.14 release:<br>\r\n<ul class=\"dis-ul\"><br>\r\n<li>Important AjaxSearch update that addresses a critical security issue.</li>\r\n<li>A variety of core bug fixes</li>\r\n<li>Improved logging/debugging</li>\r\n<li>A number of updates to Wayfinder, WebLogin, Ditto, and TinyMCE</li>\r\n<li>Read <a href=\"https://raw.github.com/modxcms/evolution/v1.0.14/install/changelog.txt\" target=\"_blank\" rel=\"nofollow\">a complete list of changes in the changelog.txt</a> file located at /install/ </li>\r\n</ul>\r\n<br>\r\n<a href=\"http://modx.com/download/evolution/\" target=\"_blank\" rel=\"nofollow\">Download Evolution 1.0.14 now</a>.<br></span>\r\n    <span class=\"date_stamp\">Sat Jun  7 09:54:00 2014</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/TPv599v08_k/revolution-2-2-14-out-now\" target=\"_blank\">Revolution 2.2.14 Out Now</a></h2>\r\n    <span class=\"content\"><br>\r\nRevolution 2.2.14 was released today. This patch release contains numerous fixes and improvements including further security enhancements relating to the fixes in 2.2.13. One nice little addition is the ability to upload transport packages directly from the Package Management interface, making it much easier to add packages from third party providers.<br>\r\n<br>\r\nThis release includes additional security enhancements and therefore should be considered a mandatory upgrade. If you need help upgrading your site, please contact your website builder,find a <a href=\"http://modx.com/professionals\" target=\"_blank\" rel=\"nofollow\">MODX Professional</a> or get in touch with<a href=\"http://modx.com/support-and-services/services/\" target=\"_blank\" rel=\"nofollow\">MODX Support</a>.<br>\r\n<br>\r\nHere are some of the highlights of 2.2.14: <ul class=\"dis-ul\"><br>\r\n<li>Add upload functionality directly to PackageManager grid</li>\r\n<li>Disabled dirty check on save button in Resources</li>\r\n<li>Add proper validation for modSession id</li>\r\n<li>Added OnElementNotFound system event</li>\r\n<li>For a complete list of changes view the <a href=\"https://raw.github.com/modxcms/revolution/v2.2.14-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">changelog</a>. </li></ul>\r\n<br>\r\nLets give thanks to those whose code was integrated in this release: Romain Tripault (<a href=\"https://github.com/rtripault\" target=\"_blank\" rel=\"nofollow\">rtripault</a>), John Peca (<a href=\"https://github.com/TheBoxer\" target=\"_blank\" rel=\"nofollow\">TheBoxer</a>), Jason Coward (<a href=\"https://github.com/opengeek\" target=\"_blank\" rel=\"nofollow\">opengeek</a>), Garry Nutting (<a href=\"https://github.com/garryn\" target=\"_blank\" rel=\"nofollow\">garryn</a>), <a href=\"https://github.com/exside\" target=\"_blank\" rel=\"nofollow\">exside</a>, Mike Reid (<a href=\"https://github.com/pixelchutes\" target=\"_blank\" rel=\"nofollow\">pixelchutes</a>), Giovanni Harting, and <a href=\"https://github.com/danyaPostfactum\" target=\"_blank\" rel=\"nofollow\">danyaPostfactum</a>.<br>\r\n<br>\r\nHere\'s what you need to get started or upgrade to MODX Revolution 2.2.14:<ul class=\"dis-ul\"><br>\r\n<li><a href=\"http://modx.com/download/\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.2.14</a></li>\r\n<li><a href=\"/rtfm.modx.com/revolution/2.x/getting-started/server-requirements\" target=\"_blank\" rel=\"nofollow\">What\'s required</a> to run Revolution 2.2</li>\r\n<li>How to <a href=\"/rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a></li>\r\n<li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a></li>\r\n<li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation</a></li></ul>\r\n<br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"https://github.com/modxcms/revolution/issues?state=open\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>, <a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums.<br>\r\n<br>\r\nOn behalf of the entire MODX Team,<br>\r\nThank-you!</span>\r\n    <span class=\"date_stamp\">Fri Apr  4 10:44:19 2014</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/UP7U1Ttc1L4/revolution-2-2-13-out-now\" target=\"_blank\">Revolution 2.2.13 Out Now</a></h2>\r\n    <span class=\"content\">Today we released MODX Revolution 2.2.13. This is a patch release that corrects an <a href=\"http://forums.modx.com/thread/89486/modx-revolution-2-x-sql-injection#dis-post-492046\" target=\"_blank\" rel=\"nofollow\">extremely critical security vulnerability</a>.<br>\r\n<br>\r\nThis is a security patch release should be considered a mandatory upgrade. <br>\r\n<br>\r\nIf you are unable to upgrade to 2.2.13 and running 2.2.6 through 2.2.11 inclusive, you can replace the modx.class.php with the one from the relevant \'pl2\' tag in the MODX Revolution repository. <br>\r\n<br>\r\nE.g. for v2.2.10-pl it would be: <br>\r\n<div class=\"dis-code\"><pre class=\"brush: php; toolbar: false\">https://raw.github.com/modxcms/revolution/v2.2.10-pl2/core/model/modx/modx.class.php</pre></div><br>\r\nFor releases prior to 2.2.6, please <a href=\"&quot;mailto:help@modx.com\" target=\"_blank\" rel=\"nofollow\">contact MODX Support</a> for assistance patching your version, or to get help with an upgrade to 2.2.13.<br>\r\n<br>\r\nFor <a href=\"http://modxcloud.com/\" target=\"_blank\" rel=\"nofollow\">MODX Cloud</a> users, we have enabled preventative measures to protect against this vulnerability, giving you more time to upgrade your sites.<br>\r\n<br>\r\nThe next patch release, <a href=\"https://github.com/modxcms/revolution/issues?milestone=54&amp;page=1&amp;state=closed\" target=\"_blank\" rel=\"nofollow\">2.2.14 will include the changes</a> that were originally to be in 2.2.13 in GitHub.<br>\r\n<br>\r\nRead the complete <a href=\"https://raw.github.com/modxcms/revolution/v2.2.13-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">changelog</a>.<br>\r\n<br>\r\nHere\'s what you need to get started or upgrade to MODX Revolution 2.2.13:<br>\r\n<ul class=\"dis-ul\"><br>\r\n    <li><a href=\"http://modx.com/download/\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.2.13</a></li>\r\n    <li><a href=\"http://rtfm.modx.com/revolution/2.x/getting-started/server-requirements\" target=\"_blank\" rel=\"nofollow\">What\'s required</a> to run Revolution 2.2</li>\r\n    <li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a></li>\r\n    <li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a></li>\r\n    <li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation</a></li>\r\n</ul>\r\nWe highly recommend keeping your software up-to-date. If you need help upgrading your site, please contact your website builder or contact a <a href=\"http://modx.com/professionals\" target=\"_blank\" rel=\"nofollow\">MODX Professional</a>.<br>\r\n<br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"https://github.com/modxcms/revolution/issues?state=open\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>, <a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums.<br>\r\n<br>\r\nOn behalf of the entire MODX Team,<br>\r\nThank-you!</span>\r\n    <span class=\"date_stamp\">Fri Mar  7 12:08:02 2014</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/qPzFXE-zikQ/modx-evolution-1-0-13-out-now\" target=\"_blank\">MODX Evolution 1.0.13 Out Now</a></h2>\r\n    <span class=\"content\">MODX Evolution 1.0.13 is now available. This is the fourth release from the Ambassador-led Evolution team. Evo 1.0.13 includes 24 improvements, 44 refactors,  42 fixes and 1 security enhancement. <br>\r\n<br>\r\nWe\'d like to thank the lead contributors for this release who are: <a href=\"https://github.com/dmi3yy\" target=\"_blank\" rel=\"nofollow\">Dmytro Lukianenko (Dmi3yy)</a>, <a href=\"https://github.com/Jako\" target=\"_blank\" rel=\"nofollow\">Thomas Jakobi (Jako)</a>, <a href=\"https://github.com/segr\" target=\"_blank\" rel=\"nofollow\">Segr Kaparov (Segr)</a>, <a href=\"https://github.com/DivanDesign\" target=\"_blank\" rel=\"nofollow\">DivanDesign studio</a>, esszett, and Eoler. <br>\r\n<br>\r\nWe\'d also like to thank the translators who helped ensure the language files were current: <a href=\"https://www.transifex.com/accounts/profile/fourroses/\" target=\"_blank\" rel=\"nofollow\">Marc (fourroses)</a>, NL; <a href=\"https://www.transifex.com/accounts/profile/luigif/\" target=\"_blank\" rel=\"nofollow\">luigif</a>, <a href=\"https://www.transifex.com/accounts/profile/banzai/\" target=\"_blank\" rel=\"nofollow\">Nicola (banzai)</a> IT; <a href=\"https://www.transifex.com/accounts/profile/yama/\" target=\"_blank\" rel=\"nofollow\">Masanori Yamamoto (yama)</a>, JP; <a href=\"https://www.transifex.com/accounts/profile/dmi3yy/\" target=\"_blank\" rel=\"nofollow\">Dmytro Lukianenko (dmi3yy)</a>, <a href=\"https://www.transifex.com/accounts/profile/Extremum/\" target=\"_blank\" rel=\"nofollow\">Alex (Extremum)</a>, <a href=\"https://www.transifex.com/accounts/profile/Pathologic/\" target=\"_blank\" rel=\"nofollow\">Pathologic</a>, <a href=\"https://www.transifex.com/accounts/profile/Segr/\" target=\"_blank\" rel=\"nofollow\">Segr Kaparov (Segr)</a>, RU; <a href=\"https://www.transifex.com/accounts/profile/PontusAgren/\" target=\"_blank\" rel=\"nofollow\">PontusAgren</a>, SV; <a href=\"https://www.transifex.com/accounts/profile/witq/\" target=\"_blank\" rel=\"nofollow\">Witek Galecki (witq)</a>, <a href=\"https://www.transifex.com/accounts/profile/pmfx/\" target=\"_blank\" rel=\"nofollow\">pmfx </a>, PL; <a href=\"https://www.transifex.com/accounts/profile/everton_seib/\" target=\"_blank\" rel=\"nofollow\">everton_seib </a>, PT; <a href=\"https://www.transifex.com/accounts/profile/jako/ \" target=\"_blank\" rel=\"nofollow\">Thomas Jakobi (jako)</a>, DE. <br>\r\n<br>\r\nTo everyone who filed bugs and made feature requests. Thanks and keep them coming! <br>\r\n<br>\r\nTo keep your MODX sites safe and performing their best, we strongly recommend upgrading to the latest version of Evolution. If you need someone to assist you with your MODX Evolution upgrade, check out our <a href=\"http://modx.com/professionals/\" target=\"_blank\" rel=\"nofollow\">MODX Professionals</a> directory. <br>\r\n<br>\r\nHere are the highlights of the 1.0.13 release:<br>\r\n<ul class=\"dis-ul\"><br>\r\n<li>KCFinder - change uploaded image/file names with TransAlias</li>\r\n<li>ManagerManager updated up to 0.6.1</li>\r\n<li>Updated API functions: clearCache, now you can call it with parameter full ($modx-&gt;clearCache(\'full\');)</li>\r\n<li>Updated API functions: getDocuments, getTemplateVars, getTemplateVarOutput, getDocumentChildren, getDocumentChildrenTVarOutput, you can call getDocumentChildren with parameter all for view all documents (not only published or unpublished, and the same with deleted)</li>\r\n<li>Updated Wayfinder to 2.0.2 (available document specific placeholders [+pagetitle+], [+longtitle+] etc.; fixed work of @INHERIT for custom TVs)</li>\r\n<li>Managers with role = 1 can see all documents in manager panel and in frontend (in earlier versions documents with restrictions to special groups could not be seen by those manager users)</li>\r\n<li>Added API function: $modx-&gt;parseText()</li>\r\n<li>Added document ID to title during editing document, also added to QM+</li>\r\n<li>Breadcrumbs 1.0.4 (you can exclude documents with the specified templates)</li>\r\n<li>phpthumb 1.2 (if images on page processed already, phpthumb class will not included)</li>\r\n<li>eForm 1.4.5 (added parameters: &amp;attachmentFields/&amp;attachmentPath)</li>\r\n<li>FirstChildRedirect 2.0 (added parameters: &amp;default, &amp;sortBy, &amp;sortDir, &amp;responseCode)</li>\r\n<li>Read <a href=\"https://raw.github.com/modxcms/evolution/v1.0.13/install/changelog.txt\" target=\"_blank\" rel=\"nofollow\">a complete list of changes in the changelog.txt</a> file located at /install/ </li>\r\n</ul>\r\n<br>\r\n<a href=\"http://modx.com/download/evolution/\" target=\"_blank\" rel=\"nofollow\">Download Evolution 1.0.13 now</a>.<br>\r\n<br>\r\nYou can read <a href=\"http://modx.com/blog/2014/03/03/modx-evolution-1.0.13/\" target=\"_blank\" rel=\"nofollow\">the complete Evolution 1.0.13 announcement</a> on the MODX Blog.</span>\r\n    <span class=\"date_stamp\">Mon Mar  3 12:20:01 2014</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/NwoQihX4Fbs/revolution-2-2-12-out-now\" target=\"_blank\">Revolution 2.2.12 Out Now</a></h2>\r\n    <span class=\"content\">Revolution 2.2.12 was released today. It includes two bug fixes including one affecting the phpThumb library that ships with Revo. In addition, it eliminates the bug with the alert notifying users to confirm navigation to prevent losing unsaved changes. 2.2.12 also includes update language files and copyright updates to 2014.<br>\r\n<br>\r\nAs this release contains fixes that improve stability and the Manager UX, we recommend upgrading all your sites. If you\'re using MODX Cloud, this just takes a couple clicks.<br>\r\n<br>\r\nRead the complete <a href=\"https://raw.github.com/modxcms/revolution/v2.2.12-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">changelog</a>.<br>\r\n<br>\r\nHere\'s what you need to get started or upgrade to MODX Revolution 2.2.12:<br>\r\n<ul class=\"dis-ul\"><br>\r\n    <li><a href=\"http://modx.com/download/\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.2.12</a></li>\r\n    <li><a href=\"http://rtfm.modx.com/revolution/2.x/getting-started/server-requirements\" target=\"_blank\" rel=\"nofollow\">What\'s required</a> to run Revolution 2.2</li>\r\n    <li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a></li>\r\n    <li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a></li>\r\n    <li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation</a></li>\r\n</ul>\r\nWe highly recommend keeping your software up-to-date. If you need help upgrading your site, please contact your website builder or contact a <a href=\"http://modx.com/professionals\" target=\"_blank\" rel=\"nofollow\">MODX Professional</a>.<br>\r\n<br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"https://github.com/modxcms/revolution/issues?state=open\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>, <a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums.<br>\r\n<br>\r\nOn behalf of the entire MODX Team,<br>\r\nThank-you!</span>\r\n    <span class=\"date_stamp\">Wed Feb 19 11:54:21 2014</span>\r\n</div>\r\n<div class=\"news_article\">\r\n    <h2><a href=\"http://feedproxy.google.com/~r/modx-announce/~3/uLgT2_G8I7A/revolution-2-2-11-out-now\" target=\"_blank\">Revolution 2.2.11 Out Now</a></h2>\r\n    <span class=\"content\">Revolution 2.2.11 was released today. It includes two security fixes including one affecting the phpThumb library that ships with Revo. In addition, it eliminates a bug that appeared in Google Chrome 32 and adds an alert notifying users to confirm navigation to prevent losing unsaved changes.<br>\r\n<br>\r\nAs this release contains security fixes, we recommend upgrading all your sites. If you\'re using <a href=\"http://modxcloud.com/\" target=\"_blank\" rel=\"nofollow\">MODX Cloud</a>, this just takes a couple clicks.<br>\r\n<br>\r\n2.3 is coming and we\'ll have an update on what we\'ve been up to, soon.<br>\r\n<br>\r\nHere are the highlights of changes in the 2.2.11 release:<br>\r\n<ul class=\"dis-ul\"><br>\r\n<li>Update phpThumb to 1.7.11-beta to close security vulnerability</li>\r\n<li>Prevent XSS on actionVar in header.tpl in the Manager</li>\r\n<li>Eliminate unwanted \"confirm navigation\" alerts in Chrome 32+</li>\r\n<li>Added intentional \"confirm navigation\" to prevent loss of unsaved changes</li>\r\n<li>Fix caching of manager menus. Until now, they may not have been ever cached</li>\r\n<li>For more details, read the complete <a href=\"https://raw.github.com/modxcms/revolution/v2.2.11-pl/core/docs/changelog.txt\" target=\"_blank\" rel=\"nofollow\">changelog</a></li>\r\n</ul>\r\n<br>\r\nHere\'s what you need to get started or upgrade to MODX Revolution 2.2.11:<br>\r\n<ul class=\"dis-ul\"><br>\r\n    <li><a href=\"http://modx.com/download/\" target=\"_blank\" rel=\"nofollow\">Download Revolution 2.2.11</a></li>\r\n    <li><a href=\"http://rtfm.modx.com/revolution/2.x/getting-started/server-requirements\" target=\"_blank\" rel=\"nofollow\">What\'s required</a> to run Revolution 2.2</li>\r\n    <li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation\" target=\"_blank\" rel=\"nofollow\">install MODX Revolution</a></li>\r\n    <li>How to <a href=\"http://rtfm.modx.com/revolution/2.x/administering-your-site/upgrading-modx\" target=\"_blank\" rel=\"nofollow\">upgrade MODX Revolution</a></li>\r\n    <li>Read the <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">MODX Revolution Documentation</a></li>\r\n</ul>\r\nWe highly recommend keeping your software up-to-date. If you need help upgrading your site, please contact your website builder or contact a <a href=\"http://modx.com/professionals\" target=\"_blank\" rel=\"nofollow\">MODX Professional</a>.<br>\r\n<br>\r\nMODX is only as good as it is because of many individual community members and users that take the time to <a href=\"http://tracker.modx.com/projects/revo/issues\" target=\"_blank\" rel=\"nofollow\">report issues and request new features</a>. Make sure you <a href=\"http://rtfm.modx.com/revolution/2.x/\" target=\"_blank\" rel=\"nofollow\">read the documentation</a>, <a href=\"http://forums.modx.com/board/?board=264\" target=\"_blank\" rel=\"nofollow\">post feedback and share your successes</a> in the MODX community forums.<br>\r\n<br>\r\nOn behalf of the entire MODX Team,<br>\r\nThank-you!<br></span>\r\n    <span class=\"date_stamp\">Tue Jan 21 12:16:48 2014</span>\r\n</div>\r\n    </div>\r\n</div>', 1, 1, 0, 1, 1, 1, 1451098859, 1, 1451099469, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_htmlsnippets`
--

DROP TABLE IF EXISTS `modx_site_htmlsnippets`;
CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugin_events`
--

DROP TABLE IF EXISTS `modx_site_plugin_events`;
CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(255) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pluginid`,`event`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES 
(1, 'OnRichTextBrowserInit', 0, 0),
(1, 'OnRichTextEditorRegister', 0, 0),
(1, 'OnRichTextEditorInit', 0, 0),
(2, 'OnChunkFormPrerender', 0, 0),
(2, 'OnPluginFormPrerender', 0, 0),
(2, 'OnSnipFormPrerender', 0, 0),
(2, 'OnTempFormPrerender', 0, 0),
(2, 'OnFileEditFormPrerender', 0, 0),
(2, 'OnFileCreateFormPrerender', 0, 0),
(2, 'OnDocFormPrerender', 0, 0),
(2, 'OnRichTextEditorRegister', 0, 0),
(2, 'OnManagerPageBeforeRender', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugins`
--

DROP TABLE IF EXISTS `modx_site_plugins`;
CREATE TABLE `modx_site_plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `disabled` (`disabled`),
  KEY `static` (`static`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES 
(1, 0, 0, 'TinyMCE', 'TinyMCE 4.3.3-pl plugin for MODx Revolution', 0, 0, 0, '/**\n * TinyMCE RichText Editor Plugin\n *\n * Events: OnRichTextEditorInit, OnRichTextEditorRegister,\n * OnBeforeManagerPageInit, OnRichTextBrowserInit\n *\n * @author Jeff Whitfield <jeff@collabpad.com>\n * @author Shaun McCormick <shaun@collabpad.com>\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package tinymce\n * @subpackage build\n */\nif ($modx->event->name == \'OnRichTextEditorRegister\') {\n    $modx->event->output(\'TinyMCE\');\n    return;\n}\nrequire_once $modx->getOption(\'tiny.core_path\',null,$modx->getOption(\'core_path\').\'components/tinymce/\').\'tinymce.class.php\';\n$tiny = new TinyMCE($modx,$scriptProperties);\n\n$useEditor = $tiny->context->getOption(\'use_editor\',false);\n$whichEditor = $tiny->context->getOption(\'which_editor\',\'\');\n\n/* Handle event */\nswitch ($modx->event->name) {\n    case \'OnRichTextEditorInit\':\n        if ($useEditor && $whichEditor == \'TinyMCE\') {\n            unset($scriptProperties[\'chunk\']);\n            if (isset($forfrontend) || $modx->context->get(\'key\') != \'mgr\') {\n                $def = $tiny->context->getOption(\'cultureKey\',$tiny->context->getOption(\'manager_language\',\'en\'));\n                $tiny->properties[\'language\'] = $modx->getOption(\'fe_editor_lang\',array(),$def);\n                $tiny->properties[\'frontend\'] = true;\n                unset($def);\n            }\n            /* commenting these out as it causes problems with richtext tvs */\n            //if (isset($scriptProperties[\'resource\']) && !$resource->get(\'richtext\')) return;\n            //if (!isset($scriptProperties[\'resource\']) && !$modx->getOption(\'richtext_default\',null,false)) return;\n            $tiny->setProperties($scriptProperties);\n            $html = $tiny->initialize();\n            $modx->event->output($html);\n            unset($html);\n        }\n        break;\n    case \'OnRichTextBrowserInit\':\n        if ($useEditor && $whichEditor == \'TinyMCE\') {\n            $inRevo20 = (boolean)version_compare($modx->version[\'full_version\'],\'2.1.0-rc1\',\'<\');\n            $modx->getVersionData();\n            $source = $tiny->context->getOption(\'default_media_source\',null,1);\n            \n            $modx->controller->addHtml(\'<script type=\"text/javascript\">var inRevo20 = \'.($inRevo20 ? 1 : 0).\';MODx.source = \"\'.$source.\'\";</script>\');\n            \n            $modx->controller->addJavascript($tiny->config[\'assetsUrl\'].\'jscripts/tiny_mce/tiny_mce_popup.js\');\n            if (file_exists($tiny->config[\'assetsPath\'].\'jscripts/tiny_mce/langs/\'.$tiny->properties[\'language\'].\'.js\')) {\n                $modx->controller->addJavascript($tiny->config[\'assetsUrl\'].\'jscripts/tiny_mce/langs/\'.$tiny->properties[\'language\'].\'.js\');\n            } else {\n                $modx->controller->addJavascript($tiny->config[\'assetsUrl\'].\'jscripts/tiny_mce/langs/en.js\');\n            }\n            $modx->controller->addJavascript($tiny->config[\'assetsUrl\'].\'tiny.browser.js\');\n            $modx->event->output(\'Tiny.browserCallback\');\n        }\n        return \'\';\n        break;\n\n   default: break;\n}\nreturn;', 0, 'a:39:{s:22:\"accessibility_warnings\";a:7:{s:4:\"name\";s:22:\"accessibility_warnings\";s:4:\"desc\";s:315:\"If this option is set to true some accessibility warnings will be presented to the user if they miss specifying that information. This option is set to true by default, since we should all try to make this world a better place for disabled people. But if you are annoyed with the warnings, set this option to false.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:23:\"apply_source_formatting\";a:7:{s:4:\"name\";s:23:\"apply_source_formatting\";s:4:\"desc\";s:229:\"This option enables you to tell TinyMCE to apply some source formatting to the output HTML code. With source formatting, the output HTML code is indented and formatted. Without source formatting, the output HTML is more compact. \";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:15:\"button_tile_map\";a:7:{s:4:\"name\";s:15:\"button_tile_map\";s:4:\"desc\";s:338:\"If this option is set to true TinyMCE will use tiled images instead of individual images for most of the editor controls. This produces faster loading time since only one GIF image needs to be loaded instead of a GIF for each individual button. This option is set to false by default since it doesn\'t work with some DOCTYPE declarations. \";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:7:\"cleanup\";a:7:{s:4:\"name\";s:7:\"cleanup\";s:4:\"desc\";s:331:\"This option enables or disables the built-in clean up functionality. TinyMCE is equipped with powerful clean up functionality that enables you to specify what elements and attributes are allowed and how HTML contents should be generated. This option is set to true by default, but if you want to disable it you may set it to false.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:18:\"cleanup_on_startup\";a:7:{s:4:\"name\";s:18:\"cleanup_on_startup\";s:4:\"desc\";s:135:\"If you set this option to true, TinyMCE will perform a HTML cleanup call when the editor loads. This option is set to false by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:22:\"convert_fonts_to_spans\";a:7:{s:4:\"name\";s:22:\"convert_fonts_to_spans\";s:4:\"desc\";s:348:\"If you set this option to true, TinyMCE will convert all font elements to span elements and generate span elements instead of font elements. This option should be used in order to get more W3C compatible code, since font elements are deprecated. How sizes get converted can be controlled by the font_size_classes and font_size_style_values options.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:23:\"convert_newlines_to_brs\";a:7:{s:4:\"name\";s:23:\"convert_newlines_to_brs\";s:4:\"desc\";s:128:\"If you set this option to true, newline characters codes get converted into br elements. This option is set to false by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"convert_urls\";a:7:{s:4:\"name\";s:12:\"convert_urls\";s:4:\"desc\";s:495:\"This option enables you to control whether TinyMCE is to be clever and restore URLs to their original values. URLs are automatically converted (messed up) by default because the built-in browser logic works this way. There is no way to get the real URL unless you store it away. If you set this option to false it will try to keep these URLs intact. This option is set to true by default, which means URLs will be forced to be either absolute or relative depending on the state of relative_urls.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:11:\"dialog_type\";a:7:{s:4:\"name\";s:11:\"dialog_type\";s:4:\"desc\";s:246:\"This option enables you to specify how dialogs/popups should be opened. Possible values are \"window\" and \"modal\", where the window option opens a normal window and the dialog option opens a modal dialog. This option is set to \"window\" by default.\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{i:0;s:6:\"window\";s:4:\"text\";s:6:\"Window\";}i:1;a:2:{i:0;s:5:\"modal\";s:4:\"text\";s:5:\"Modal\";}}s:5:\"value\";s:6:\"window\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:14:\"directionality\";a:7:{s:4:\"name\";s:14:\"directionality\";s:4:\"desc\";s:261:\"This option specifies the default writing direction. Some languages (Like Hebrew, Arabic, Urdu...) write from right to left instead of left to right. The default value of this option is \"ltr\" but if you want to use from right to left mode specify \"rtl\" instead.\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"ltr\";s:4:\"text\";s:13:\"Left to Right\";}i:1;a:2:{s:5:\"value\";s:3:\"rtl\";s:4:\"text\";s:13:\"Right to Left\";}}s:5:\"value\";s:3:\"ltr\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:14:\"element_format\";a:7:{s:4:\"name\";s:14:\"element_format\";s:4:\"desc\";s:210:\"This option enables control if elements should be in html or xhtml mode. xhtml is the default state for this option. This means that for example &lt;br /&gt; will be &lt;br&gt; if you set this option to \"html\".\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:5:\"xhtml\";s:4:\"text\";s:5:\"XHTML\";}i:1;a:2:{s:5:\"value\";s:4:\"html\";s:4:\"text\";s:4:\"HTML\";}}s:5:\"value\";s:5:\"xhtml\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:15:\"entity_encoding\";a:7:{s:4:\"name\";s:15:\"entity_encoding\";s:4:\"desc\";s:70:\"This option controls how entities/characters get processed by TinyMCE.\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:4:\"None\";}i:1;a:2:{s:5:\"value\";s:5:\"named\";s:4:\"text\";s:5:\"Named\";}i:2;a:2:{s:5:\"value\";s:7:\"numeric\";s:4:\"text\";s:7:\"Numeric\";}i:3;a:2:{s:5:\"value\";s:3:\"raw\";s:4:\"text\";s:3:\"Raw\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:16:\"force_p_newlines\";a:7:{s:4:\"name\";s:16:\"force_p_newlines\";s:4:\"desc\";s:147:\"This option enables you to disable/enable the creation of paragraphs on return/enter in Mozilla/Firefox. The default value of this option is true. \";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:22:\"force_hex_style_colors\";a:7:{s:4:\"name\";s:22:\"force_hex_style_colors\";s:4:\"desc\";s:277:\"This option enables you to control TinyMCE to force the color format to use hexadecimal instead of rgb strings. It converts for example \"color: rgb(255, 255, 0)\" to \"#FFFF00\". This option is set to true by default since otherwice MSIE and Firefox would differ in this behavior.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:6:\"height\";a:7:{s:4:\"name\";s:6:\"height\";s:4:\"desc\";s:38:\"Sets the height of the TinyMCE editor.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"400px\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:11:\"indentation\";a:7:{s:4:\"name\";s:11:\"indentation\";s:4:\"desc\";s:139:\"This option allows specification of the indentation level for indent/outdent buttons in the UI. This defaults to 30px but can be any value.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:4:\"30px\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:16:\"invalid_elements\";a:7:{s:4:\"name\";s:16:\"invalid_elements\";s:4:\"desc\";s:163:\"This option should contain a comma separated list of element names to exclude from the content. Elements in this list will removed when TinyMCE executes a cleanup.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:6:\"nowrap\";a:7:{s:4:\"name\";s:6:\"nowrap\";s:4:\"desc\";s:212:\"This nowrap option enables you to control how whitespace is to be wordwrapped within the editor. This option is set to false by default, but if you enable it by setting it to true editor contents will never wrap.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:15:\"object_resizing\";a:7:{s:4:\"name\";s:15:\"object_resizing\";s:4:\"desc\";s:148:\"This option gives you the ability to turn on/off the inline resizing controls of tables and images in Firefox/Mozilla. These are enabled by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"path_options\";a:7:{s:4:\"name\";s:12:\"path_options\";s:4:\"desc\";s:119:\"Sets a group of options. Note: This will override the relative_urls, document_base_url and remove_script_host settings.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:3:{i:0;a:2:{s:5:\"value\";s:11:\"docrelative\";s:4:\"text\";s:17:\"Document Relative\";}i:1;a:2:{s:5:\"value\";s:12:\"rootrelative\";s:4:\"text\";s:13:\"Root Relative\";}i:2;a:2:{s:5:\"value\";s:11:\"fullpathurl\";s:4:\"text\";s:13:\"Full Path URL\";}}s:5:\"value\";s:11:\"docrelative\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:28:\"plugin_insertdate_dateFormat\";a:7:{s:4:\"name\";s:28:\"plugin_insertdate_dateFormat\";s:4:\"desc\";s:53:\"Formatting of dates when using the InsertDate plugin.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"%Y-%m-%d\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:28:\"plugin_insertdate_timeFormat\";a:7:{s:4:\"name\";s:28:\"plugin_insertdate_timeFormat\";s:4:\"desc\";s:53:\"Formatting of times when using the InsertDate plugin.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"%H:%M:%S\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"preformatted\";a:7:{s:4:\"name\";s:12:\"preformatted\";s:4:\"desc\";s:231:\"If you enable this feature, whitespace such as tabs and spaces will be preserved. Much like the behavior of a &lt;pre&gt; element. This can be handy when integrating TinyMCE with webmail clients. This option is disabled by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:13:\"relative_urls\";a:7:{s:4:\"name\";s:13:\"relative_urls\";s:4:\"desc\";s:231:\"If this option is set to true, all URLs returned from the file manager will be relative from the specified document_base_url. If it is set to false all URLs will be converted to absolute URLs. This option is set to true by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:17:\"remove_linebreaks\";a:7:{s:4:\"name\";s:17:\"remove_linebreaks\";s:4:\"desc\";s:531:\"This option controls whether line break characters should be removed from output HTML. This option is enabled by default because there are differences between browser implementations regarding what to do with white space in the DOM. Gecko and Safari place white space in text nodes in the DOM. IE and Opera remove them from the DOM and therefore the line breaks will automatically be removed in those. This option will normalize this behavior when enabled (true) and all browsers will have a white-space-stripped DOM serialization.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:18:\"remove_script_host\";a:7:{s:4:\"name\";s:18:\"remove_script_host\";s:4:\"desc\";s:221:\"If this option is enabled the protocol and host part of the URLs returned from the file manager will be removed. This option is only used if the relative_urls option is set to false. This option is set to true by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:20:\"remove_trailing_nbsp\";a:7:{s:4:\"name\";s:20:\"remove_trailing_nbsp\";s:4:\"desc\";s:392:\"This option enables you to specify that TinyMCE should remove any traling &nbsp; characters in block elements if you start to write inside them. Paragraphs are default padded with a &nbsp; and if you write text into such paragraphs the space will remain. Setting this option to true will remove the space. This option is set to false by default since the cursor jumps a bit in Gecko browsers.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:4:\"skin\";a:7:{s:4:\"name\";s:4:\"skin\";s:4:\"desc\";s:330:\"This option enables you to specify what skin you want to use with your theme. A skin is basically a CSS file that gets loaded from the skins directory inside the theme. The advanced theme that TinyMCE comes with has two skins, these are called \"default\" and \"o2k7\". We added another skin named \"cirkuit\" that is chosen by default.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:7:\"cirkuit\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"skin_variant\";a:7:{s:4:\"name\";s:12:\"skin_variant\";s:4:\"desc\";s:403:\"This option enables you to specify a variant for the skin, for example \"silver\" or \"black\". \"default\" skin does not offer any variant, whereas \"o2k7\" default offers \"silver\" or \"black\" variants to the default one. For the \"cirkuit\" skin there\'s one variant named \"silver\". When creating a skin, additional variants may also be created, by adding ui_[variant_name].css files alongside the default ui.css.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:20:\"table_inline_editing\";a:7:{s:4:\"name\";s:20:\"table_inline_editing\";s:4:\"desc\";s:231:\"This option gives you the ability to turn on/off the inline table editing controls in Firefox/Mozilla. According to the TinyMCE documentation, these controls are somewhat buggy and not redesignable, so they are disabled by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:22:\"theme_advanced_disable\";a:7:{s:4:\"name\";s:22:\"theme_advanced_disable\";s:4:\"desc\";s:111:\"This option should contain a comma separated list of controls to disable from any toolbar row/panel in TinyMCE.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:19:\"theme_advanced_path\";a:7:{s:4:\"name\";s:19:\"theme_advanced_path\";s:4:\"desc\";s:331:\"This option gives you the ability to enable/disable the element path. This option is only useful if the theme_advanced_statusbar_location option is set to \"top\" or \"bottom\". This option is set to \"true\" by default. Setting this option to \"false\" will effectively hide the path tool, though it still takes up room in the Status Bar.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:32:\"theme_advanced_resize_horizontal\";a:7:{s:4:\"name\";s:32:\"theme_advanced_resize_horizontal\";s:4:\"desc\";s:319:\"This option gives you the ability to enable/disable the horizontal resizing. This option is only useful if the theme_advanced_statusbar_location option is set to \"top\" or \"bottom\" and when the theme_advanced_resizing is set to true. This option is set to true by default, allowing both resizing horizontal and vertical.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:23:\"theme_advanced_resizing\";a:7:{s:4:\"name\";s:23:\"theme_advanced_resizing\";s:4:\"desc\";s:216:\"This option gives you the ability to enable/disable the resizing button. This option is only useful if the theme_advanced_statusbar_location option is set to \"top\" or \"bottom\". This option is set to false by default.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:33:\"theme_advanced_statusbar_location\";a:7:{s:4:\"name\";s:33:\"theme_advanced_statusbar_location\";s:4:\"desc\";s:257:\"This option enables you to specify where the element statusbar with the path and resize tool should be located. This option can be set to \"top\" or \"bottom\". The default value is set to \"top\". This option can only be used when the theme is set to \"advanced\".\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"top\";s:4:\"text\";s:3:\"Top\";}i:1;a:2:{s:5:\"value\";s:6:\"bottom\";s:4:\"text\";s:6:\"Bottom\";}}s:5:\"value\";s:6:\"bottom\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:28:\"theme_advanced_toolbar_align\";a:7:{s:4:\"name\";s:28:\"theme_advanced_toolbar_align\";s:4:\"desc\";s:187:\"This option enables you to specify the alignment of the toolbar, this value can be \"left\", \"right\" or \"center\" (the default). This option can only be used when theme is set to \"advanced\".\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:3:{i:0;a:2:{s:5:\"value\";s:6:\"center\";s:4:\"text\";s:6:\"Center\";}i:1;a:2:{s:5:\"value\";s:4:\"left\";s:4:\"text\";s:4:\"Left\";}i:2;a:2:{s:5:\"value\";s:5:\"right\";s:4:\"text\";s:5:\"Right\";}}s:5:\"value\";s:4:\"left\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:31:\"theme_advanced_toolbar_location\";a:7:{s:4:\"name\";s:31:\"theme_advanced_toolbar_location\";s:4:\"desc\";s:191:\"\nThis option enables you to specify where the toolbar should be located. This option can be set to \"top\" or \"bottom\" (the defualt). This option can only be used when theme is set to advanced.\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"top\";s:4:\"text\";s:3:\"Top\";}i:1;a:2:{s:5:\"value\";s:6:\"bottom\";s:4:\"text\";s:6:\"Bottom\";}}s:5:\"value\";s:3:\"top\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:5:\"width\";a:7:{s:4:\"name\";s:5:\"width\";s:4:\"desc\";s:32:\"The width of the TinyMCE editor.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"95%\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:33:\"template_selected_content_classes\";a:7:{s:4:\"name\";s:33:\"template_selected_content_classes\";s:4:\"desc\";s:234:\"Specify a list of CSS class names for the template plugin. They must be separated by spaces. Any template element with one of the specified CSS classes will have its content replaced by the selected editor content when first inserted.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}}', 0, '', 0, ''),
(2, 0, 0, 'Ace', 'Ace code editor plugin for MODx Revolution', 0, 0, 0, '', 0, NULL, 0, '', 1, 'ace/elements/plugins/ace.plugin.php');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_snippets`
--

DROP TABLE IF EXISTS `modx_site_snippets`;
CREATE TABLE `modx_site_snippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `moduleguid` (`moduleguid`),
  KEY `static` (`static`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES 
(1, 0, 0, 'getPage', '<b>1.2.4-pl</b> A generic wrapper snippet for returning paged results and navigation from snippets that return limitable collections.', 0, 0, 0, '/**\n * @package getpage\n */\n$output = \'\';\n\n$properties =& $scriptProperties;\n$properties[\'page\'] = (isset($_GET[$properties[\'pageVarKey\']]) && ($page = intval($_GET[$properties[\'pageVarKey\']]))) ? $page : null;\nif ($properties[\'page\'] === null) {\n    $properties[\'page\'] = (isset($_REQUEST[$properties[\'pageVarKey\']]) && ($page = intval($_REQUEST[$properties[\'pageVarKey\']]))) ? $page : 1;\n}\n$properties[\'limit\'] = (isset($_GET[\'limit\'])) ? intval($_GET[\'limit\']) : null;\nif ($properties[\'limit\'] === null) {\n    $properties[\'limit\'] = (isset($_REQUEST[\'limit\'])) ? intval($_REQUEST[\'limit\']) : intval($limit);\n}\n$properties[\'offset\'] = (!empty($properties[\'limit\']) && !empty($properties[\'page\'])) ? ($properties[\'limit\'] * ($properties[\'page\'] - 1)) : 0;\n$properties[\'totalVar\'] = empty($totalVar) ? \"total\" : $totalVar;\n$properties[$properties[\'totalVar\']] = !empty($properties[$properties[\'totalVar\']]) && $total = intval($properties[$properties[\'totalVar\']]) ? $total : 0;\n$properties[\'pageOneLimit\'] = (!empty($pageOneLimit) && $pageOneLimit = intval($pageOneLimit)) ? $pageOneLimit : $properties[\'limit\'];\n$properties[\'actualLimit\'] = $properties[\'limit\'];\n$properties[\'pageLimit\'] = isset($pageLimit) && is_numeric($pageLimit) ? intval($pageLimit) : 5;\n$properties[\'element\'] = empty($element) ? \'\' : $element;\n$properties[\'elementClass\'] = empty($elementClass) ? \'modChunk\' : $elementClass;\n$properties[\'pageNavVar\'] = empty($pageNavVar) ? \'page.nav\' : $pageNavVar;\n$properties[\'pageNavTpl\'] = !isset($pageNavTpl) ? \"<li[[+classes]]><a[[+classes]][[+title]] href=\\\"[[+href]]\\\">[[+pageNo]]</a></li>\" : $pageNavTpl;\n$properties[\'pageNavOuterTpl\'] = !isset($pageNavOuterTpl) ? \"[[+first]][[+prev]][[+pages]][[+next]][[+last]]\" : $pageNavOuterTpl;\n$properties[\'pageActiveTpl\'] = !isset($pageActiveTpl) ? \"<li[[+activeClasses:default=` class=\\\"active\\\"`]]><a[[+activeClasses:default=` class=\\\"active\\\"`]][[+title]] href=\\\"[[+href]]\\\">[[+pageNo]]</a></li>\" : $pageActiveTpl;\n$properties[\'pageFirstTpl\'] = !isset($pageFirstTpl) ? \"<li class=\\\"control\\\"><a[[+title]] href=\\\"[[+href]]\\\">First</a></li>\" : $pageFirstTpl;\n$properties[\'pageLastTpl\'] = !isset($pageLastTpl) ? \"<li class=\\\"control\\\"><a[[+title]] href=\\\"[[+href]]\\\">Last</a></li>\" : $pageLastTpl;\n$properties[\'pagePrevTpl\'] = !isset($pagePrevTpl) ? \"<li class=\\\"control\\\"><a[[+title]] href=\\\"[[+href]]\\\">&lt;&lt;</a></li>\" : $pagePrevTpl;\n$properties[\'pageNextTpl\'] = !isset($pageNextTpl) ? \"<li class=\\\"control\\\"><a[[+title]] href=\\\"[[+href]]\\\">&gt;&gt;</a></li>\" : $pageNextTpl;\n$properties[\'toPlaceholder\'] = !empty($toPlaceholder) ? $toPlaceholder : \'\';\n$properties[\'cache\'] = isset($cache) ? (boolean) $cache : (boolean) $modx->getOption(\'cache_resource\', null, false);\nif (empty($cache_key)) $properties[xPDO::OPT_CACHE_KEY] = $modx->getOption(\'cache_resource_key\', null, \'resource\');\nif (empty($cache_handler)) $properties[xPDO::OPT_CACHE_HANDLER] = $modx->getOption(\'cache_resource_handler\', null, \'xPDOFileCache\');\nif (empty($cache_expires)) $properties[xPDO::OPT_CACHE_EXPIRES] = (integer) $modx->getOption(\'cache_resource_expires\', null, 0);\n\nif ($properties[\'page\'] == 1 && $properties[\'pageOneLimit\'] !== $properties[\'actualLimit\']) {\n    $properties[\'limit\'] = $properties[\'pageOneLimit\'];\n}\n\nif ($properties[\'cache\']) {\n    $properties[\'cachePageKey\'] = $modx->resource->getCacheKey() . \'/\' . $properties[\'page\'] . \'/\' . md5(http_build_query($modx->request->getParameters()) . http_build_query($scriptProperties));\n    $properties[\'cacheOptions\'] = array(\n        xPDO::OPT_CACHE_KEY => $properties[xPDO::OPT_CACHE_KEY],\n        xPDO::OPT_CACHE_HANDLER => $properties[xPDO::OPT_CACHE_HANDLER],\n        xPDO::OPT_CACHE_EXPIRES => $properties[xPDO::OPT_CACHE_EXPIRES],\n    );\n}\n$cached = false;\nif ($properties[\'cache\']) {\n    if ($modx->getCacheManager()) {\n        $cached = $modx->cacheManager->get($properties[\'cachePageKey\'], $properties[\'cacheOptions\']);\n    }\n}\nif (empty($cached) || !isset($cached[\'properties\']) || !isset($cached[\'output\'])) {\n    $elementObj = $modx->getObject($properties[\'elementClass\'], array(\'name\' => $properties[\'element\']));\n    if ($elementObj) {\n        $elementObj->setCacheable(false);\n        if (!empty($properties[\'toPlaceholder\'])) {\n            $elementObj->process($properties);\n            $output = $modx->getPlaceholder($properties[\'toPlaceholder\']);\n        } else {\n            $output = $elementObj->process($properties);\n        }\n    }\n\n    include_once $modx->getOption(\'getpage.core_path\',$properties,$modx->getOption(\'core_path\', $properties, MODX_CORE_PATH) . \'components/getpage/\').\'include.getpage.php\';\n\n    $qs = $modx->request->getParameters();\n    $properties[\'qs\'] =& $qs;\n\n    $totalSet = $modx->getPlaceholder($properties[\'totalVar\']);\n    $properties[$properties[\'totalVar\']] = (($totalSet = intval($totalSet)) ? $totalSet : $properties[$properties[\'totalVar\']]);\n    if (!empty($properties[$properties[\'totalVar\']]) && !empty($properties[\'actualLimit\'])) {\n        if ($properties[\'pageOneLimit\'] !== $properties[\'actualLimit\']) {\n            $adjustedTotal = $properties[$properties[\'totalVar\']] - $properties[\'pageOneLimit\'];\n            $properties[\'pageCount\'] = $adjustedTotal > 0 ? ceil($adjustedTotal / $properties[\'actualLimit\']) + 1 : 1;\n        } else {\n            $properties[\'pageCount\'] = ceil($properties[$properties[\'totalVar\']] / $properties[\'actualLimit\']);\n        }\n    } else {\n        $properties[\'pageCount\'] = 1;\n    }\n    if (empty($properties[$properties[\'totalVar\']]) || empty($properties[\'actualLimit\']) || $properties[$properties[\'totalVar\']] <= $properties[\'actualLimit\'] || ($properties[\'page\'] == 1 && $properties[$properties[\'totalVar\']] <= $properties[\'pageOneLimit\'])) {\n        $properties[\'page\'] = 1;\n    } else {\n        $pageNav = getpage_buildControls($modx, $properties);\n        $properties[$properties[\'pageNavVar\']] = $modx->newObject(\'modChunk\')->process(array_merge($properties, $pageNav), $properties[\'pageNavOuterTpl\']);\n        if ($properties[\'page\'] > 1) {\n            $qs[$properties[\'pageVarKey\']] = $properties[\'page\'];\n        }\n    }\n\n    $properties[\'firstItem\'] = $properties[\'offset\'] + 1;\n    $properties[\'lastItem\'] = ($properties[\'offset\'] + $properties[\'limit\']) < $totalSet ? ($properties[\'offset\'] + $properties[\'limit\']) : $totalSet;\n\n    $properties[\'pageUrl\'] = $modx->makeUrl($modx->resource->get(\'id\'), \'\', $qs);\n    if ($properties[\'cache\'] && $modx->getCacheManager()) {\n        $cached = array(\'properties\' => $properties, \'output\' => $output);\n        $modx->cacheManager->set($properties[\'cachePageKey\'], $cached, $properties[xPDO::OPT_CACHE_EXPIRES], $properties[\'cacheOptions\']);\n    }\n} else {\n    $properties = $cached[\'properties\'];\n    $output = $cached[\'output\'];\n}\n$modx->setPlaceholders($properties, $properties[\'namespace\']);\nif (!empty($properties[\'toPlaceholder\'])) {\n    $modx->setPlaceholder($properties[\'toPlaceholder\'], $output);\n    $output = \'\';\n}\n\nreturn $output;', 0, 'a:21:{s:9:\"namespace\";a:7:{s:4:\"name\";s:9:\"namespace\";s:4:\"desc\";s:114:\"An execution namespace that serves as a prefix for placeholders set by a specific instance of the getPage snippet.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:62:\"The result limit per page; can be overridden in the $_REQUEST.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"10\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:171:\"The offset, or record position to start at within the collection for rendering results for the current page; should be calculated based on page variable set in pageVarKey.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:4:\"page\";a:7:{s:4:\"name\";s:4:\"page\";s:4:\"desc\";s:136:\"The page to display; this is determined based on the value indicated by the page variable set in pageVarKey, typically in the $_REQUEST.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:54:\"The key of a property that indicates the current page.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:101:\"The key of a placeholder that must contain the total records in the limitable collection being paged.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:9:\"pageLimit\";a:7:{s:4:\"name\";s:9:\"pageLimit\";s:4:\"desc\";s:69:\"The maximum number of pages to display when rendering paging controls\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"5\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"elementClass\";a:7:{s:4:\"name\";s:12:\"elementClass\";s:4:\"desc\";s:73:\"The class of element that will be called by the getPage snippet instance.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:10:\"modSnippet\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:10:\"pageNavVar\";a:7:{s:4:\"name\";s:10:\"pageNavVar\";s:4:\"desc\";s:71:\"The key of a placeholder to be set with the paging navigation controls.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"page.nav\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:10:\"pageNavTpl\";a:7:{s:4:\"name\";s:10:\"pageNavTpl\";s:4:\"desc\";s:54:\"Content representing a single page navigation control.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:78:\"<li[[+classes]]><a[[+classes]][[+title]] href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:15:\"pageNavOuterTpl\";a:7:{s:4:\"name\";s:15:\"pageNavOuterTpl\";s:4:\"desc\";s:64:\"Content representing the layout of the page navigation controls.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:47:\"[[+first]][[+prev]][[+pages]][[+next]][[+last]]\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:13:\"pageActiveTpl\";a:7:{s:4:\"name\";s:13:\"pageActiveTpl\";s:4:\"desc\";s:57:\"Content representing the current page navigation control.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:116:\"<li[[+activeClasses]]><a[[+activeClasses:default=` class=\"active\"`]][[+title]] href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"pageFirstTpl\";a:7:{s:4:\"name\";s:12:\"pageFirstTpl\";s:4:\"desc\";s:55:\"Content representing the first page navigation control.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:76:\"<li class=\"control\"><a[[+classes]][[+title]] href=\"[[+href]]\">First</a></li>\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:11:\"pageLastTpl\";a:7:{s:4:\"name\";s:11:\"pageLastTpl\";s:4:\"desc\";s:54:\"Content representing the last page navigation control.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:75:\"<li class=\"control\"><a[[+classes]][[+title]] href=\"[[+href]]\">Last</a></li>\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:11:\"pagePrevTpl\";a:7:{s:4:\"name\";s:11:\"pagePrevTpl\";s:4:\"desc\";s:58:\"Content representing the previous page navigation control.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:79:\"<li class=\"control\"><a[[+classes]][[+title]] href=\"[[+href]]\">&lt;&lt;</a></li>\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:11:\"pageNextTpl\";a:7:{s:4:\"name\";s:11:\"pageNextTpl\";s:4:\"desc\";s:54:\"Content representing the next page navigation control.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:79:\"<li class=\"control\"><a[[+classes]][[+title]] href=\"[[+href]]\">&gt;&gt;</a></li>\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:84:\"If true, unique page requests will be cached according to addition cache properties.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:9:\"cache_key\";a:7:{s:4:\"name\";s:9:\"cache_key\";s:4:\"desc\";s:120:\"The key of the cache provider to use; leave empty to use the cache_resource_key cache partition (default is \"resource\").\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:13:\"cache_handler\";a:7:{s:4:\"name\";s:13:\"cache_handler\";s:4:\"desc\";s:99:\"The cache provider implementation to use; leave empty unless you are caching to a custom cache_key.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:13:\"cache_expires\";a:7:{s:4:\"name\";s:13:\"cache_expires\";s:4:\"desc\";s:141:\"The number of seconds before the cached pages expire and must be regenerated; leave empty to use the cache provider option for cache_expires.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:13:\"pageNavScheme\";a:7:{s:4:\"name\";s:13:\"pageNavScheme\";s:4:\"desc\";s:145:\"Optionally specify a scheme for use when generating page navigation links; will use link_tag_scheme if empty or not specified (default is empty).\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}}', '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_templates`
--

DROP TABLE IF EXISTS `modx_site_templates`;
CREATE TABLE `modx_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `templatename` (`templatename`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES 
(1, 0, 0, 'Начальный шаблон', 'Template', 0, 0, '', 0, '<html>\n<head>\n<title>[[++site_name]] - [[*pagetitle]]</title>\n<base href=\"[[++site_url]]\" />\n</head>\n<body>\n[[*content]]\n</body>\n</html>', 0, NULL, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_access`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_access`;
CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tmplvar_template` (`tmplvarid`,`documentgroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_contentvalues`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_contentvalues`;
CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tmplvarid` (`tmplvarid`),
  KEY `contentid` (`contentid`),
  KEY `tv_cnt` (`tmplvarid`,`contentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_templates`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_templates`;
CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvars`
--

DROP TABLE IF EXISTS `modx_site_tmplvars`;
CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `rank` (`rank`),
  KEY `static` (`static`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_eventnames`
--

DROP TABLE IF EXISTS `modx_system_eventnames`;
CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES 
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnTempFormDelete', 1, 'Templates'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnEmptyTrash', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnBeforeWebLogin', 3, 'Security'),
('OnWebAuthentication', 3, 'Security'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnPageUnauthorized', 1, 'Security'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserNotFound', 1, 'Users'),
('OnBeforeUserActivate', 1, 'Users'),
('OnUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserSave', 1, 'Users'),
('OnUserRemove', 1, 'Users'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnWebPagePrerender', 5, 'System'),
('OnBeforeCacheUpdate', 4, 'System'),
('OnCacheUpdate', 4, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnSiteRefresh', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageAfterRender', 2, 'System'),
('OnWebPageInit', 5, 'System'),
('OnLoadWebDocument', 5, 'System'),
('OnParseDocument', 5, 'System'),
('OnWebPageComplete', 5, 'System'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnPageNotFound', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnMODXInit', 5, 'System'),
('OnElementNotFound', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnInitCulture', 1, 'Internationalization'),
('OnCategorySave', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnChunkSave', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnContextSave', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnPluginSave', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_settings`
--

DROP TABLE IF EXISTS `modx_system_settings`;
CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES 
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('archive_with', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('base_help_url', '//rtfm.modx.com/display/revolution20/', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_default', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_disabled', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_format', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_system_settings', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('compress_css', '0', 'combo-boolean', 'core', 'manager', '2015-12-26 04:00:59'),
('compress_js', '0', 'combo-boolean', 'core', 'manager', '2015-12-26 04:00:59'),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('compress_js_groups', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('container_suffix', '/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('context_tree_sort', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('cultureKey', 'ru', 'modx-combo-language', 'core', 'language', '2015-12-26 04:00:59'),
('date_timezone', '', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('debug', '', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', '0000-00-00 00:00:00'),
('default_per_page', '20', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('default_context', 'web', 'modx-combo-context', 'core', 'site', '0000-00-00 00:00:00'),
('default_template', '1', 'modx-combo-template', 'core', 'site', '0000-00-00 00:00:00'),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', '0000-00-00 00:00:00'),
('editor_css_path', '', 'textfield', 'core', 'editor', '0000-00-00 00:00:00'),
('editor_css_selectors', '', 'textfield', 'core', 'editor', '0000-00-00 00:00:00'),
('emailsender', 'mr-lexus@bk.ru', 'textfield', 'core', 'authentication', '2015-12-26 04:00:59'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('error_page', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', '0000-00-00 00:00:00'),
('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_security', 'http://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('filemanager_path', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_url', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_realtime', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_urls', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_urls_strict', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('use_frozen_parent_uris', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('inline_help', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('locale', '', 'textfield', 'core', 'language', '0000-00-00 00:00:00'),
('log_level', '1', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('log_target', 'FILE', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('lock_ttl', '360', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_user', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_favicon_url', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_html5_cache', '0', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_document_root', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_direction', 'ltr', 'textfield', 'core', 'language', '0000-00-00 00:00:00'),
('manager_lang_attribute', 'ru', 'textfield', 'core', 'language', '2015-12-26 04:00:59'),
('manager_language', 'ru', 'modx-combo-language', 'core', 'language', '2015-12-26 04:00:59'),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_week_start', '0', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('modx_browser_tree_hide_files', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', '0000-00-00 00:00:00'),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_host', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_password', '', 'text-password', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_port', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_username', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('password_generated_length', '8', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('password_min_length', '8', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('publish_default', '', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('rb_base_dir', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('rb_base_url', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', '0000-00-00 00:00:00'),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('request_param_id', 'id', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('search_default', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('server_offset_time', '0', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('server_protocol', 'http', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('session_cookie_domain', '', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('default_username', '(anonymous)', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_path', '', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', '0000-00-00 00:00:00'),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_name', '', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('set_header', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('site_start', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('site_status', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('site_unavailable_page', '0', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('tree_root_id', '0', 'numberfield', 'core', 'manager', '0000-00-00 00:00:00'),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('unauthorized_page', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,htaccess,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,odt,ods,odp,odb,odg,odf,md,ttf,woff,eot', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_maxsize', '26214400', 'textfield', 'core', 'file', '2015-12-26 04:00:59'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('use_alias_path', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('use_browser', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('use_editor', '1', 'combo-boolean', 'core', 'editor', '0000-00-00 00:00:00'),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2015-12-26 04:00:59'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2015-12-26 04:01:15'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.24.html ', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('which_editor', 'TinyMCE', 'modx-combo-rte', 'core', 'editor', '2015-12-26 04:55:48'),
('which_element_editor', 'Ace', 'modx-combo-rte', 'core', 'editor', '2015-12-26 04:56:01'),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('settings_version', '2.4.2-pl', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('settings_distro', 'traditional', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('tiny.base_url', '', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.convert_fonts_to_spans', '1', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.convert_newlines_to_brs', '', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.css_selectors', '', 'textfield', 'tinymce', 'advanced-theme', '0000-00-00 00:00:00'),
('tiny.custom_buttons1', 'undo,redo,selectall,separator,pastetext,pasteword,separator,search,replace,separator,nonbreaking,hr,charmap,separator,image,modxlink,unlink,anchor,media,separator,cleanup,removeformat,separator,fullscreen,print,code,help', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_buttons2', 'bold,italic,underline,strikethrough,sub,sup,separator,bullist,numlist,outdent,indent,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,separator,styleprops', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_buttons3', '', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_buttons4', '', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_buttons5', '', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_plugins', 'style,advimage,advlink,modxlink,searchreplace,print,contextmenu,paste,fullscreen,noneditable,nonbreaking,xhtmlxtras,visualchars,media', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.editor_theme', 'advanced', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.element_format', 'xhtml', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.entity_encoding', 'named', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.fix_nesting', '', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.fix_table_elements', '', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.font_size_classes', '', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.font_size_style_values', 'xx-small,x-small,small,medium,large,x-large,xx-large', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.forced_root_block', 'p', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.indentation', '30px', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.invalid_elements', '', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.nowrap', '', 'combo-boolean', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.object_resizing', '1', 'combo-boolean', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.path_options', '', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.remove_linebreaks', '', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.remove_redundant_brs', '1', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.removeformat_selector', 'b,strong,em,i,span,ins', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.skin', 'cirkuit', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.skin_variant', '', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.table_inline_editing', '', 'combo-boolean', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.template_list', '', 'textarea', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.template_list_snippet', '', 'textarea', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.template_selected_content_classes', '', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.theme_advanced_blockformats', 'p,h1,h2,h3,h4,h5,h6,div,blockquote,code,pre,address', 'textfield', 'tinymce', 'advanced-theme', '0000-00-00 00:00:00'),
('tiny.theme_advanced_font_sizes', '80%,90%,100%,120%,140%,160%,180%,220%,260%,320%,400%,500%,700%', 'textfield', 'tinymce', 'advanced-theme', '0000-00-00 00:00:00'),
('tiny.use_uncompressed_library', '', 'combo-boolean', 'tinymce', 'general', '0000-00-00 00:00:00'),
('ace.theme', 'chrome', 'textfield', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.font_size', '13px', 'textfield', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.word_wrap', '', 'combo-boolean', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.soft_tabs', '1', 'combo-boolean', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.tab_size', '4', 'textfield', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.fold_widgets', '1', 'combo-boolean', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.show_invisibles', '0', 'combo-boolean', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.snippets', '', 'textarea', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.height', '', 'textfield', 'ace', 'general', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_packages`
--

DROP TABLE IF EXISTS `modx_transport_packages`;
CREATE TABLE `modx_transport_packages` (
  `signature` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `workspace` int(10) unsigned NOT NULL DEFAULT '0',
  `provider` int(10) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(255) NOT NULL,
  `metadata` text,
  `version_major` smallint(5) unsigned NOT NULL DEFAULT '0',
  `version_minor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `version_patch` smallint(5) unsigned NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`signature`),
  KEY `workspace` (`workspace`),
  KEY `provider` (`provider`),
  KEY `disabled` (`disabled`),
  KEY `package_name` (`package_name`),
  KEY `version_major` (`version_major`),
  KEY `version_minor` (`version_minor`),
  KEY `version_patch` (`version_patch`),
  KEY `release` (`release`),
  KEY `release_index` (`release_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_transport_packages`
--

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES 
('ace-1.6.4-pl', '2015-12-26 04:51:49', '2015-12-26 04:56:01', '2015-12-26 04:56:01', 0, 1, 1, 0, 'ace-1.6.4-pl.transport.zip', NULL, 'a:34:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:271:\"--------------------\nExtra: Ace\n--------------------\nSince: March 29th, 2012\nAuthor: Danil Kostin <danya.postfactum@gmail.com>\nLicense: GNU GPLv2 (or later at your option)\n\nIntegrates Ace Code Editor into MODx Revolution.\n\nPress Ctrl+Alt+H to see all available shortcuts.\";s:9:\"changelog\";s:3624:\"Changelog for Ace integration into MODx Revolution.\n\nAce 1.6.4\n====================================\n- Fixed: Support of emmet in smarty mode. Again.\n\nAce 1.6.3\n====================================\n- Fixed: Support of emmet in smarty mode.\n\nAce 1.6.2\n====================================\n- Fixed: Editor mode handling.\n- Added: \"Markdown\" syntax for mime type \"text/x-markdown\".\n\nAce 1.6.1\n====================================\n- Fixed : Work with enabled system setting \"compress_js\".\n\nAce 1.6.0\n====================================\n- Added: \"Smarty\" syntax for support of Fenom in chunks.\n- Updated: Ace to version 1.2.0.\n\nAce 1.5.1\n====================================\n- Fixed: Bug with narrowing of the textarea.\n\nAce 1.5.0\n====================================\n- Changed: Assets are moved back to /assets/\n- Fixed: MODx tag completions (was completely broken)\n- Added: Editor height setting\n\nAce 1.4.3\n====================================\n- Added: MODx tag completions (Ctrl+Space)\n- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag\'n\'drop bug\n\nAce 1.4.2\n====================================\n- Added: Undo coalescing\n- Changed: Mac fullscreen command is bound to Command+F12\n- Added: Drag delay (allow to start new selection inside current one) for Mac\n- Fixed: Use file extension of static chunks to detect code syntax\n\n\nAce 1.4.1\n====================================\n- Fixed: Tab handling\n- Fixed: Emmet shortcut listing by Ctr+Alt+H\n- Added: Expandable snippets support (see ace.snippets setting)\n- Added: Emmet wrap_with_abbreviation command (Alt+W)\n\nAce 1.4.0\n====================================\n- Added: Emmet (aka Zen Coding) support\n- Added: Terminal dark theme\n- Added: Hotkey table (Ctrl+Alt+H)\n- Fixed: Resource overview fatal error\n- Changed: Assets are moved to /manager/assets/components/\n\nAce 1.3.3\n====================================\n- Added: PHP live syntax check\n- Added: Chaos dark theme\n- Added: Setting show_invisibles\n\n\nAce 1.3.2\n====================================\n- Fixed: The bug while installing the Ace\n- Fixed: Broken word_wrap setting\n- Added: Tab settings (tab size, soft tab)\n- Added: Now completele compatible with AjaxManager extra\n\n\nAce 1.3.1\n====================================\n- Changed: Plugin content now is stored in static file\n\n\nAce 1.3.0\n====================================\n- Added: German translation\n- Added: MODx tags highlighting\n- Added: Ambiance and xcode themes\n- Added: less/scss syntax highlighting\n- Added: Fullwindow mode (Ctrl + F11)\n- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.\n\n\nAce 1.2.1\n====================================\n- Changed: Assets are moved to manager folder\n- Added: Font size setting\n- Added: \"GitHub\" theme\n- Added: Support of html5 drag\'n\'drop (accepting of dropped text)\n- Added: XML / HTML tag autoclosing\n- Fixed: broken en lexicon and php 5.3 incompatibility\n\n\nAce 1.2.0\n====================================\n- Removed: Some unnecessary options\n- Changed: Editor options are moved to system settings\n- Fixed: Multiple little editor bugs\n- Added: Add missing \"OnFileEditFormPrerender\" event to MODx\n- Added: Multiline editing\n- Added: Advanced find/replace window\n\n\nAce 1.1.0\n====================================\n- Fixed: Fatal error on document create event\n- Fixed: Changing of properties has no effect\n- Added: File edition support\n- Added: MODx tree elements drag\'n\'drop support\n- Added: Auto-assigning which_element_editor to Ace\n\n\nAce 1.0.0\n====================================\n- Added: Plugin properties to adjust how Ace behaves\n- Initial commit\";s:9:\"signature\";s:12:\"ace-1.6.4-pl\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:20:\"Продолжить\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:1749:\"function (va){\n        var r;\n        var g = Ext.getCmp(\'modx-package-grid\');\n        if (!g) return false;\n        \n        if (va.signature != undefined && va.signature != \'\') {\n            r = {signature: va.signature};\n        } else {\n            r = g.menu.record.data ? g.menu.record.data : g.menu.record;\n        }\n\t\tvar topic = \'/workspace/package/install/\'+r.signature+\'/\';\n        g.loadConsole(Ext.getBody(),topic);\n\n\t\tva = va || {};\n        Ext.apply(va,{\n            action: \'workspace/packages/install\'\n            ,signature: r.signature\n            ,register: \'mgr\'\n            ,topic: topic\n        });\n\n        MODx.Ajax.request({\n            url: MODx.config.connector_url\n            ,params: va\n            ,listeners: {\n                \'success\': {fn:function() {\n                    var bc = Ext.getCmp(\'packages-breadcrumbs\');\n                    var trail= bc.data.trail;\n                    trail.pop();\n\n                    if (trail.length > 1) {\n                        last = trail[trail.length - 1];\n\n                        if (last != undefined && last.rec != undefined) {\n                            bc.data.trail.pop();\n                            bc.data.trail.shift();\n                            bc.updateDetail(bc.data);\n\n                            var grid = Ext.getCmp(\'modx-package-grid\');\n                            grid.install(last.rec);\n                            return;\n                        }\n                    }\n\n                    this.activate();\n\t\t\t\t\tExt.getCmp(\'modx-package-grid\').refresh();\n                },scope:this}\n                ,\'failure\': {fn:function() {\n                    this.activate();\n                },scope:this}\n            }\n        });\n\n        return true;\n\t}\";s:8:\"disabled\";s:5:\"false\";s:5:\"scope\";s:15:\"[object Object]\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:8:\"lastSize\";s:15:\"[object Object]\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:40:\"/workspace/package/install/ace-1.6.4-pl/\";s:14:\"package_action\";i:0;}', 'Ace', 'a:38:{s:2:\"id\";s:24:\"55e1ecc4dc532f077202b66b\";s:7:\"package\";s:24:\"4f6e2782f245544fe8000014\";s:12:\"display_name\";s:12:\"ace-1.6.4-pl\";s:4:\"name\";s:3:\"Ace\";s:7:\"version\";s:5:\"1.6.4\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"6\";s:13:\"version_patch\";s:1:\"4\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:9:\"bezumkin2\";s:11:\"description\";s:376:\"<p>New feature: modx tag code autocompletion! Press Ctrl+Space to get code suggestions with descriptions.</p><p>Works for snippets, chunks, system settings, tvs and resource fields, filters and properties.</p><p>Property sets, lexicon entries are not supported. Unfortunately, I have no idea how to retrieve chunk-specific placeholders, so there is no placeholder support.</p>\";s:12:\"instructions\";s:353:\"<p></p><p>Install via Package Management.</p><p>Set editor theme you wish in system settings (change namespace to \"ace\").</p><p>If you want to use this editor for resources, just set system option <i>use_editor</i> to <b>false</b>&nbsp;(global usage), or&nbsp;<i>richtext</i>&nbsp;setting of certain resource to <b>false</b> (specific usage).</p><p></p>\";s:9:\"changelog\";s:4296:\"<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>Ace 1.6.4</p><p>====================================</p><p>- Fixed: Support of emmet in smarty mode. Again.</p><p>Ace 1.6.3</p><p>====================================</p><p>- Fixed: Support of emmet in smarty mode.</p><p></p><p>Ace 1.6.2</p><p>====================================</p><p>- Fixed: Editor mode handling.</p><p>- Added: \"Markdown\" syntax for mime type \"text/x-markdown\".</p><p></p><p>Ace 1.6.1</p><p>====================================</p><p>- Fixed : Work with enabled system setting \"compress_js\".</p><p></p><p>Ace 1.6.0</p><p>====================================</p><p>- Added: \"Smarty\" syntax for support of Fenom in chunks.</p><p>- Updated: Ace to version 1.2.0.</p><p></p><p>Ace 1.5.1</p><p>====================================</p><p>- Fixed: Bug with narrowing of the textarea.</p><p>Ace 1.5.0</p><p>====================================</p><p>- Changed: Assets are moved back to /assets/</p><p>- Fixed: MODx tag completions (was completely broken)</p><p>- Added: Editor height setting</p><p>Ace 1.4.3</p><p>====================================</p><p>- Added: MODx tag completions (Ctrl+Space)</p><p>- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag\'n\'drop bug</p><p>Ace 1.4.2</p><p>====================================</p><p>- Added: Undo coalescing</p><p>- Changed: Mac fullscreen command is bound to Command+F12</p><p>- Added: Drag delay (allow to start new selection inside current one) for Mac</p><p>- Fixed: Use file extension of static chunks to detect code syntax</p><p>Ace 1.4.1</p><p>====================================</p><p>- Fixed: Tab handling</p><p>- Fixed: Emmet shortcut listing by Ctr+Alt+H</p><p>- Added: Expandable snippets support (see ace.snippets setting)</p><p>- Added: Emmet wrap_with_abbreviation command (Alt+W)</p><p></p><p>Ace 1.4.0</p><p>====================================</p><p>- Added: Emmet (aka Zen Coding) support</p><p>- Added: Terminal dark theme</p><p>- Added: Hotkey table (Ctrl+Alt+H)</p><p>- Fixed: Resource overview fatal error</p><p>- Changed: Assets are moved to /manager/assets/components/</p><p></p><p>Ace 1.3.3</p><p>====================================</p><p>- Added: PHP live syntax check</p><p>- Added: Chaos dark theme</p><p>- Added: Setting show_invisibles</p><p></p><p>Ace 1.3.2</p><p>====================================</p><p>- Fixed: The bug while installing the Ace</p><p>- Fixed: Broken word_wrap setting</p><p>- Added: Tab settings (tab size, soft tab)</p><p>- Added: Now completele compatible with AjaxManager extra</p><p>Ace 1.3.1</p><p>====================================</p><p>- Changed: Plugin content now is stored in static file</p><p></p><p>Ace 1.3.0</p><p>====================================</p><p>- Added: German translation</p><p>- Added: MODx tags highlighting</p><p>- Added: Ambiance and xcode themes</p><p>- Added: less/scss syntax highlighting</p><p>- Added: Fullwindow mode (Ctrl + F11)</p><p>- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.</p><p></p><p>Ace 1.2.1</p><p>====================================</p><p>- Changed: Assets are moved to manager folder</p><p>- Added: Font size setting</p><p>- Added: \"GitHub\" theme</p><p>- Added: Support of html5 drag\'n\'drop (accepting of dropped text)</p><p>- Added: XML / HTML tag autoclosing</p><p>- Fixed: broken en lexicon and php 5.3 incompatibility</p><p></p><p>Ace 1.2.0</p><p>====================================</p><p>- Removed: Some unnecessary options</p><p>- Changed: Editor options are moved to system settings</p><p>- Fixed: Multiple little editor bugs</p><p>- Added: Add missing \"OnFileEditFormPrerender\" event to MODx</p><p>- Added: Multiline editing</p><p>- Added: Advanced find/replace window</p><p></p><p></p><p>Ace 1.1.0</p><p>====================================</p><p>- Fixed: Fatal error on document create event</p><p>- Fixed: Changing of properties has no effect</p><p>- Added: File edition support</p><p>- Added: MODx tree elements drag\'n\'drop support</p><p>- Added: Auto-assigning which_element_editor to Ace</p><p></p><p></p><p>Ace 1.0.0</p><p>====================================</p><p>- Added: Plugin properties to adjust how Ace behaves</p><p>- Initial commit</p><p></p><p></p>\";s:9:\"createdon\";s:24:\"2015-08-29T17:32:52+0000\";s:9:\"createdby\";s:9:\"bezumkin2\";s:8:\"editedon\";s:24:\"2015-12-26T01:14:55+0000\";s:10:\"releasedon\";s:24:\"2015-08-29T17:32:52+0000\";s:9:\"downloads\";s:5:\"94334\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=55e1ecc6dc532f077202b66d\";s:9:\"signature\";s:12:\"ace-1.6.4-pl\";s:11:\"supports_db\";s:12:\"mysql,sqlsrv\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:68:\"http://modx.s3.amazonaws.com/extras/4f6e2782f245544fe8000014/ace.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"55e1ecc6dc532f077202b66d\";s:7:\"version\";s:24:\"55e1ecc4dc532f077202b66b\";s:8:\"filename\";s:26:\"ace-1.6.4-pl.transport.zip\";s:9:\"downloads\";s:5:\"15878\";s:6:\"lastip\";s:12:\"66.249.65.24\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=55e1ecc6dc532f077202b66d\";}s:17:\"package-signature\";s:12:\"ace-1.6.4-pl\";s:10:\"categories\";s:15:\"richtexteditors\";s:4:\"tags\";s:0:\"\";}', 1, 6, 4, 'pl', 0),
('getpage-1.2.4-pl', '2015-12-26 04:52:06', '2015-12-26 04:55:54', '2015-12-26 04:55:54', 0, 1, 1, 0, 'getpage-1.2.4-pl.transport.zip', NULL, 'a:34:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:393:\"--------------------\nSnippet: getPage\n--------------------\nVersion: 1.2.4-pl\nReleased: March 24, 2014\nSince: March 19, 2010\nAuthor: Jason Coward <jason@modx.com>\n\nA generic wrapper snippet for returning paged results and navigation from snippets that return limitable collections. This release requires MODX Revolution 2.1+.\n\nOfficial Documentation:\nhttp://rtfm.modx.com/display/ADDON/getPage\n\";s:9:\"changelog\";s:1869:\"Changelog for getPage.\n\ngetPage 1.2.4-pl (March 24, 2014)\n====================================\n- [#19] Add scriptProperties to cachePageKey signature\n- [#24] Cache total results number into correct variable name\n\ngetPage 1.2.3-pl (June 20, 2012)\n====================================\n- [#15] Add ability to specify pageNavScheme for navigation links\n- [#14] Avoid adding pageVarKey to query string when page = 1\n- [#12] Fix cacheKey when multi-dimensional arrays used in $_REQUEST\n\ngetPage 1.2.2-pl (December 9, 2011)\n====================================\n- Check $_GET before $_REQUEST for pageVarKey and limit overrides\n- [#6] Add pageOneLimit to allow different limit on first results page\n\ngetPage 1.2.1-pl (September 15, 2011)\n====================================\n- Remove inadvertent debugging statement in snippet code\n\ngetPage 1.2.0-pl (September 14, 2011)\n====================================\n- [#5] Add pageNavOuterTpl for layout control of page nav elements\n- Allow limit of 0 in $_REQUEST to bypass paging\n- Allow empty nav tpl parameters\n- Allow unlimited page listing with &pageLimit=`0`\n\ngetPage 1.1.0-pl (March 27, 2011)\n====================================\n- Change default cacheKey property to use \'resource\' (for MODX 2.1+)\n\ngetPage 1.0.0-pl (August 18, 2010)\n====================================\n- Add support for snippets that send output toPlaceholder\n- Add firstItem and lastItem properties/placeholders\n- Add pageActiveTpl to differentiate current page link\n\ngetPage 1.0.0-rc1 (June 29, 2010)\n====================================\n- Add per page caching capabilities\n- Add changelog, license, and readme\n\ngetPage 1.0.0-beta2 (May 28, 2010)\n====================================\n- Preserve additional query string parameters when creating paging navigation\n\ngetPage 1.0.0-beta1 (March 19, 2010)\n====================================\n- Initial release\n\";s:9:\"signature\";s:16:\"getpage-1.2.4-pl\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:20:\"Продолжить\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:1749:\"function (va){\n        var r;\n        var g = Ext.getCmp(\'modx-package-grid\');\n        if (!g) return false;\n        \n        if (va.signature != undefined && va.signature != \'\') {\n            r = {signature: va.signature};\n        } else {\n            r = g.menu.record.data ? g.menu.record.data : g.menu.record;\n        }\n\t\tvar topic = \'/workspace/package/install/\'+r.signature+\'/\';\n        g.loadConsole(Ext.getBody(),topic);\n\n\t\tva = va || {};\n        Ext.apply(va,{\n            action: \'workspace/packages/install\'\n            ,signature: r.signature\n            ,register: \'mgr\'\n            ,topic: topic\n        });\n\n        MODx.Ajax.request({\n            url: MODx.config.connector_url\n            ,params: va\n            ,listeners: {\n                \'success\': {fn:function() {\n                    var bc = Ext.getCmp(\'packages-breadcrumbs\');\n                    var trail= bc.data.trail;\n                    trail.pop();\n\n                    if (trail.length > 1) {\n                        last = trail[trail.length - 1];\n\n                        if (last != undefined && last.rec != undefined) {\n                            bc.data.trail.pop();\n                            bc.data.trail.shift();\n                            bc.updateDetail(bc.data);\n\n                            var grid = Ext.getCmp(\'modx-package-grid\');\n                            grid.install(last.rec);\n                            return;\n                        }\n                    }\n\n                    this.activate();\n\t\t\t\t\tExt.getCmp(\'modx-package-grid\').refresh();\n                },scope:this}\n                ,\'failure\': {fn:function() {\n                    this.activate();\n                },scope:this}\n            }\n        });\n\n        return true;\n\t}\";s:8:\"disabled\";s:5:\"false\";s:5:\"scope\";s:15:\"[object Object]\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:8:\"lastSize\";s:15:\"[object Object]\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:44:\"/workspace/package/install/getpage-1.2.4-pl/\";s:14:\"package_action\";i:0;}', 'getPage', 'a:38:{s:2:\"id\";s:24:\"5331082662cf24022e002475\";s:7:\"package\";s:24:\"4d556c77b2b083396d000c1b\";s:12:\"display_name\";s:16:\"getpage-1.2.4-pl\";s:4:\"name\";s:7:\"getPage\";s:7:\"version\";s:5:\"1.2.4\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"2\";s:13:\"version_patch\";s:1:\"4\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:8:\"opengeek\";s:11:\"description\";s:390:\"<p>A generic wrapper snippet for MODX Revolution 2.1+. getPage will returning paged results and navigation from snippets that return limitable collections, and optionally cache the results of unique page requests.</p><p>The release fixes a bug with caching when getPage is used multiple times on a single page and caches the total value into the proper totalVar variable name.</p><ul>\n</ul>\";s:12:\"instructions\";s:90:\"<p>Install via Package Management.\nNOTE: requires MODX Revolution-2.1.0-rc-1 or later.</p>\";s:9:\"changelog\";s:1377:\"<p></p><p style=\"margin-bottom: 15px; \"></p><p><b>getPage 1.2.4-pl (March 24, 2014)</b><b></b></p><p><ul><li>&#91;#19&#93; Add scriptProperties to cachePageKey signature</li><li>&#91;#24&#93; Cache total results number into correct variable name</li></ul></p><p><b>getPage 1.2.3-pl (June 20, 2012)</b></p><p></p><p></p><ul><li>&#91;#15&#93; Add ability to specify pageNavScheme for navigation links</li><li>&#91;#14&#93; Avoid adding pageVarKey to query string when page = 1</li><li>&#91;#12&#93; Fix cacheKey when multi-dimensional arrays used in $_REQUEST</li></ul><p></p><p></p><p><b>getPage 1.2.2-pl (December 9, 2011)</b></p><p></p><ul><li>Check $_GET before $_REQUEST for pageVarKey and limit overrides</li><li>&#91;#6&#93; Add pageOneLimit to allow different limit on first results page</li></ul><p></p><p></p><p style=\"margin-bottom: 15px; \"><b>getPage 1.2.1-pl (September 15, 2011)</b></p><p style=\"margin-bottom: 15px; \"></p><ul><li>Remove inadvertent debugging statement in snippet code</li></ul><p></p><p style=\"margin-bottom: 15px; \"><b>getPage 1.2.0-pl (September 14, 2011)</b></p><ul style=\"margin-bottom: 15px; \"><li>&#91;#5&#93; Add pageNavOuterTpl for layout control of page nav elements</li><li>Allow limit of 0 in $_REQUEST to bypass paging</li><li>Allow empty nav tpl parameters</li><li>Allow unlimited page listing with &amp;pageLimit=`0`</li></ul><p></p>\";s:9:\"createdon\";s:24:\"2014-03-25T04:37:58+0000\";s:9:\"createdby\";s:8:\"opengeek\";s:8:\"editedon\";s:24:\"2015-12-25T23:27:11+0000\";s:10:\"releasedon\";s:24:\"2014-03-25T04:37:58+0000\";s:9:\"downloads\";s:5:\"94662\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.1\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5331082662cf24022e002477\";s:9:\"signature\";s:16:\"getpage-1.2.4-pl\";s:11:\"supports_db\";s:12:\"mysql,sqlsrv\";s:16:\"minimum_supports\";s:3:\"2.1\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5331082662cf24022e002477\";s:7:\"version\";s:24:\"5331082662cf24022e002475\";s:8:\"filename\";s:30:\"getpage-1.2.4-pl.transport.zip\";s:9:\"downloads\";s:5:\"37708\";s:6:\"lastip\";s:14:\"185.103.26.177\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5331082662cf24022e002477\";}s:17:\"package-signature\";s:16:\"getpage-1.2.4-pl\";s:10:\"categories\";s:37:\"navigation,blogging,content,utilities\";s:4:\"tags\";s:0:\"\";}', 1, 2, 4, 'pl', 0),
('tinymce-4.3.3-pl', '2015-12-26 04:52:25', '2015-12-26 04:55:48', '2015-12-26 04:55:48', 0, 1, 1, 0, 'tinymce-4.3.3-pl.transport.zip', NULL, 'a:32:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:9:\"signature\";s:16:\"tinymce-4.3.3-pl\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:20:\"Продолжить\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:1749:\"function (va){\n        var r;\n        var g = Ext.getCmp(\'modx-package-grid\');\n        if (!g) return false;\n        \n        if (va.signature != undefined && va.signature != \'\') {\n            r = {signature: va.signature};\n        } else {\n            r = g.menu.record.data ? g.menu.record.data : g.menu.record;\n        }\n\t\tvar topic = \'/workspace/package/install/\'+r.signature+\'/\';\n        g.loadConsole(Ext.getBody(),topic);\n\n\t\tva = va || {};\n        Ext.apply(va,{\n            action: \'workspace/packages/install\'\n            ,signature: r.signature\n            ,register: \'mgr\'\n            ,topic: topic\n        });\n\n        MODx.Ajax.request({\n            url: MODx.config.connector_url\n            ,params: va\n            ,listeners: {\n                \'success\': {fn:function() {\n                    var bc = Ext.getCmp(\'packages-breadcrumbs\');\n                    var trail= bc.data.trail;\n                    trail.pop();\n\n                    if (trail.length > 1) {\n                        last = trail[trail.length - 1];\n\n                        if (last != undefined && last.rec != undefined) {\n                            bc.data.trail.pop();\n                            bc.data.trail.shift();\n                            bc.updateDetail(bc.data);\n\n                            var grid = Ext.getCmp(\'modx-package-grid\');\n                            grid.install(last.rec);\n                            return;\n                        }\n                    }\n\n                    this.activate();\n\t\t\t\t\tExt.getCmp(\'modx-package-grid\').refresh();\n                },scope:this}\n                ,\'failure\': {fn:function() {\n                    this.activate();\n                },scope:this}\n            }\n        });\n\n        return true;\n\t}\";s:8:\"disabled\";s:5:\"false\";s:5:\"scope\";s:15:\"[object Object]\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:8:\"lastSize\";s:15:\"[object Object]\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:44:\"/workspace/package/install/tinymce-4.3.3-pl/\";s:14:\"package_action\";i:0;}', 'TinyMCE', 'a:38:{s:2:\"id\";s:24:\"4ff84cc3f245544fc100000a\";s:7:\"package\";s:24:\"4d556bc5b2b083396d0007e9\";s:12:\"display_name\";s:16:\"tinymce-4.3.3-pl\";s:4:\"name\";s:7:\"TinyMCE\";s:7:\"version\";s:5:\"4.3.3\";s:13:\"version_major\";s:1:\"4\";s:13:\"version_minor\";s:1:\"3\";s:13:\"version_patch\";s:1:\"3\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:1:\"0\";s:6:\"author\";s:12:\"splittingred\";s:11:\"description\";s:102:\"<p>TinyMCE version 3.4.7 for MODx Revolution. Works with Revolution 2.2.x or later only.</p><ul>\n</ul>\";s:12:\"instructions\";s:225:\"<p>Install via Package Management.</p>\n<p>If you\'re having issues installing, make sure you have the latest ZipArchive extension for PHP, and that it\'s properly configured, or set the \"archive_with\" System Setting to Yes.</p>\";s:9:\"changelog\";s:2332:\"<p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 4.3.3</b></p><ul><li>Change popup windows to more convenient modals</li><li>Have TinyMCE respect context settings of Resource being edited</li><li>Update TinyMCE to 3.5.4.1</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 4.3.2</b></p><ul><li>Update Czech/German translation</li><li>&#91;#74&#93; Fix inclusion of english as fallback for language</li><li>&#91;#80&#93; Make context menu use MODxLink plugin</li><li>Upgrade TinyMCE to 3.4.7</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 4.3.1</b></p><ul><li>Optimizations for MODX 2.2</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 4.3.0</b></p><ul><li>&#91;#71&#93; Update TinyMCE to v3.4.5</li><li>&#91;#70&#93; Fixes to cirkuit skin with missing CSS styles</li><li>&#91;#64&#93; Add tiny.template_list_snippet setting for grabbing template list from a Snippet</li><li>&#91;#66&#93; Fix issues with Revolution 2.2.0 code</li><li>&#91;#63&#93; Add tiny.base_url setting for managing the document_base_url tinymce setting</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 4.2.4</b></p><ul><li>Updated TinyMCE to 3.4.2</li><li>Fix issue where recursion detected xPDO error was showing in logs on chunk editing</li><li>&#91;#55&#93; Fix help for element_format and preformatted descriptions in plugin properties</li><li>&#91;#53&#93; Languages added/update: German, English, French, Indonesian, Japanese, Dutch, Russian, Ukrainian</li></ul><b>New in 4.2.3</b><p></p><ul><li>Fix issue that inserted wrong URL when using TinyMCE in Revolution 2.1 and later</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 4.2.2</b></p><ul><li>&#91;#49&#93; Added spellchecker files</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 4.2.1</b></p><ul><li>&#91;#45&#93; &#91;#47&#93; Fixes for front-end usage and compatibility with NewsPublisher</li><li>Add compressed JS for faster loading</li></ul>\";s:9:\"createdon\";s:24:\"2012-07-07T14:50:43+0000\";s:9:\"createdby\";s:12:\"splittingred\";s:8:\"editedon\";s:24:\"2015-12-26T03:25:21+0000\";s:10:\"releasedon\";s:24:\"2012-07-07T14:50:43+0000\";s:9:\"downloads\";s:6:\"267586\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=4ff84cc6f245544fc100000c\";s:9:\"signature\";s:16:\"tinymce-4.3.3-pl\";s:11:\"supports_db\";s:12:\"mysql,sqlsrv\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:54:\"http://modx.s3.amazonaws.com/extras/459/tinymce-ss.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"4ff84cc6f245544fc100000c\";s:7:\"version\";s:24:\"4ff84cc3f245544fc100000a\";s:8:\"filename\";s:30:\"tinymce-4.3.3-pl.transport.zip\";s:9:\"downloads\";s:6:\"138234\";s:6:\"lastip\";s:13:\"68.180.229.30\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=4ff84cc6f245544fc100000c\";}s:17:\"package-signature\";s:16:\"tinymce-4.3.3-pl\";s:10:\"categories\";s:23:\"content,richtexteditors\";s:4:\"tags\";s:51:\"rte,richtext,wysiwyg,richtext editor,editor,content\";}', 4, 3, 3, 'pl', 0),
('modupdater-0.1.0-beta', '2015-12-26 04:53:17', '2015-12-26 04:54:54', '2015-12-26 04:54:54', 0, 1, 1, 0, 'modupdater-0.1.0-beta.transport.zip', NULL, 'a:36:{s:9:\"changelog\";s:74:\"Changelog for modUpdater.\r\n\r\n1.0.0-beta\r\n==============\r\n- Initial release\";s:7:\"license\";s:15504:\"GNU GENERAL PUBLIC LICENSE\r\n   Version 2, June 1991\r\n--------------------------\r\n\r\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\r\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\r\n\r\nEveryone is permitted to copy and distribute verbatim copies\r\nof this license document, but changing it is not allowed.\r\n\r\nPreamble\r\n--------\r\n\r\n  The licenses for most software are designed to take away your\r\nfreedom to share and change it.  By contrast, the GNU General Public\r\nLicense is intended to guarantee your freedom to share and change free\r\nsoftware--to make sure the software is free for all its users.  This\r\nGeneral Public License applies to most of the Free Software\r\nFoundation\'s software and to any other program whose authors commit to\r\nusing it.  (Some other Free Software Foundation software is covered by\r\nthe GNU Library General Public License instead.)  You can apply it to\r\nyour programs, too.\r\n\r\n  When we speak of free software, we are referring to freedom, not\r\nprice.  Our General Public Licenses are designed to make sure that you\r\nhave the freedom to distribute copies of free software (and charge for\r\nthis service if you wish), that you receive source code or can get it\r\nif you want it, that you can change the software or use pieces of it\r\nin new free programs; and that you know you can do these things.\r\n\r\n  To protect your rights, we need to make restrictions that forbid\r\nanyone to deny you these rights or to ask you to surrender the rights.\r\nThese restrictions translate to certain responsibilities for you if you\r\ndistribute copies of the software, or if you modify it.\r\n\r\n  For example, if you distribute copies of such a program, whether\r\ngratis or for a fee, you must give the recipients all the rights that\r\nyou have.  You must make sure that they, too, receive or can get the\r\nsource code.  And you must show them these terms so they know their\r\nrights.\r\n\r\n  We protect your rights with two steps: (1) copyright the software, and\r\n(2) offer you this license which gives you legal permission to copy,\r\ndistribute and/or modify the software.\r\n\r\n  Also, for each author\'s protection and ours, we want to make certain\r\nthat everyone understands that there is no warranty for this free\r\nsoftware.  If the software is modified by someone else and passed on, we\r\nwant its recipients to know that what they have is not the original, so\r\nthat any problems introduced by others will not reflect on the original\r\nauthors\' reputations.\r\n\r\n  Finally, any free program is threatened constantly by software\r\npatents.  We wish to avoid the danger that redistributors of a free\r\nprogram will individually obtain patent licenses, in effect making the\r\nprogram proprietary.  To prevent this, we have made it clear that any\r\npatent must be licensed for everyone\'s free use or not licensed at all.\r\n\r\n  The precise terms and conditions for copying, distribution and\r\nmodification follow.\r\n\r\n\r\nGNU GENERAL PUBLIC LICENSE\r\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\r\n---------------------------------------------------------------\r\n\r\n  0. This License applies to any program or other work which contains\r\na notice placed by the copyright holder saying it may be distributed\r\nunder the terms of this General Public License.  The \"Program\", below,\r\nrefers to any such program or work, and a \"work based on the Program\"\r\nmeans either the Program or any derivative work under copyright law:\r\nthat is to say, a work containing the Program or a portion of it,\r\neither verbatim or with modifications and/or translated into another\r\nlanguage.  (Hereinafter, translation is included without limitation in\r\nthe term \"modification\".)  Each licensee is addressed as \"you\".\r\n\r\nActivities other than copying, distribution and modification are not\r\ncovered by this License; they are outside its scope.  The act of\r\nrunning the Program is not restricted, and the output from the Program\r\nis covered only if its contents constitute a work based on the\r\nProgram (independent of having been made by running the Program).\r\nWhether that is true depends on what the Program does.\r\n\r\n  1. You may copy and distribute verbatim copies of the Program\'s\r\nsource code as you receive it, in any medium, provided that you\r\nconspicuously and appropriately publish on each copy an appropriate\r\ncopyright notice and disclaimer of warranty; keep intact all the\r\nnotices that refer to this License and to the absence of any warranty;\r\nand give any other recipients of the Program a copy of this License\r\nalong with the Program.\r\n\r\nYou may charge a fee for the physical act of transferring a copy, and\r\nyou may at your option offer warranty protection in exchange for a fee.\r\n\r\n  2. You may modify your copy or copies of the Program or any portion\r\nof it, thus forming a work based on the Program, and copy and\r\ndistribute such modifications or work under the terms of Section 1\r\nabove, provided that you also meet all of these conditions:\r\n\r\n    a) You must cause the modified files to carry prominent notices\r\n    stating that you changed the files and the date of any change.\r\n\r\n    b) You must cause any work that you distribute or publish, that in\r\n    whole or in part contains or is derived from the Program or any\r\n    part thereof, to be licensed as a whole at no charge to all third\r\n    parties under the terms of this License.\r\n\r\n    c) If the modified program normally reads commands interactively\r\n    when run, you must cause it, when started running for such\r\n    interactive use in the most ordinary way, to print or display an\r\n    announcement including an appropriate copyright notice and a\r\n    notice that there is no warranty (or else, saying that you provide\r\n    a warranty) and that users may redistribute the program under\r\n    these conditions, and telling the user how to view a copy of this\r\n    License.  (Exception: if the Program itself is interactive but\r\n    does not normally print such an announcement, your work based on\r\n    the Program is not required to print an announcement.)\r\n\r\nThese requirements apply to the modified work as a whole.  If\r\nidentifiable sections of that work are not derived from the Program,\r\nand can be reasonably considered independent and separate works in\r\nthemselves, then this License, and its terms, do not apply to those\r\nsections when you distribute them as separate works.  But when you\r\ndistribute the same sections as part of a whole which is a work based\r\non the Program, the distribution of the whole must be on the terms of\r\nthis License, whose permissions for other licensees extend to the\r\nentire whole, and thus to each and every part regardless of who wrote it.\r\n\r\nThus, it is not the intent of this section to claim rights or contest\r\nyour rights to work written entirely by you; rather, the intent is to\r\nexercise the right to control the distribution of derivative or\r\ncollective works based on the Program.\r\n\r\nIn addition, mere aggregation of another work not based on the Program\r\nwith the Program (or with a work based on the Program) on a volume of\r\na storage or distribution medium does not bring the other work under\r\nthe scope of this License.\r\n\r\n  3. You may copy and distribute the Program (or a work based on it,\r\nunder Section 2) in object code or executable form under the terms of\r\nSections 1 and 2 above provided that you also do one of the following:\r\n\r\n    a) Accompany it with the complete corresponding machine-readable\r\n    source code, which must be distributed under the terms of Sections\r\n    1 and 2 above on a medium customarily used for software interchange; or,\r\n\r\n    b) Accompany it with a written offer, valid for at least three\r\n    years, to give any third party, for a charge no more than your\r\n    cost of physically performing source distribution, a complete\r\n    machine-readable copy of the corresponding source code, to be\r\n    distributed under the terms of Sections 1 and 2 above on a medium\r\n    customarily used for software interchange; or,\r\n\r\n    c) Accompany it with the information you received as to the offer\r\n    to distribute corresponding source code.  (This alternative is\r\n    allowed only for noncommercial distribution and only if you\r\n    received the program in object code or executable form with such\r\n    an offer, in accord with Subsection b above.)\r\n\r\nThe source code for a work means the preferred form of the work for\r\nmaking modifications to it.  For an executable work, complete source\r\ncode means all the source code for all modules it contains, plus any\r\nassociated interface definition files, plus the scripts used to\r\ncontrol compilation and installation of the executable.  However, as a\r\nspecial exception, the source code distributed need not include\r\nanything that is normally distributed (in either source or binary\r\nform) with the major components (compiler, kernel, and so on) of the\r\noperating system on which the executable runs, unless that component\r\nitself accompanies the executable.\r\n\r\nIf distribution of executable or object code is made by offering\r\naccess to copy from a designated place, then offering equivalent\r\naccess to copy the source code from the same place counts as\r\ndistribution of the source code, even though third parties are not\r\ncompelled to copy the source along with the object code.\r\n\r\n  4. You may not copy, modify, sublicense, or distribute the Program\r\nexcept as expressly provided under this License.  Any attempt\r\notherwise to copy, modify, sublicense or distribute the Program is\r\nvoid, and will automatically terminate your rights under this License.\r\nHowever, parties who have received copies, or rights, from you under\r\nthis License will not have their licenses terminated so long as such\r\nparties remain in full compliance.\r\n\r\n  5. You are not required to accept this License, since you have not\r\nsigned it.  However, nothing else grants you permission to modify or\r\ndistribute the Program or its derivative works.  These actions are\r\nprohibited by law if you do not accept this License.  Therefore, by\r\nmodifying or distributing the Program (or any work based on the\r\nProgram), you indicate your acceptance of this License to do so, and\r\nall its terms and conditions for copying, distributing or modifying\r\nthe Program or works based on it.\r\n\r\n  6. Each time you redistribute the Program (or any work based on the\r\nProgram), the recipient automatically receives a license from the\r\noriginal licensor to copy, distribute or modify the Program subject to\r\nthese terms and conditions.  You may not impose any further\r\nrestrictions on the recipients\' exercise of the rights granted herein.\r\nYou are not responsible for enforcing compliance by third parties to\r\nthis License.\r\n\r\n  7. If, as a consequence of a court judgment or allegation of patent\r\ninfringement or for any other reason (not limited to patent issues),\r\nconditions are imposed on you (whether by court order, agreement or\r\notherwise) that contradict the conditions of this License, they do not\r\nexcuse you from the conditions of this License.  If you cannot\r\ndistribute so as to satisfy simultaneously your obligations under this\r\nLicense and any other pertinent obligations, then as a consequence you\r\nmay not distribute the Program at all.  For example, if a patent\r\nlicense would not permit royalty-free redistribution of the Program by\r\nall those who receive copies directly or indirectly through you, then\r\nthe only way you could satisfy both it and this License would be to\r\nrefrain entirely from distribution of the Program.\r\n\r\nIf any portion of this section is held invalid or unenforceable under\r\nany particular circumstance, the balance of the section is intended to\r\napply and the section as a whole is intended to apply in other\r\ncircumstances.\r\n\r\nIt is not the purpose of this section to induce you to infringe any\r\npatents or other property right claims or to contest validity of any\r\nsuch claims; this section has the sole purpose of protecting the\r\nintegrity of the free software distribution system, which is\r\nimplemented by public license practices.  Many people have made\r\ngenerous contributions to the wide range of software distributed\r\nthrough that system in reliance on consistent application of that\r\nsystem; it is up to the author/donor to decide if he or she is willing\r\nto distribute software through any other system and a licensee cannot\r\nimpose that choice.\r\n\r\nThis section is intended to make thoroughly clear what is believed to\r\nbe a consequence of the rest of this License.\r\n\r\n  8. If the distribution and/or use of the Program is restricted in\r\ncertain countries either by patents or by copyrighted interfaces, the\r\noriginal copyright holder who places the Program under this License\r\nmay add an explicit geographical distribution limitation excluding\r\nthose countries, so that distribution is permitted only in or among\r\ncountries not thus excluded.  In such case, this License incorporates\r\nthe limitation as if written in the body of this License.\r\n\r\n  9. The Free Software Foundation may publish revised and/or new versions\r\nof the General Public License from time to time.  Such new versions will\r\nbe similar in spirit to the present version, but may differ in detail to\r\naddress new problems or concerns.\r\n\r\nEach version is given a distinguishing version number.  If the Program\r\nspecifies a version number of this License which applies to it and \"any\r\nlater version\", you have the option of following the terms and conditions\r\neither of that version or of any later version published by the Free\r\nSoftware Foundation.  If the Program does not specify a version number of\r\nthis License, you may choose any version ever published by the Free Software\r\nFoundation.\r\n\r\n  10. If you wish to incorporate parts of the Program into other free\r\nprograms whose distribution conditions are different, write to the author\r\nto ask for permission.  For software which is copyrighted by the Free\r\nSoftware Foundation, write to the Free Software Foundation; we sometimes\r\nmake exceptions for this.  Our decision will be guided by the two goals\r\nof preserving the free status of all derivatives of our free software and\r\nof promoting the sharing and reuse of software generally.\r\n\r\nNO WARRANTY\r\n-----------\r\n\r\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\r\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\r\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\r\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\r\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\r\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\r\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\r\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\r\nREPAIR OR CORRECTION.\r\n\r\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\r\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\r\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\r\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\r\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\r\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\r\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\r\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\r\nPOSSIBILITY OF SUCH DAMAGES.\r\n\r\n---------------------------\r\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:252:\"--------------------\nmodUpdater\n--------------------\nAuthor: Ilya Utkin <ilyautkin@mail.ru>\n--------------------\n\nMODX addon updating MODX version on site.\n\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttps://github.com/ilyautkin/modUpdater\";s:6:\"chunks\";a:0:{}s:13:\"setup-options\";s:39:\"modupdater-0.1.0-beta/setup-options.php\";s:9:\"signature\";s:21:\"modupdater-0.1.0-beta\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:20:\"Продолжить\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:1749:\"function (va){\n        var r;\n        var g = Ext.getCmp(\'modx-package-grid\');\n        if (!g) return false;\n        \n        if (va.signature != undefined && va.signature != \'\') {\n            r = {signature: va.signature};\n        } else {\n            r = g.menu.record.data ? g.menu.record.data : g.menu.record;\n        }\n\t\tvar topic = \'/workspace/package/install/\'+r.signature+\'/\';\n        g.loadConsole(Ext.getBody(),topic);\n\n\t\tva = va || {};\n        Ext.apply(va,{\n            action: \'workspace/packages/install\'\n            ,signature: r.signature\n            ,register: \'mgr\'\n            ,topic: topic\n        });\n\n        MODx.Ajax.request({\n            url: MODx.config.connector_url\n            ,params: va\n            ,listeners: {\n                \'success\': {fn:function() {\n                    var bc = Ext.getCmp(\'packages-breadcrumbs\');\n                    var trail= bc.data.trail;\n                    trail.pop();\n\n                    if (trail.length > 1) {\n                        last = trail[trail.length - 1];\n\n                        if (last != undefined && last.rec != undefined) {\n                            bc.data.trail.pop();\n                            bc.data.trail.shift();\n                            bc.updateDetail(bc.data);\n\n                            var grid = Ext.getCmp(\'modx-package-grid\');\n                            grid.install(last.rec);\n                            return;\n                        }\n                    }\n\n                    this.activate();\n\t\t\t\t\tExt.getCmp(\'modx-package-grid\').refresh();\n                },scope:this}\n                ,\'failure\': {fn:function() {\n                    this.activate();\n                },scope:this}\n            }\n        });\n\n        return true;\n\t}\";s:8:\"disabled\";s:5:\"false\";s:5:\"scope\";s:15:\"[object Object]\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:8:\"lastSize\";s:15:\"[object Object]\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:49:\"/workspace/package/install/modupdater-0.1.0-beta/\";s:14:\"package_action\";i:0;}', 'simpleUpdater', 'a:38:{s:2:\"id\";s:24:\"56050b8cdc532f0772083b3d\";s:7:\"package\";s:24:\"56050b8cdc532f0772083b3c\";s:12:\"display_name\";s:21:\"modupdater-0.1.0-beta\";s:4:\"name\";s:13:\"simpleUpdater\";s:7:\"version\";s:5:\"0.1.0\";s:13:\"version_major\";s:1:\"0\";s:13:\"version_minor\";s:1:\"1\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:4:\"beta\";s:8:\"vrelease\";s:4:\"beta\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:9:\"ilyautkin\";s:11:\"description\";s:22:\"<p>Initial content</p>\";s:12:\"instructions\";s:22:\"<p>Initial content</p>\";s:9:\"changelog\";s:0:\"\";s:9:\"createdon\";s:24:\"2015-09-25T08:53:32+0000\";s:9:\"createdby\";s:9:\"ilyautkin\";s:8:\"editedon\";s:24:\"2015-12-25T09:00:59+0000\";s:10:\"releasedon\";s:24:\"2015-09-25T08:53:32+0000\";s:9:\"downloads\";s:3:\"294\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=56050b8ddc532f0772083b3e\";s:9:\"signature\";s:21:\"modupdater-0.1.0-beta\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:75:\"http://modx.s3.amazonaws.com/extras/56050b8cdc532f0772083b3c/e695ad98af.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"56050b8ddc532f0772083b3e\";s:7:\"version\";s:24:\"56050b8cdc532f0772083b3d\";s:8:\"filename\";s:35:\"modupdater-0.1.0-beta.transport.zip\";s:9:\"downloads\";s:3:\"294\";s:6:\"lastip\";s:13:\"91.206.201.79\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=56050b8ddc532f0772083b3e\";}s:17:\"package-signature\";s:21:\"modupdater-0.1.0-beta\";s:10:\"categories\";s:29:\"administration,administration\";s:4:\"tags\";s:0:\"\";}', 0, 1, 0, 'beta', 0),
('dbadmin-1.1.0-pl', '2015-12-26 04:53:32', '2015-12-26 04:56:08', '2015-12-26 04:56:08', 0, 1, 1, 0, 'dbadmin-1.1.0-pl.transport.zip', NULL, 'a:35:{s:9:\"changelog\";s:733:\"Changelog for dbAdmin.\n\n1.1.0-pl\n==============\n- Added the ability to edit the selected cell in tables with a class or remove entire row.\n- Auto-update the list of tables.\n- Added Magic button to define a class for table.\n- Added \'Select from\' button to the tables grid that adds \'Select from\' script for selected table to the SQL query editor.\n\n1.0.1-pl\n==============\n- Fixed the error of checking update (wrong package name).\n- Added autocreation a folder for export operation.\n- Added the table access_namespace for MODX 2.4.0.\n\n1.0.0-pl\n==============\n- Fixed the error of renaming table.\n- Auto synchronization instead of the button.\n- Added a \"need update\" marker (by experiment).\n\n1.0.0-beta\n==============\n- Initial release\";s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:274:\"--------------------\ndbAdmin\n--------------------\nAuthor: Sergey Shlokov <sergant210@bk.ru>\n--------------------\n\nA MODx Revolution Extra for database tables administration.\n\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/sergant210/dbAdmin/issues\";s:13:\"setup-options\";s:34:\"dbadmin-1.1.0-pl/setup-options.php\";s:9:\"signature\";s:16:\"dbadmin-1.1.0-pl\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:20:\"Продолжить\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:1749:\"function (va){\n        var r;\n        var g = Ext.getCmp(\'modx-package-grid\');\n        if (!g) return false;\n        \n        if (va.signature != undefined && va.signature != \'\') {\n            r = {signature: va.signature};\n        } else {\n            r = g.menu.record.data ? g.menu.record.data : g.menu.record;\n        }\n\t\tvar topic = \'/workspace/package/install/\'+r.signature+\'/\';\n        g.loadConsole(Ext.getBody(),topic);\n\n\t\tva = va || {};\n        Ext.apply(va,{\n            action: \'workspace/packages/install\'\n            ,signature: r.signature\n            ,register: \'mgr\'\n            ,topic: topic\n        });\n\n        MODx.Ajax.request({\n            url: MODx.config.connector_url\n            ,params: va\n            ,listeners: {\n                \'success\': {fn:function() {\n                    var bc = Ext.getCmp(\'packages-breadcrumbs\');\n                    var trail= bc.data.trail;\n                    trail.pop();\n\n                    if (trail.length > 1) {\n                        last = trail[trail.length - 1];\n\n                        if (last != undefined && last.rec != undefined) {\n                            bc.data.trail.pop();\n                            bc.data.trail.shift();\n                            bc.updateDetail(bc.data);\n\n                            var grid = Ext.getCmp(\'modx-package-grid\');\n                            grid.install(last.rec);\n                            return;\n                        }\n                    }\n\n                    this.activate();\n\t\t\t\t\tExt.getCmp(\'modx-package-grid\').refresh();\n                },scope:this}\n                ,\'failure\': {fn:function() {\n                    this.activate();\n                },scope:this}\n            }\n        });\n\n        return true;\n\t}\";s:8:\"disabled\";s:5:\"false\";s:5:\"scope\";s:15:\"[object Object]\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:8:\"lastSize\";s:15:\"[object Object]\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:44:\"/workspace/package/install/dbadmin-1.1.0-pl/\";s:14:\"package_action\";i:0;}', 'dbAdmin', 'a:38:{s:2:\"id\";s:24:\"55ce1552dc532f5458017d9a\";s:7:\"package\";s:24:\"55ce1552dc532f5458017d99\";s:12:\"display_name\";s:16:\"dbadmin-1.1.0-pl\";s:4:\"name\";s:7:\"dbAdmin\";s:7:\"version\";s:5:\"1.1.0\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"1\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:10:\"sergant210\";s:11:\"description\";s:1203:\"<p style=\"\">dbAdmin is a map table that shows corresponding MODX object classes for system tables. </p><b><b style=\"\">Base features:</b></b>\n\n<ul style=\"\"><li style=\"\">browse tables;</li><li style=\"\">truncate, remove and rename tables;</li><li style=\"\">export entire database or selected tables to text file;</li><li style=\"\">filter by table name or class name;</li><li style=\"\">execute sql queries.</li></ul><p style=\"\"><b style=\"\">Permissions</b></p><p style=\"\">To work you need the following permissions (except the admin with sudo):\n</p><ul style=\"\"><li style=\"\"><b style=\"\">tables_list</b> — Allow to view a list of tables.</li><li style=\"\"><b>table_view</b> — Table view permission.</li><li style=\"\"><b>table_save</b> — Table save permission.</li><li style=\"\"><b>table_truncate</b> — Truncate permission (truncate table).</li><li style=\"\"><b>table_remove</b> — Remove permission (drop table).</li><li style=\"\"><b>table_export</b> — Allow to export a table.</li><li style=\"\"><b>sql_query_execute</b> — Allow to execute sql queries.</li></ul><p>A short <a href=\"https://youtu.be/Qnm2a8vsqiU\">video</a>.</p>More information on <a href=\"https://github.com/sergant210/dbAdmin\">Github</a>.\";s:12:\"instructions\";s:38:\"<p>Install it via Package manager.</p>\";s:9:\"changelog\";s:841:\"<p></p><p>1.1.0-pl</p><p>==============</p><p>- Added the ability to edit the selected cell in tables with a class or remove entire row.</p><p>- Auto-update the list of tables.</p><p>- Added Magic button to define a class for table.</p><p>- Added \'Select from\' button to the tables grid that adds \'Select from\' script for selected table to the SQL query editor.</p><p>1.0.1-pl</p><p></p><p>==============</p><p>- Fixed the error of checking update (was wrong package name). </p><p>- Added autocreation a folder for export operation. </p><p>- Added the table access_namespace for MODX 2.4.0.</p><p>1.0.0-pl</p><p>==============</p><p>- Fixed the error of renaming table.</p><p>- Auto synchronization instead of the button.</p><p>- Added a \"need update\" marker (by experiment).</p><p>1.0.0-beta</p><p>==============</p><p>- Initial release</p>\";s:9:\"createdon\";s:24:\"2015-08-14T16:20:34+0000\";s:9:\"createdby\";s:10:\"sergant210\";s:8:\"editedon\";s:24:\"2015-12-26T03:49:59+0000\";s:10:\"releasedon\";s:24:\"2015-08-14T16:20:34+0000\";s:9:\"downloads\";s:3:\"382\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.3\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=55ec680edc532f0772043d7b\";s:9:\"signature\";s:16:\"dbadmin-1.1.0-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.3\";s:9:\"breaks_at\";s:3:\"2.4\";s:10:\"screenshot\";s:73:\"http://modx.s3.amazonaws.com/extras/55ce1552dc532f5458017d99/dbadmin4.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"55ec680edc532f0772043d7b\";s:7:\"version\";s:24:\"55ce1552dc532f5458017d9a\";s:8:\"filename\";s:30:\"dbadmin-1.1.0-pl.transport.zip\";s:9:\"downloads\";s:3:\"296\";s:6:\"lastip\";s:11:\"92.53.96.71\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=55ec680edc532f0772043d7b\";}s:17:\"package-signature\";s:16:\"dbadmin-1.1.0-pl\";s:10:\"categories\";s:29:\"administration,administration\";s:4:\"tags\";s:0:\"\";}', 1, 1, 0, 'pl', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_providers`
--

DROP TABLE IF EXISTS `modx_transport_providers`;
CREATE TABLE `modx_transport_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(255) NOT NULL DEFAULT '',
  `api_key` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint(4) NOT NULL DEFAULT '10',
  `properties` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `api_key` (`api_key`),
  KEY `username` (`username`),
  KEY `active` (`active`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES 
(1, 'modx.com', 'The official MODX transport facility for 3rd party components.', 'http://rest.modx.com/extras/', '', '', '2015-10-06 13:06:53', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_attributes`
--

DROP TABLE IF EXISTS `modx_user_attributes`;
CREATE TABLE `modx_user_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '',
  `extended` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `internalKey` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES 
(1, 1, 'Администратор', 'mr-lexus@bk.ru', '', '', 0, 0, 0, 1, 0, 1451098874, 0, 'mu4tel2dmt745h50m6tpq0lo30', 0, 0, '', '', '', '', '', '', 'assets/images/GC.jpg', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_roles`
--

DROP TABLE IF EXISTS `modx_user_group_roles`;
CREATE TABLE `modx_user_group_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `authority` (`authority`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES 
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_settings`
--

DROP TABLE IF EXISTS `modx_user_group_settings`;
CREATE TABLE `modx_user_group_settings` (
  `group` int(10) unsigned NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`group`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_messages`
--

DROP TABLE IF EXISTS `modx_user_messages`;
CREATE TABLE `modx_user_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_settings`
--

DROP TABLE IF EXISTS `modx_user_settings`;
CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `modx_users`
--

DROP TABLE IF EXISTS `modx_users`;
CREATE TABLE `modx_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remote_key` varchar(255) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modPBKDF2',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) unsigned NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `class_key` (`class_key`),
  KEY `remote_key` (`remote_key`),
  KEY `primary_group` (`primary_group`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`) VALUES 
(1, 'admin', 'S05jLyIEMDLtLHMxo64gs/5HhW4eYmBquNJyvhHikQw=', '', 'modUser', 1, NULL, NULL, 'hashing.modPBKDF2', '21a71f0c1ba7dfb88b76a1852157144b', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_workspaces`
--

DROP TABLE IF EXISTS `modx_workspaces`;
CREATE TABLE `modx_workspaces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attributes` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES 
(1, 'Default MODX workspace', '{core_path}', '2015-12-26 04:00:54', 1, NULL);

-- --------------------------------------------------------

