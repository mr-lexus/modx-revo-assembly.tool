<?php
/**
 * @var modX $modx
 */

$id = 'checkboxsortable-properties-' . $modx->controller->getPlaceholder('tv');
$params = $modx->controller->getPlaceholder('params');

$output[] = '<div id="'. $id .'"></div>';

$output[] = '<script type="text/javascript">
    Ext.onReady(function() {
        MODx.load({
            xtype: "checkboxsortable-tv-properties"
            ,renderTo: "'. $id .'"
            ,record: '. $modx->toJSON($params) .'
        });
    });
</script>';

return implode("\n", $output);
