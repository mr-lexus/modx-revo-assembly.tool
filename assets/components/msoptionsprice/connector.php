<?php

require_once dirname(dirname(dirname(dirname(__FILE__)))) . '/config.core.php';
require_once MODX_CORE_PATH . 'config/' . MODX_CONFIG_KEY . '.inc.php';
require_once MODX_CONNECTORS_PATH . 'index.php';

$corePath = $modx->getOption('msoptionsprice_core_path', null, $modx->getOption('core_path') . 'components/msoptionsprice/');
require_once $corePath . 'model/msoptionsprice/msoptionsprice.class.php';
$modx->msoptionsprice = new msOptionsPrice($modx);

$modx->lexicon->load('msoptionsprice:default');

/* handle request */
$path = $modx->getOption('processorsPath', $modx->msoptionsprice->config, $corePath . 'processors/');
$modx->request->handleRequest(array(
	'processors_path' => $path,
	'location' => '',
));