<?php
/**
 * toogleTVSet runtime hooks
 *
 * @package toggletvset
 * @subpackage plugin
 *
 * @event   OnDocFormPreRender
 *
 * @author info@pepebe.de,
 * @author thomas.jakobi@partout.info
 */

$corePath = $modx->getOption('toggletvset.core_path', null, $modx->getOption('core_path') . 'components/toggletvset/');
$assetsUrl = $modx->getOption('toggletvset.assets_url', null, $modx->getOption('assets_url') . 'components/toggletvset/');

$toggletvset = $modx->getService('toggletvset', 'ToggleTVSet', $corePath . 'model/toggletvset/', array(
    'core_path' => $corePath
));

switch ($modx->event->name) {
    case 'OnDocFormPrerender':
        $toggletvset->regClientScripts();
        break;
};
