<?php
/**
 * Output filter to retrieve names of TVs from a list of TV IDs.
 *
 * @package toggletvset
 * @subpackage snippet
 *
 * @author info@pepebe.de,
 * @author thomas.jakobi@partout.info
 */

$tvIds = explode(',', $input);

$tvNames = array();
foreach ($tvIds as $tvId) {
    $tv = $modx->getObject('modTemplateVar', $tvId);
    if (!empty($tv)) {
        $tvNames[] = $tv->get('name');
    }
}

return implode(',', $tvNames);