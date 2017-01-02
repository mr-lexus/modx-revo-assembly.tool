<?php

$msOptionsPrice = $modx->getService('msoptionsprice','msOptionsPrice',$modx->getOption('msoptionsprice_core_path',null,$modx->getOption('core_path').'components/msoptionsprice/').'model/msoptionsprice/',$scriptProperties);
if (!($msOptionsPrice instanceof msOptionsPrice)) return '';

$eventName = $modx->event->name;
if ( method_exists( $msOptionsPrice, $eventName ) && $msOptionsPrice->ms_op_active ) {
	$eventName = lcfirst($eventName);
	$msOptionsPrice->$eventName( $scriptProperties, $product );
}
