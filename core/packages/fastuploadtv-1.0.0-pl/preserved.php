<?php return array (
  '76895814edc36933b9fd867cb7d96ab6' => 
  array (
    'criteria' => 
    array (
      'name' => 'fastuploadtv',
    ),
    'object' => 
    array (
      'name' => 'FastUploadTV',
      'path' => '{core_path}components/fastuploadtv/',
      'assets_path' => '',
    ),
  ),
  'f728b17f5d9a2e60768b5b2b24dc15cd' => 
  array (
    'criteria' => 
    array (
      'name' => 'FastUploadTV',
    ),
    'object' => 
    array (
      'id' => 50,
      'source' => 0,
      'property_preprocess' => 0,
      'name' => 'FastUploadTV',
      'description' => 'FastUploadTV 1.0.0-beta2 plugin for MODx Revolution',
      'editor_type' => 0,
      'category' => 0,
      'cache_type' => 0,
      'plugincode' => '$corePath = $modx->getOption(\'core_path\',null,MODX_CORE_PATH).\'components/fastuploadtv/\';
$assetsUrl = $modx->getOption(\'assets_url\',null,MODX_ASSETS_URL).\'components/fastuploadtv/\';

$modx->lexicon->load(\'fastuploadtv:default\');

switch ($modx->event->name) {
    case \'OnTVInputRenderList\':
        $modx->event->output($corePath.\'elements/tv/input/\');
        break;
    case \'OnTVInputPropertiesList\':
        $modx->event->output($corePath.\'elements/tv/input/options/\');
        break;
    case \'OnDocFormPrerender\':
        $js  = $modx->getOption(\'assets_url\').\'components/fastuploadtv/mgr/js/\';
        $modx->regClientStartupScript($js.\'widgets/modx.form.filefield.js\');
        $modx->regClientStartupScript($js.\'FastUploadTV.js\');
        $modx->regClientStartupScript($js.\'FastUploadTV.form.FastUploadTVField.js\');
        break;
    case \'OnWebPageInit\':
        $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\',null,\'image,file\').\',fastuploadtv\';
        $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);
        break;
    case \'OnFileManagerUpload\':
        $translit = (bool)$modx->getOption(\'fastuploadtv.translit\', null, false);
        if ($translit) {
            $currentdoc = $modx->newObject(\'modResource\');
            foreach($files as $file)
            {
                if($file[\'error\'] == 0)
                {
                  $pathInfo = pathinfo($file[\'name\']);
                  $oldPath = $directory.$file[\'name\'];
                  $newPath = $currentdoc->cleanAlias($pathInfo[\'filename\']).\'.\'. $pathInfo[\'extension\'];
                  $source->renameObject($oldPath, $newPath);
                }
            }
        }
        break;
}',
      'locked' => 0,
      'properties' => NULL,
      'disabled' => 0,
      'moduleguid' => '',
      'static' => 0,
      'static_file' => '',
      'content' => '$corePath = $modx->getOption(\'core_path\',null,MODX_CORE_PATH).\'components/fastuploadtv/\';
$assetsUrl = $modx->getOption(\'assets_url\',null,MODX_ASSETS_URL).\'components/fastuploadtv/\';

$modx->lexicon->load(\'fastuploadtv:default\');

switch ($modx->event->name) {
    case \'OnTVInputRenderList\':
        $modx->event->output($corePath.\'elements/tv/input/\');
        break;
    case \'OnTVInputPropertiesList\':
        $modx->event->output($corePath.\'elements/tv/input/options/\');
        break;
    case \'OnDocFormPrerender\':
        $js  = $modx->getOption(\'assets_url\').\'components/fastuploadtv/mgr/js/\';
        $modx->regClientStartupScript($js.\'widgets/modx.form.filefield.js\');
        $modx->regClientStartupScript($js.\'FastUploadTV.js\');
        $modx->regClientStartupScript($js.\'FastUploadTV.form.FastUploadTVField.js\');
        break;
    case \'OnWebPageInit\':
        $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\',null,\'image,file\').\',fastuploadtv\';
        $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);
        break;
    case \'OnFileManagerUpload\':
        $translit = (bool)$modx->getOption(\'fastuploadtv.translit\', null, false);
        if ($translit) {
            $currentdoc = $modx->newObject(\'modResource\');
            foreach($files as $file)
            {
                if($file[\'error\'] == 0)
                {
                  $pathInfo = pathinfo($file[\'name\']);
                  $oldPath = $directory.$file[\'name\'];
                  $newPath = $currentdoc->cleanAlias($pathInfo[\'filename\']).\'.\'. $pathInfo[\'extension\'];
                  $source->renameObject($oldPath, $newPath);
                }
            }
        }
        break;
}',
    ),
  ),
  'c312caf5c711cc07fcf0a7a02e097dab' => 
  array (
    'criteria' => 
    array (
      'pluginid' => 50,
      'event' => 'OnTVInputRenderList',
    ),
    'object' => 
    array (
      'pluginid' => 50,
      'event' => 'OnTVInputRenderList',
      'priority' => 0,
      'propertyset' => 0,
    ),
  ),
  '5e8fc06bf1886eed50b0fcd47d6c3648' => 
  array (
    'criteria' => 
    array (
      'pluginid' => 50,
      'event' => 'OnTVInputPropertiesList',
    ),
    'object' => 
    array (
      'pluginid' => 50,
      'event' => 'OnTVInputPropertiesList',
      'priority' => 0,
      'propertyset' => 0,
    ),
  ),
  'cd411e840740b939a9b0da95aae6e23b' => 
  array (
    'criteria' => 
    array (
      'pluginid' => 50,
      'event' => 'OnDocFormPrerender',
    ),
    'object' => 
    array (
      'pluginid' => 50,
      'event' => 'OnDocFormPrerender',
      'priority' => 0,
      'propertyset' => 0,
    ),
  ),
  '990c79a116bd7e228c727919aec20adc' => 
  array (
    'criteria' => 
    array (
      'pluginid' => 50,
      'event' => 'OnFileManagerUpload',
    ),
    'object' => 
    array (
      'pluginid' => 50,
      'event' => 'OnFileManagerUpload',
      'priority' => 0,
      'propertyset' => 0,
    ),
  ),
  '095d8015ced1449ec81172100bc0f819' => 
  array (
    'criteria' => 
    array (
      'key' => 'fastuploadtv.translit',
    ),
    'object' => 
    array (
      'key' => 'fastuploadtv.translit',
      'value' => '1',
      'xtype' => 'combo-boolean',
      'namespace' => 'phpthumbon',
      'area' => '',
      'editedon' => '2016-08-17 09:49:52',
    ),
  ),
);