<?php

class modTemplateVarInputRenderCheckboxSortable extends modTemplateVarInputRender
{
    public $choices = array();
    public $prefix = 'checkboxsortable';

    public function render($value, array $params = array())
    {
        $id = 'tv'. $this->tv->get('id') .'-' . $this->prefix;
        $assetsURL = $this->modx->getOption("{$this->prefix}.assets_url", null, $this->modx->getOption('assets_url') . "components/{$this->prefix}/");
        $this->modx->controller->addJavascript($assetsURL . "{$this->prefix}.js");

        $this->modx->controller->addHtml('<script type="text/javascript">
            Ext.onReady(function() {
                MODx.load({
                    xtype: "checkboxsortable-grid"
                    ,renderTo: "'. $id .'"
                    ,tvParams: '. $this->modx->toJSON($params) .'
                    ,store: '. $this->setStore($value, $params) .'
                });
            });
        </script>');

        return '<div id="'. $id .'" class="'. $id .'"></div>';
    }

    public function setStore($value, array $params = array())
    {
        $data = $this->process($value, $params);

        $storeData = [];
        $tvID = $this->tv->get('id');
        foreach ($data as $idx => $v) {
            $storeData[] = array(
                "tv{$tvID}-{$idx}",
                "tv{$tvID}[]",
                "{$v['value']}",
                "{$v['label']}",
                $v['checked'] ? true : false
            );
        }

        return 'new Ext.data.Store({
            autoDestroy: true
            ,reader: new Ext.data.ArrayReader({}, [
                 {name: "id"}
                ,{name: "name"}
                ,{name: "value"}
                ,{name: "label"}
                ,{name: "checked"}
            ])
            ,data: '. $this->modx->toJSON($storeData) .'
        })';
    }

    public function process($value, array $params = array())
    {
        // Default value(s)
        $default = explode('||', $this->tv->default_text);
        $value = trim($value);
        // Current saved values or default
        $values = empty($value) ? $default : explode('||', $value);

        $this->prepareRecords();

        $options = array();
        if (!empty($values[0]) && count($values) > 0) {
            foreach ($values as $itemValue) {
                // Make sure the value exists in the possible choices
                if ($this->isValidValue($itemValue) !== false) {
                    $option = $this->choices[$itemValue];
                    $option['checked'] = true;
                    $options[] = $option;
                }
                unset($this->choices[$itemValue]);
            }
        }

        $options = count($options) > 0 ? array_merge($options, $this->choices) : $this->choices;
//        $this->modx->invokeEvent('BeforeOutputOptions', array(
//            'tv' => &$this,
//            'options' => $options,
//        ));

        //$this->setPlaceholder('opts', $options);

        return $options;
    }

    /**
     * Prepares the input options values to be usable within the grid store
     *
     * @return array The store array
     */
    public function prepareRecords()
    {
        $options = $this->getInputOptions();

        $inputOptions = array();
        foreach ($options as $inputOption) {
            $inputopt_array = (is_array($inputOption)) ? $inputOption : explode('==', $inputOption);
            $option['value'] = isset($inputopt_array[1]) ? $inputopt_array[1] : $inputopt_array[0];
            $option['label'] = htmlspecialchars($inputopt_array[0], ENT_COMPAT, $this->modx->getOption('modx_charset'));
            $option['checked'] = false;
            $inputOptions[$option['value']] = $option;
        }

        $this->choices = $inputOptions;
    }

    /**
     * Checks if the given value exist in the valid choices
     *
     * @param string $value The value to check
     * @return bool Whether or not the value is found
     */
    public function isValidValue($value)
    {
        foreach ($this->choices as $idx => $entry) {
            if ($entry['value'] == $value) return true;
        }

        return false;

    }
}

return 'modTemplateVarInputRenderCheckboxSortable';
