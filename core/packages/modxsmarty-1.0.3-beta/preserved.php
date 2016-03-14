<?php return array (
  'ed32bec4e36cd7fdfbbf0cfd24e6d30a' => 
  array (
    'criteria' => 
    array (
      'name' => 'modxsmarty',
    ),
    'object' => 
    array (
      'name' => 'modxsmarty',
      'path' => '{core_path}components/modxsmarty/',
      'assets_path' => '{assets_path}components/modxsmarty/',
    ),
  ),
  'fe7ecddfb89375398c007d81238caaf2' => 
  array (
    'criteria' => 
    array (
      'name' => 'modxsmarty',
    ),
    'object' => 
    array (
      'name' => 'modxsmarty',
      'path' => '{core_path}components/modxsmarty/',
      'assets_path' => '{assets_path}components/modxsmarty/',
    ),
  ),
  '0fa903a357b48809a8a12419563f9733' => 
  array (
    'criteria' => 
    array (
      'key' => 'modxSmarty.template_dir',
    ),
    'object' => 
    array (
      'key' => 'modxSmarty.template_dir',
      'value' => '{core_path}components/modxsite/templates/',
      'xtype' => 'textfield',
      'namespace' => 'modxsmarty',
      'area' => 'site',
      'editedon' => '2015-12-26 08:44:52',
    ),
  ),
  'd73a0e85111719f3acd0223c50921f63' => 
  array (
    'criteria' => 
    array (
      'key' => 'modxSmarty.template',
    ),
    'object' => 
    array (
      'key' => 'modxSmarty.template',
      'value' => 'default',
      'xtype' => 'textfield',
      'namespace' => 'modxsmarty',
      'area' => 'site',
      'editedon' => '0000-00-00 00:00:00',
    ),
  ),
  '3b5018affdf7da2fe4fad35e329c17df' => 
  array (
    'criteria' => 
    array (
      'key' => 'modxSmarty.pre_template',
    ),
    'object' => 
    array (
      'key' => 'modxSmarty.pre_template',
      'value' => '',
      'xtype' => 'textfield',
      'namespace' => 'modxsmarty',
      'area' => 'site',
      'editedon' => '0000-00-00 00:00:00',
    ),
  ),
  '7fa619c20e00dc779e117ac373aa5e55' => 
  array (
    'criteria' => 
    array (
      'key' => 'modxSmarty.caching',
    ),
    'object' => 
    array (
      'key' => 'modxSmarty.caching',
      'value' => '0',
      'xtype' => 'combo-boolean',
      'namespace' => 'modxsmarty',
      'area' => 'site',
      'editedon' => '0000-00-00 00:00:00',
    ),
  ),
  '42cc346707ed5d331630d3905a3d69e3' => 
  array (
    'criteria' => 
    array (
      'key' => 'modxSmarty.cache_dir',
    ),
    'object' => 
    array (
      'key' => 'modxSmarty.cache_dir',
      'value' => '{core_path}cache/modxsmarty/',
      'xtype' => 'textfield',
      'namespace' => 'modxsmarty',
      'area' => 'site',
      'editedon' => '0000-00-00 00:00:00',
    ),
  ),
  '71385efa975969038162ce0904eb8882' => 
  array (
    'criteria' => 
    array (
      'key' => 'modxSmarty.cache_lifetime',
    ),
    'object' => 
    array (
      'key' => 'modxSmarty.cache_lifetime',
      'value' => '-1',
      'xtype' => 'textfield',
      'namespace' => 'modxsmarty',
      'area' => 'site',
      'editedon' => '0000-00-00 00:00:00',
    ),
  ),
  '6aefdb2f743154716a8bfabfe28d9c04' => 
  array (
    'criteria' => 
    array (
      'category' => 'modxSmarty',
    ),
    'object' => 
    array (
      'id' => 12,
      'parent' => 0,
      'category' => 'modxSmarty',
      'rank' => 0,
    ),
  ),
  '0d80fc376eca5cf2f3480ac6fb1d2570' => 
  array (
    'criteria' => 
    array (
      'name' => 'smarty',
    ),
    'object' => 
    array (
      'id' => 13,
      'source' => 0,
      'property_preprocess' => 0,
      'name' => 'smarty',
      'description' => 'Include Smarty-template',
      'editor_type' => 0,
      'category' => 12,
      'cache_type' => 0,
      'snippet' => 'foreach($scriptProperties as $key => $value){
    $modx->smarty->assign($key, $value);
}

return $modx->smarty->fetch($tpl);',
      'locked' => 0,
      'properties' => NULL,
      'moduleguid' => '',
      'static' => 0,
      'static_file' => '',
      'content' => 'foreach($scriptProperties as $key => $value){
    $modx->smarty->assign($key, $value);
}

return $modx->smarty->fetch($tpl);',
    ),
  ),
  '9588e4b1c2c7bae0430063b39cd87a61' => 
  array (
    'criteria' => 
    array (
      'name' => 'modxSmarty',
    ),
    'object' => 
    array (
      'id' => 9,
      'source' => 0,
      'property_preprocess' => 0,
      'name' => 'modxSmarty',
      'description' => 'Основнойплагин компонента modxSmarty',
      'editor_type' => 0,
      'category' => 12,
      'cache_type' => 0,
      'plugincode' => '// Инициализируем Смарти
  
$core_path = $modx->getOption(\'modxSmarty.core_path\', $scriptProperties, $modx->getOption(\'core_path\', null).\'components/modxsmarty/\');
$template_dir = $modx->getOption(\'modxSmarty.template_dir\', $scriptProperties, $core_path.\'templates/\');
$template = $modx->getOption(\'modxSmarty.template\', $scriptProperties, \'default\');
$cache_dir = $modx->getOption(\'modxSmarty.cache_dir\', $scriptProperties, $modx->getOption(\'core_path\', null).\'cache/modxsmarty/\');

if(!$compile_dir = $modx->getOption(\'modxSmarty.compile_dir\', $scriptProperties, null)){
    $compile_dir = "{$core_path}compiled/";
}

$config = array(
    \'template_dir\'      => $template_dir."{$template}/",
    \'compile_dir\'       => $compile_dir,
    \'cache_dir\'         => $cache_dir,
    \'caching\'           => $modx->getOption(\'modxSmarty.caching\', $scriptProperties, false),
    \'cache_lifetime\'    => $modx->getOption(\'modxSmarty.cache_lifetime\', $scriptProperties, -1),
);

switch($modx->event->name){
    case \'OnHandleRequest\':
        
        if(
            $modx->context->key == \'mgr\'
            OR (isset($modx->smarty) && is_object($modx->smarty))
        ){
            return;
        }
        
        $smarty = $modx->getService(\'smarty\', \'modxSmarty\', MODX_CORE_PATH . \'components/modxsmarty/model/modxSmarty/\', $config);
            
        $templates = array();
        
        $_compile_dir = "{$template}/";
        
        if($pre_template = $modx->getOption(\'modxSmarty.pre_template\', null, false)){
            $templates[\'prepend\'] = $template_dir."{$pre_template}/";
            $modx->smarty->assign(\'pre_template\', $pre_template);
            $modx->smarty->assign(\'pre_template_url\', $modx->getOption(\'modxSite.template_url\'). $pre_template .\'/\');
            $_compile_dir .= "{$pre_template}/";
        } 
        
        $_compile_dir .= $modx->context->key. "/";
        
        $templates[\'main\'] = $template_dir."{$template}/"; 
        $smarty->setTemplateDir($templates);
        $smarty->setCompileDir($config[\'compile_dir\']. $_compile_dir);
        
        /*
            http://www.smarty.net/forums/viewtopic.php?p=87138&sid=03237308442c46664f9a5a80353eb277#87138
            Set $smarty->inheritance_merge_compiled_includes = false;
            You must delete the existing compiled and cache files after this modification. The files must be rebuild.
        */
        $smarty->inheritance_merge_compiled_includes = false;  
     
        $plugins_dir = array(
            $core_path.\'smarty_plugins\',
        );
        $modx->smarty->addPluginsDir($plugins_dir);
        $modx->smarty->assign(\'modx\', $modx);
        $modx->smarty->assign(\'template_url\', $modx->getOption(\'modxSite.template_url\'). $template .\'/\');
         
        break;
    
    case \'OnSiteRefresh\':
        $modx->setOption(\'extensions\', array(\'.tpl.php\'));
        $modx->cacheManager->deleteTree($config[\'cache_dir\'], array(
            \'extensions\' => array(\'.tpl.php\'),
        ));
        $modx->cacheManager->deleteTree($config[\'compile_dir\'], array(
            \'extensions\' => array(\'.tpl.php\'),
        ));
        
        break;
    
    default:;
}',
      'locked' => 0,
      'properties' => NULL,
      'disabled' => 0,
      'moduleguid' => '',
      'static' => 0,
      'static_file' => '',
      'content' => '// Инициализируем Смарти
  
$core_path = $modx->getOption(\'modxSmarty.core_path\', $scriptProperties, $modx->getOption(\'core_path\', null).\'components/modxsmarty/\');
$template_dir = $modx->getOption(\'modxSmarty.template_dir\', $scriptProperties, $core_path.\'templates/\');
$template = $modx->getOption(\'modxSmarty.template\', $scriptProperties, \'default\');
$cache_dir = $modx->getOption(\'modxSmarty.cache_dir\', $scriptProperties, $modx->getOption(\'core_path\', null).\'cache/modxsmarty/\');

if(!$compile_dir = $modx->getOption(\'modxSmarty.compile_dir\', $scriptProperties, null)){
    $compile_dir = "{$core_path}compiled/";
}

$config = array(
    \'template_dir\'      => $template_dir."{$template}/",
    \'compile_dir\'       => $compile_dir,
    \'cache_dir\'         => $cache_dir,
    \'caching\'           => $modx->getOption(\'modxSmarty.caching\', $scriptProperties, false),
    \'cache_lifetime\'    => $modx->getOption(\'modxSmarty.cache_lifetime\', $scriptProperties, -1),
);

switch($modx->event->name){
    case \'OnHandleRequest\':
        
        if(
            $modx->context->key == \'mgr\'
            OR (isset($modx->smarty) && is_object($modx->smarty))
        ){
            return;
        }
        
        $smarty = $modx->getService(\'smarty\', \'modxSmarty\', MODX_CORE_PATH . \'components/modxsmarty/model/modxSmarty/\', $config);
            
        $templates = array();
        
        $_compile_dir = "{$template}/";
        
        if($pre_template = $modx->getOption(\'modxSmarty.pre_template\', null, false)){
            $templates[\'prepend\'] = $template_dir."{$pre_template}/";
            $modx->smarty->assign(\'pre_template\', $pre_template);
            $modx->smarty->assign(\'pre_template_url\', $modx->getOption(\'modxSite.template_url\'). $pre_template .\'/\');
            $_compile_dir .= "{$pre_template}/";
        } 
        
        $_compile_dir .= $modx->context->key. "/";
        
        $templates[\'main\'] = $template_dir."{$template}/"; 
        $smarty->setTemplateDir($templates);
        $smarty->setCompileDir($config[\'compile_dir\']. $_compile_dir);
        
        /*
            http://www.smarty.net/forums/viewtopic.php?p=87138&sid=03237308442c46664f9a5a80353eb277#87138
            Set $smarty->inheritance_merge_compiled_includes = false;
            You must delete the existing compiled and cache files after this modification. The files must be rebuild.
        */
        $smarty->inheritance_merge_compiled_includes = false;  
     
        $plugins_dir = array(
            $core_path.\'smarty_plugins\',
        );
        $modx->smarty->addPluginsDir($plugins_dir);
        $modx->smarty->assign(\'modx\', $modx);
        $modx->smarty->assign(\'template_url\', $modx->getOption(\'modxSite.template_url\'). $template .\'/\');
         
        break;
    
    case \'OnSiteRefresh\':
        $modx->setOption(\'extensions\', array(\'.tpl.php\'));
        $modx->cacheManager->deleteTree($config[\'cache_dir\'], array(
            \'extensions\' => array(\'.tpl.php\'),
        ));
        $modx->cacheManager->deleteTree($config[\'compile_dir\'], array(
            \'extensions\' => array(\'.tpl.php\'),
        ));
        
        break;
    
    default:;
}',
    ),
  ),
  '932a9d8164747a0d476661ee9b5c30aa' => 
  array (
    'criteria' => 
    array (
      'pluginid' => 9,
      'event' => 'OnHandleRequest',
    ),
    'object' => 
    array (
      'pluginid' => 9,
      'event' => 'OnHandleRequest',
      'priority' => 0,
      'propertyset' => 0,
    ),
  ),
  '6c0dc276c8ea972c10302765cb93779e' => 
  array (
    'criteria' => 
    array (
      'pluginid' => 9,
      'event' => 'OnSiteRefresh',
    ),
    'object' => 
    array (
      'pluginid' => 9,
      'event' => 'OnSiteRefresh',
      'priority' => 0,
      'propertyset' => 0,
    ),
  ),
);