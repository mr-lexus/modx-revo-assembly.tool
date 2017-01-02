<?php return array (
  'd35c737a4799f63d041a5a36b4109559' => 
  array (
    'criteria' => 
    array (
      'name' => 'virtualpage',
    ),
    'object' => 
    array (
      'name' => 'virtualpage',
      'path' => '{core_path}components/virtualpage/',
      'assets_path' => '',
    ),
  ),
  'b01b544089c73f36ac43f3c90f46c07c' => 
  array (
    'criteria' => 
    array (
      'key' => 'virtualpage_active',
    ),
    'object' => 
    array (
      'key' => 'virtualpage_active',
      'value' => '1',
      'xtype' => 'combo-boolean',
      'namespace' => 'virtualpage',
      'area' => 'virtualpage_main',
      'editedon' => '0000-00-00 00:00:00',
    ),
  ),
  '8bd89dc01b4c23d4b2fd7016ff3e4daa' => 
  array (
    'criteria' => 
    array (
      'key' => 'virtualpage_exclude_event_groupname',
    ),
    'object' => 
    array (
      'key' => 'virtualpage_exclude_event_groupname',
      'value' => 'Categories,Chunks,Contexts,Internationalization,Media Sources,Plugin Events,Plugins,Property Sets,Resources,RichText Editor,Security,Snippets,Template Variables,Templates,User Groups,Users',
      'xtype' => 'textarea',
      'namespace' => 'virtualpage',
      'area' => 'virtualpage_main',
      'editedon' => '0000-00-00 00:00:00',
    ),
  ),
  '686570b0c3dfccbd8dee203fa407802d' => 
  array (
    'criteria' => 
    array (
      'key' => 'virtualpage_fastrouter_key',
    ),
    'object' => 
    array (
      'key' => 'virtualpage_fastrouter_key',
      'value' => 'fastrouter',
      'xtype' => 'textfield',
      'namespace' => 'virtualpage',
      'area' => 'virtualpage_main',
      'editedon' => '0000-00-00 00:00:00',
    ),
  ),
  'cc3cf6cad63cbd9098d6bc9cacd2af38' => 
  array (
    'criteria' => 
    array (
      'key' => 'virtualpage_prefix_placeholder',
    ),
    'object' => 
    array (
      'key' => 'virtualpage_prefix_placeholder',
      'value' => 'vp.',
      'xtype' => 'textfield',
      'namespace' => 'virtualpage',
      'area' => 'virtualpage_main',
      'editedon' => '0000-00-00 00:00:00',
    ),
  ),
  'b48f09aaf010e5690d80744a73e87f0b' => 
  array (
    'criteria' => 
    array (
      'name' => 'vpOnResourceAfterCreate',
    ),
    'object' => 
    array (
      'name' => 'vpOnResourceAfterCreate',
      'service' => 6,
      'groupname' => 'virtualpage',
    ),
  ),
  'e5a3373a19c6f657747e6adce4e6b5f1' => 
  array (
    'criteria' => 
    array (
      'name' => 'vpOnBeforeProcess',
    ),
    'object' => 
    array (
      'name' => 'vpOnBeforeProcess',
      'service' => 6,
      'groupname' => 'virtualpage',
    ),
  ),
  'c5c3cbcf32a63c96cef18200389b5026' => 
  array (
    'criteria' => 
    array (
      'name' => 'vpOnGetResource',
    ),
    'object' => 
    array (
      'name' => 'vpOnGetResource',
      'service' => 6,
      'groupname' => 'virtualpage',
    ),
  ),
  '38446174e305ae6a8f9221aeccfa301d' => 
  array (
    'criteria' => 
    array (
      'namespace' => 'virtualpage',
      'controller' => 'index',
    ),
    'object' => 
    array (
      'id' => 10,
      'namespace' => 'virtualpage',
      'controller' => 'index',
      'haslayout' => 1,
      'lang_topics' => 'virtualpage:default',
      'assets' => '',
      'help_url' => '',
    ),
  ),
  '3ef05e7dfafe8c7dc2359f9542dbfd77' => 
  array (
    'criteria' => 
    array (
      'text' => 'virtualpage',
    ),
    'object' => 
    array (
      'text' => 'virtualpage',
      'parent' => 'components',
      'action' => '10',
      'description' => '',
      'icon' => 'images/icons/plugin.gif',
      'menuindex' => 6,
      'params' => '',
      'handler' => '',
      'permissions' => '',
      'namespace' => 'core',
    ),
  ),
  '71ec4ec3edbcf875249e19d4706e7596' => 
  array (
    'criteria' => 
    array (
      'category' => 'virtualpage',
    ),
    'object' => 
    array (
      'id' => 51,
      'parent' => 0,
      'category' => 'virtualpage',
      'rank' => 0,
    ),
  ),
  'd0ae3cc9932ee32923bd4037c78133bf' => 
  array (
    'criteria' => 
    array (
      'name' => 'vpSystem',
    ),
    'object' => 
    array (
      'id' => 49,
      'source' => 1,
      'property_preprocess' => 0,
      'name' => 'vpSystem',
      'description' => '',
      'editor_type' => 0,
      'category' => 51,
      'cache_type' => 0,
      'plugincode' => '/** @var array $scriptProperties */
$fqn = $modx->getOption(\'virtualpage_class\', null, \'virtualpage.virtualpage\', true);
$path = $modx->getOption(\'virtualpage_class_path\', null,
    $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/virtualpage/\');
/** @var virtualpage $virtualpage */
if (!$virtualpage = $modx->getService($fqn, \'\', $path . \'model/\', array(\'core_path\' => $path))) {
    return false;
}

$className = \'virtualpage\' . $modx->event->name;
$modx->loadClass(\'virtualpagePlugin\', $path . \'model/virtualpage/systems/\', true, true);
$modx->loadClass($className, $path . \'model/virtualpage/systems/\', true, true);
if (class_exists($className)) {
    /** @var $virtualpage $plugin */
    $plugin = new $className($modx, $scriptProperties);
    $plugin->run();
}
return;',
      'locked' => 0,
      'properties' => NULL,
      'disabled' => 0,
      'moduleguid' => '',
      'static' => 0,
      'static_file' => 'core/components/virtualpage/elements/plugins/plugin.system.php',
      'content' => '/** @var array $scriptProperties */
$fqn = $modx->getOption(\'virtualpage_class\', null, \'virtualpage.virtualpage\', true);
$path = $modx->getOption(\'virtualpage_class_path\', null,
    $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/virtualpage/\');
/** @var virtualpage $virtualpage */
if (!$virtualpage = $modx->getService($fqn, \'\', $path . \'model/\', array(\'core_path\' => $path))) {
    return false;
}

$className = \'virtualpage\' . $modx->event->name;
$modx->loadClass(\'virtualpagePlugin\', $path . \'model/virtualpage/systems/\', true, true);
$modx->loadClass($className, $path . \'model/virtualpage/systems/\', true, true);
if (class_exists($className)) {
    /** @var $virtualpage $plugin */
    $plugin = new $className($modx, $scriptProperties);
    $plugin->run();
}
return;',
    ),
  ),
  'a85ed99370d1b158d0285923b9ad98ff' => 
  array (
    'criteria' => 
    array (
      'pluginid' => 49,
      'event' => 'OnBeforeCacheUpdate',
    ),
    'object' => 
    array (
      'pluginid' => 49,
      'event' => 'OnBeforeCacheUpdate',
      'priority' => 50,
      'propertyset' => 0,
    ),
  ),
  '5ec33c61e1eb8d65d8b27cc4393721a8' => 
  array (
    'criteria' => 
    array (
      'pluginid' => 49,
      'event' => 'OnHandleRequest',
    ),
    'object' => 
    array (
      'pluginid' => 49,
      'event' => 'OnHandleRequest',
      'priority' => 50,
      'propertyset' => 0,
    ),
  ),
  '05ded4216c38be147ae50f6a13599bb6' => 
  array (
    'criteria' => 
    array (
      'pluginid' => 49,
      'event' => 'OnPageNotFound',
    ),
    'object' => 
    array (
      'pluginid' => 49,
      'event' => 'OnPageNotFound',
      'priority' => 50,
      'propertyset' => 0,
    ),
  ),
);