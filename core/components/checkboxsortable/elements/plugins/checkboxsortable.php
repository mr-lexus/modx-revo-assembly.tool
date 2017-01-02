<?php
/**
 * @var modX $modx
 * @var array $scriptProperties
 */
$corePath = $modx->getOption('checkboxsortable.core_path', null, $modx->getOption('core_path') . 'components/checkboxsortable/');
$assetsURL = $modx->getOption('checkboxsortable.assets_url', null, $modx->getOption('assets_url') . 'components/checkboxsortable/');
$modx->lexicon->load('checkboxsortable:default');
$lexicons = $modx->lexicon->loadCache('checkboxsortable', 'default');

switch ($modx->event->name) {

    case 'OnDocFormPrerender':
    case 'OnTVFormPrerender':
        $modx->controller->addHtml('<script type="text/javascript">
    Ext.applyIf(MODx.lang, '. $modx->toJSON($lexicons) .');
</script>');
        //$modx->regClientStartupScript($assetsURL . 'checkboxsortable.js');
        if ('OnTVFormPrerender' == $modx->event->name) {
            // Load JS for input properties
            $modx->regClientStartupScript($assetsURL . 'checkboxsortable-properties.js');
        }
        break;

    case 'OnTVInputRenderList':
        $modx->event->output($corePath. 'elements/tv/input/');
        break;

    case 'OnTVInputPropertiesList':
        $modx->event->output($corePath. 'elements/tv/properties/');
        break;

//    case 'OnTVOutputRenderList':
//        $modx->event->output($corePath. 'elements/tv/output/');
//        break;
}
return;
