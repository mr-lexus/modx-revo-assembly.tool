<?php
/**
 * ImagePlus Snippet as alternative to Image+ TV Output Type
 *
 * Copyright 2013-2015 by Alan Pich <alan.pich@gmail.com>
 * Copyright 2015-2016 by Thomas Jakobi <thomas.jakobi@partout.info>
 *
 * @package imageplus
 * @subpackage snippet
 *
 * @author Alan Pich <alan.pich@gmail.com>
 * @author Thomas Jakobi <thomas.jakobi@partout.info>
 * @copyright Alan Pich 2013-2015
 * @copyright Thomas Jakobi 2015-2016
 *
 * @var modX $modx
 * @var array $scriptProperties
 */

$corePath = $modx->getOption('imageplus.core_path', null, $modx->getOption('core_path') . 'components/imageplus/');
$imageplus = $modx->getService('imageplus', 'ImagePlus', $corePath . 'model/imageplus/', array(
    'core_path' => $corePath
));

$tvname = $modx->getOption('tvname', $scriptProperties, '', true);
$docid = $modx->getOption('docid', $scriptProperties, $modx->resource->get('id'), true);
$type = $modx->getOption('type', $scriptProperties, '', true);
$options = $modx->getOption('options', $scriptProperties, '', true);
$tpl = $modx->getOption('tpl', $scriptProperties, 'ImagePlus.image', true);
$value = $modx->getOption('value', $scriptProperties, '', true);
$debug = $modx->getOption('debug', $scriptProperties, $imageplus->getOption('debug'), false);

if ($value) {
    // Value is set by snippet property
    $data = json_decode($value);
    if (!$data) {
        if ($debug) {
            $modx->log(xPDO::LOG_LEVEL_ERROR, 'Unable to decode JSON in snippet property', '', 'Image+');
            return 'Unable to decode JSON in snippet property';
        }
    }
    // No TV is used
    $tv = null;
} else {
    // Value is retreived from template variable
    $tv = $modx->getObject('modTemplateVar', array('name' => $tvname));
    if ($tv) {
        // Get the raw content of the TV
        $value = $tv->getValue($docid);
        $value = $tv->processBindings($value, $docid);
    } else {
        if ($debug) {
            $modx->log(xPDO::LOG_LEVEL_ERROR, "Template Variable '{$tvname}' not found.", '', 'Image+');
            return "Template Variable '{$tvname}' not found.";
        }
    }
}

$output = '';
// Render output
switch ($type) {
    case 'check':
        $data = json_decode($value);
        $output = ($data && $data->sourceImg->src) ? 'image' : 'noimage';
        break;
    case 'tpl':
        $output = ($value) ? $imageplus->getImageURL($value, array_merge($scriptProperties, array(
            'docid' => $docid,
            'phpThumbParams' => $options,
            'outputChunk' => $tpl
        )), $tv) : '';
        break;
    case 'thumb':
    default:
        $output = ($value) ? $imageplus->getImageURL($value, array_merge($scriptProperties, array(
            'docid' => $docid,
            'phpThumbParams' => $options
        )), $tv) : '';
        break;
}
return $output;
