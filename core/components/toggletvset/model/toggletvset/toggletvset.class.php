<?php

/**
 * Main Class for ToggleTVSet
 *
 * @package toggletvset
 * @subpackage class
 *
 * @author info@pepebe.de,
 * @author thomas.jakobi@partout.info
 */
class ToggleTVSet
{
    /**
     * A reference to the modX instance
     * @var modX $modx
     */
    public $modx;

    /**
     * The namespace
     * @var string $namespace
     */
    public $namespace = 'toggletvset';

    /**
     * The version
     * @var string $version
     */
    public $version = '1.2.3';

    /**
     * The class options
     * @var array $options
     */
    public $options = array();

    /**
     * ToggleTVSet constructor
     *
     * @param modX $modx A reference to the modX instance.
     * @param array $options An array of options. Optional.
     */
    function __construct(modX &$modx, $options = array())
    {
        $this->modx = &$modx;

        $corePath = $this->getOption('core_path', $options, $this->modx->getOption('core_path') . 'components/' . $this->namespace . '/');
        $assetsPath = $this->getOption('assets_path', $options, $this->modx->getOption('assets_path') . 'components/' . $this->namespace . '/');
        $assetsUrl = $this->getOption('assets_url', $options, $this->modx->getOption('assets_url') . 'components/' . $this->namespace . '/');

        // Load some default paths for easier management
        $this->options = array_merge(array(
            'namespace' => $this->namespace,
            'version' => $this->version,
            'assetsPath' => $assetsPath,
            'assetsUrl' => $assetsUrl,
            'cssUrl' => $assetsUrl . 'css/',
            'jsUrl' => $assetsUrl . 'js/',
            'imagesUrl' => $assetsUrl . 'images/',
            'corePath' => $corePath,
            'modelPath' => $corePath . 'model/',
            'vendorPath' => $corePath . 'vendor/',
            'chunksPath' => $corePath . 'elements/chunks/',
            'pagesPath' => $corePath . 'elements/pages/',
            'snippetsPath' => $corePath . 'elements/snippets/',
            'pluginsPath' => $corePath . 'elements/plugins/',
            'controllersPath' => $corePath . 'controllers/',
            'processorsPath' => $corePath . 'processors/',
            'templatesPath' => $corePath . 'templates/',
            'connectorUrl' => $assetsUrl . 'connector.php',
        ), $options);

        // set default options
        $toggletvs = $this->getOption('toggletvs');
        $this->options = array_merge($this->options, array(
            'debug' => (boolean)$this->getOption('debug'),
            'toggletvs' => ($toggletvs) ? array_map('trim', explode(',', $toggletvs)) : array()
        ));

        $hidetvs = array();
        $showtvs = array();

        foreach ($this->options['toggletvs'] as $toggletv) {
            $toggletv = intval($toggletv);
            $tv = $this->modx->getObject('modTemplateVar', $toggletv);

            if ($tv) {
                $elements = $tv->get('elements');
                $elements = explode('||', $elements);

                foreach ($elements as $element) {
                    $element = explode('==', $element);
                    if (isset($element[1])) {
                        $hidetvs = array_merge($hidetvs, array_map('trim', explode(',', $element[1])));
                    }
                }
                $hidetvs = array_values(array_unique($hidetvs));
                if ($this->modx->resource) {
                    $tvr = $modx->getObject('modTemplateVarResource', array(
                        'tmplvarid' => $toggletv,
                        'contentid' => $this->modx->resource->get('id')
                    ));
                    if ($tvr) {
                        $tvvalue = $tvr->get('value');
                    } else {
                        $tv = $modx->getObject('modTemplateVar', $toggletv);
                        $tvvalue = ($tv) ? $tv->get('default_text') : '';
                    }
                    if ($tvvalue) {
                        $showtvs = array_merge($showtvs, array_map('trim', explode(',', $tvvalue)));
                    }
                }
                $showtvs = array_values(array_unique($showtvs));
            }
        }

        $this->options['hidetvs'] = $hidetvs;
        $this->options['showtvs'] = $showtvs;

        $this->modx->lexicon->load($this->namespace . ':default');
    }

    /**
     * Get a local configuration option or a namespaced system setting by key.
     *
     * @param string $key The option key to search for.
     * @param array $options An array of options that override local options.
     * @param mixed $default The default value returned if the option is not found locally or as a
     * namespaced system setting; by default this value is null.
     * @return mixed The option value or the default value specified.
     */
    public function getOption($key, $options = array(), $default = null)
    {
        $option = $default;
        if (!empty($key) && is_string($key)) {
            if ($options != null && array_key_exists($key, $options)) {
                $option = $options[$key];
            } elseif (array_key_exists($key, $this->options)) {
                $option = $this->options[$key];
            } elseif (array_key_exists("{$this->namespace}.{$key}", $this->modx->config)) {
                $option = $this->modx->getOption("{$this->namespace}.{$key}");
            }
        }
        return $option;
    }

    /**
     * Gets a context-aware setting through $this->getOption, and casts the value to a true boolean automatically,
     * including strings "false" and "no" which are sometimes set that way by ExtJS.
     *
     * @param string $name
     * @param array $options
     * @param bool $default
     * @return bool
     */
    public function getBooleanOption($name, array $options = null, $default = null)
    {
        $option = $this->getOption($name, $options, $default);
        return $this->castValueToBool($option);
    }

    /**
     * Turns a value into a boolean. This checks for "false" and "no" strings, as well as anything PHP can automatically
     * cast to a boolean value.
     *
     * @param $value
     * @return bool
     */
    public function castValueToBool($value)
    {
        if (in_array(strtolower($value), array('false', 'no'))) {
            return false;
        }
        return (bool)$value;
    }

    /**
     * Register the client scripts
     */
    public function regClientScripts()
    {
        $this->modx->regClientStartupHTMLBlock('<script type="text/javascript">' .
            'var ToggleTVSet = {"options": ' . json_encode(array(
                'debug' => $this->getOption('debug'),
                'toggleTVs' => $this->getOption('toggletvs'),
                'toggleTVsClearHidden' => $this->getBooleanOption('toggletvs_clearhidden'),
                'hideTVs' => $this->getOption('hidetvs'),
                'showTVs' => $this->getOption('showtvs')
            )) . '};' . '</script>');
        if ($this->options['debug'] && strpos($this->options['assetsUrl'], 'develop/toggletvset/') !== false) {
            $this->modx->regClientStartupScript($this->options['assetsUrl'] . 'mgr/js/toggletvset.js?v=v' . $this->version);
        } else {
            $this->modx->regClientStartupScript($this->options['assetsUrl'] . 'mgr/js/toggletvset.min.js?v=v' . $this->version);
        }
    }
}
