<?php
/**
 * Output filter that retrieves the label of a corresponding TV value.
 *
 * @package toggletvset
 * @subpackage snippet
 *
 * @author info@pepebe.de,
 * @author thomas.jakobi@partout.info
 */

$name = (!empty($options)) ? str_replace($options, '', $name) : $name;
$tv = $modx->getObject('modTemplateVar', array('name' => $name));

$elements = (!empty($tv)) ? explode('||', $tv->get('elements')) : array();

$output = '';
foreach ($elements as $key => $element) {
    $element = explode('==', $element);

    if ($element[1] == $input) {
        $output = $element[0];
        break;
    }
}

return $output;