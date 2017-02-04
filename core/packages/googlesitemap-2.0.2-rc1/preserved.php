<?php return array (
  'a816c7982d8b36c5946d27a41baa0d2e' => 
  array (
    'criteria' => 
    array (
      'name' => 'GoogleSiteMap',
    ),
    'object' => 
    array (
      'id' => 112,
      'source' => 0,
      'property_preprocess' => 0,
      'name' => 'GoogleSiteMap',
      'description' => 'New GoogleSiteMap Snippet—many times faster than Version 1, but with less options. If params are specified that depend on the old version, it will be called.',
      'editor_type' => 0,
      'category' => 0,
      'cache_type' => 0,
      'snippet' => '/**
 * GoogleSiteMap
 *
 * Builds the Google SiteMap XML. 
 * Version 2+ of GoogleSiteMap uses code by Garry Nutting of the MODX Core Team to deliver sitemaps blazingly fast.
 *
 * @author YJ Tso <yj@modx.com>, Garry Nutting <garry@modx.com>
 *
 *
 * GoogleSiteMap is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation; either version 2 of the License, or (at your option) any
 * later version.
 *
 * GoogleSiteMap is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * GoogleSiteMap; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package googlesitemap
 */

// "300 lives of men I\'ve walked this earth and now I have no time"
ini_set(\'max_execution_time\', 0);

// Set cache options
// set $cacheKey prefix to be appended later
$cacheKey = $modx->getoption(\'cachePrefix\', $scriptProperties, \'googlesitemap\');
// subfolder of core/cache/
$cachePartition = $modx->getoption(\'cachePartition\', $scriptProperties, \'googlesitemap\');
$expires = $modx->getOption(\'cacheExpires\', $scriptProperties, 86400);
$options = array(
  xPDO::OPT_CACHE_KEY => $cachePartition,
);

// Set context(s)
$context = array_filter(array_map(\'trim\', explode(\',\', $modx->getOption(\'context\', $scriptProperties, $modx->context->get(\'key\'), true))));
$cacheKey .= \'.\' . md5($modx->toJSON($scriptProperties));

// Fetch from cache
$output = null;
$output = $modx->cacheManager->get($cacheKey, $options);
if ($output !== null) return $output;

/* Legacy Snippet handling */
$legacyProps = $modx->getOption(\'legacyProps\', $scriptProperties, \'allowedtemplates, excludeResources, excludeChildrenOf, sortByAlias, templateFilter, itemTpl, maxDepth, startId, where\');
$legacyProps = array_flip(array_filter(array_map(\'trim\', explode(\',\', $legacyProps))));
$legacyProps = array_intersect_key($scriptProperties, $legacyProps);
$legacySnippet = $modx->getOption(\'legacySnippet\', $scriptProperties, \'GoogleSiteMapVersion1\');

if (!empty($legacyProps) && $modx->getCount(\'modSnippet\', array(\'name\' => $legacySnippet))) {
    
    $output = $modx->runSnippet($legacySnippet, $scriptProperties);
    if ($output !== null) {
        $modx->cacheManager->set($cacheKey, $output, $expires, $options);
        return $output;
    }
    
}

/* Begin new Snippet scope */
$googleSchema = $modx->getOption(\'googleSchema\',$scriptProperties,\'http://www.sitemaps.org/schemas/sitemap/0.9\');

/* Map specified filter properties to new variables for convenience */
$filters = array();
if ($modx->getOption(\'hideDeleted\', $scriptProperties, true)) $filters[] =  \'s.deleted = 0\';
if (!$modx->getOption(\'showHidden\', $scriptProperties, false)) $filters[] = \'s.hidemenu = 0\';
if ($modx->getOption(\'published\', $scriptProperties, true)) $filters[] = \'s.published = 1\';
if ($modx->getOption(\'searchable\', $scriptProperties, true)) $filters[] = \'s.searchable = 1\';

/* Defaults from legacy snippet */
$sortBy = $modx->getOption(\'sortBy\', $scriptProperties, \'menuindex\');
$sortDir = $modx->getOption(\'sortDir\', $scriptProperties, \'ASC\');
$orderby = \'s.\' . strtolower($sortBy) . \' \' . strtoupper($sortDir);

$containerTpl = $modx->getOption(\'containerTpl\', $scriptProperties, \'gContainer\');
$priorityTV = $modx->getOption(\'priorityTV\', $scriptProperties, \'\');

/* Fetch TV ID if string provided */
if (!is_numeric($priorityTV)) {
    
    $c = $modx->newQuery(\'modTemplateVar\');
    $c->select(\'id\');
    $c->where(array(\'name\' => $priorityTV));
    $priorityTV = $modx->getValue($c->prepare());
    
}

/* Query by Context and set site_url / site_start */
$items = \'\';
// Set today\'s date for homepage lastmod
$today = date(\'Y-m-d\');
foreach ($context as $ctx) {
    
    $siteUrl = \'\';
    // Fetch current context object for site_url
    $currentCtx = $modx->getContext($ctx);
    if ($currentCtx) {
        $siteUrl = $currentCtx->getOption(\'site_url\');
        // Add site_url to output
        $items .= "<url><loc>{$siteUrl}</loc><lastmod>{$today}</lastmod></url>" . PHP_EOL;
    } 
    if (empty($siteUrl)) {
        // We need something to build the links with, even if no context setting
        $siteUrl = $modx->getOption(\'site_url\', null, MODX_SITE_URL);
    }
    
    $tablePrefix = $modx->getOption(\'table_prefix\');
    
    $filters[] = "s.context_key = \'{$ctx}\'";
    $criteria = implode(\' AND \', $filters);
    $tvQuery = \'\';
    if ($priorityTV) $tvQuery = "IFNULL(
        CONCAT(\'<priority>\',(
            SELECT value
            FROM " . $tablePrefix . "site_tmplvar_contentvalues
            USE INDEX (tv_cnt)
            WHERE contentid = s.id AND tmplvarid = " . $priorityTV . "
        ),\'</priority>\'),\'\'),";
        
    // Add all resources that meet criteria
    $stmt = $modx->query("
        SELECT
    	    GROUP_CONCAT(
                \'<url>\',        
                CONCAT(\'<loc>" . $siteUrl . "\',uri,\'</loc>\'),
                CONCAT(\'<lastmod>\',CASE editedon WHEN 0 THEN FROM_UNIXTIME(publishedon, \'%Y-%m-%d\') ELSE FROM_UNIXTIME(editedon, \'%Y-%m-%d\') END,\'</lastmod>\'),
                " . $tvQuery . "
                \'</url>\'
                SEPARATOR \'\'
            ) AS node
        FROM " . $tablePrefix . "site_content AS s
        WHERE " . $criteria . "
        GROUP BY s.id
        ORDER BY " . $orderby . "
    ");

    // Add to output
    if ($stmt) {
        $rows = $stmt->fetchAll(PDO::FETCH_COLUMN);
        $items .= implode(PHP_EOL, $rows);
    }
    
}

/* get container tpl and content */
$output = $modx->getChunk($containerTpl, array(
    \'schema\' => $googleSchema,
    \'items\' => $items,
));

if ($output !== null) {
    $modx->cacheManager->set($cacheKey, $output, $expires, $options);
    return $output;
} else {
    $modx->log(modX::LOG_LEVEL_WARN, \'GoogleSiteMap could not generate nor fetch a sitemap.\');
}',
      'locked' => 0,
      'properties' => 'a:15:{s:11:"cachePrefix";a:7:{s:4:"name";s:11:"cachePrefix";s:4:"desc";s:25:"prop_gsm.cacheprefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:13:"googlesitemap";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:14:"cachePartition";a:7:{s:4:"name";s:14:"cachePartition";s:4:"desc";s:28:"prop_gsm.cachepartition_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:13:"googlesitemap";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:12:"cacheExpires";a:7:{s:4:"name";s:12:"cacheExpires";s:4:"desc";s:26:"prop_gsm.cacheexpires_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:5:"86400";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:7:"context";a:7:{s:4:"name";s:7:"context";s:4:"desc";s:21:"prop_gsm.context_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:11:"hideDeleted";a:7:{s:4:"name";s:11:"hideDeleted";s:4:"desc";s:25:"prop_gsm.hidedeleted_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:10:"showHidden";a:7:{s:4:"name";s:10:"showHidden";s:4:"desc";s:24:"prop_gsm.showhidden_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:12:"googleSchema";a:7:{s:4:"name";s:12:"googleSchema";s:4:"desc";s:26:"prop_gsm.googleschema_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:43:"http://www.sitemaps.org/schemas/sitemap/0.9";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:9:"published";a:7:{s:4:"name";s:9:"published";s:4:"desc";s:23:"prop_gsm.published_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:10:"searchable";a:7:{s:4:"name";s:10:"searchable";s:4:"desc";s:24:"prop_gsm.searchable_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:6:"sortBy";a:7:{s:4:"name";s:6:"sortBy";s:4:"desc";s:20:"prop_gsm.sortby_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:9:"menuindex";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:7:"sortDir";a:7:{s:4:"name";s:7:"sortDir";s:4:"desc";s:21:"prop_gsm.sortdir_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"ASC";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:12:"containerTpl";a:7:{s:4:"name";s:12:"containerTpl";s:4:"desc";s:26:"prop_gsm.containertpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:10:"gContainer";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:10:"priorityTV";a:7:{s:4:"name";s:10:"priorityTV";s:4:"desc";s:24:"prop_gsm.prioritytv_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:11:"legacyProps";a:7:{s:4:"name";s:11:"legacyProps";s:4:"desc";s:25:"prop_gsm.legacyprops_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:117:"allowedtemplates, excludeResources, excludeChildrenOf, sortByAlias, templateFilter, itemTpl, maxDepth, startId, where";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:13:"legacySnippet";a:7:{s:4:"name";s:13:"legacySnippet";s:4:"desc";s:27:"prop_gsm.legacysnippet_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:21:"GoogleSiteMapVersion1";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}}',
      'moduleguid' => '',
      'static' => 0,
      'static_file' => '',
      'content' => '/**
 * GoogleSiteMap
 *
 * Builds the Google SiteMap XML. 
 * Version 2+ of GoogleSiteMap uses code by Garry Nutting of the MODX Core Team to deliver sitemaps blazingly fast.
 *
 * @author YJ Tso <yj@modx.com>, Garry Nutting <garry@modx.com>
 *
 *
 * GoogleSiteMap is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation; either version 2 of the License, or (at your option) any
 * later version.
 *
 * GoogleSiteMap is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * GoogleSiteMap; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package googlesitemap
 */

// "300 lives of men I\'ve walked this earth and now I have no time"
ini_set(\'max_execution_time\', 0);

// Set cache options
// set $cacheKey prefix to be appended later
$cacheKey = $modx->getoption(\'cachePrefix\', $scriptProperties, \'googlesitemap\');
// subfolder of core/cache/
$cachePartition = $modx->getoption(\'cachePartition\', $scriptProperties, \'googlesitemap\');
$expires = $modx->getOption(\'cacheExpires\', $scriptProperties, 86400);
$options = array(
  xPDO::OPT_CACHE_KEY => $cachePartition,
);

// Set context(s)
$context = array_filter(array_map(\'trim\', explode(\',\', $modx->getOption(\'context\', $scriptProperties, $modx->context->get(\'key\'), true))));
$cacheKey .= \'.\' . md5($modx->toJSON($scriptProperties));

// Fetch from cache
$output = null;
$output = $modx->cacheManager->get($cacheKey, $options);
if ($output !== null) return $output;

/* Legacy Snippet handling */
$legacyProps = $modx->getOption(\'legacyProps\', $scriptProperties, \'allowedtemplates, excludeResources, excludeChildrenOf, sortByAlias, templateFilter, itemTpl, maxDepth, startId, where\');
$legacyProps = array_flip(array_filter(array_map(\'trim\', explode(\',\', $legacyProps))));
$legacyProps = array_intersect_key($scriptProperties, $legacyProps);
$legacySnippet = $modx->getOption(\'legacySnippet\', $scriptProperties, \'GoogleSiteMapVersion1\');

if (!empty($legacyProps) && $modx->getCount(\'modSnippet\', array(\'name\' => $legacySnippet))) {
    
    $output = $modx->runSnippet($legacySnippet, $scriptProperties);
    if ($output !== null) {
        $modx->cacheManager->set($cacheKey, $output, $expires, $options);
        return $output;
    }
    
}

/* Begin new Snippet scope */
$googleSchema = $modx->getOption(\'googleSchema\',$scriptProperties,\'http://www.sitemaps.org/schemas/sitemap/0.9\');

/* Map specified filter properties to new variables for convenience */
$filters = array();
if ($modx->getOption(\'hideDeleted\', $scriptProperties, true)) $filters[] =  \'s.deleted = 0\';
if (!$modx->getOption(\'showHidden\', $scriptProperties, false)) $filters[] = \'s.hidemenu = 0\';
if ($modx->getOption(\'published\', $scriptProperties, true)) $filters[] = \'s.published = 1\';
if ($modx->getOption(\'searchable\', $scriptProperties, true)) $filters[] = \'s.searchable = 1\';

/* Defaults from legacy snippet */
$sortBy = $modx->getOption(\'sortBy\', $scriptProperties, \'menuindex\');
$sortDir = $modx->getOption(\'sortDir\', $scriptProperties, \'ASC\');
$orderby = \'s.\' . strtolower($sortBy) . \' \' . strtoupper($sortDir);

$containerTpl = $modx->getOption(\'containerTpl\', $scriptProperties, \'gContainer\');
$priorityTV = $modx->getOption(\'priorityTV\', $scriptProperties, \'\');

/* Fetch TV ID if string provided */
if (!is_numeric($priorityTV)) {
    
    $c = $modx->newQuery(\'modTemplateVar\');
    $c->select(\'id\');
    $c->where(array(\'name\' => $priorityTV));
    $priorityTV = $modx->getValue($c->prepare());
    
}

/* Query by Context and set site_url / site_start */
$items = \'\';
// Set today\'s date for homepage lastmod
$today = date(\'Y-m-d\');
foreach ($context as $ctx) {
    
    $siteUrl = \'\';
    // Fetch current context object for site_url
    $currentCtx = $modx->getContext($ctx);
    if ($currentCtx) {
        $siteUrl = $currentCtx->getOption(\'site_url\');
        // Add site_url to output
        $items .= "<url><loc>{$siteUrl}</loc><lastmod>{$today}</lastmod></url>" . PHP_EOL;
    } 
    if (empty($siteUrl)) {
        // We need something to build the links with, even if no context setting
        $siteUrl = $modx->getOption(\'site_url\', null, MODX_SITE_URL);
    }
    
    $tablePrefix = $modx->getOption(\'table_prefix\');
    
    $filters[] = "s.context_key = \'{$ctx}\'";
    $criteria = implode(\' AND \', $filters);
    $tvQuery = \'\';
    if ($priorityTV) $tvQuery = "IFNULL(
        CONCAT(\'<priority>\',(
            SELECT value
            FROM " . $tablePrefix . "site_tmplvar_contentvalues
            USE INDEX (tv_cnt)
            WHERE contentid = s.id AND tmplvarid = " . $priorityTV . "
        ),\'</priority>\'),\'\'),";
        
    // Add all resources that meet criteria
    $stmt = $modx->query("
        SELECT
    	    GROUP_CONCAT(
                \'<url>\',        
                CONCAT(\'<loc>" . $siteUrl . "\',uri,\'</loc>\'),
                CONCAT(\'<lastmod>\',CASE editedon WHEN 0 THEN FROM_UNIXTIME(publishedon, \'%Y-%m-%d\') ELSE FROM_UNIXTIME(editedon, \'%Y-%m-%d\') END,\'</lastmod>\'),
                " . $tvQuery . "
                \'</url>\'
                SEPARATOR \'\'
            ) AS node
        FROM " . $tablePrefix . "site_content AS s
        WHERE " . $criteria . "
        GROUP BY s.id
        ORDER BY " . $orderby . "
    ");

    // Add to output
    if ($stmt) {
        $rows = $stmt->fetchAll(PDO::FETCH_COLUMN);
        $items .= implode(PHP_EOL, $rows);
    }
    
}

/* get container tpl and content */
$output = $modx->getChunk($containerTpl, array(
    \'schema\' => $googleSchema,
    \'items\' => $items,
));

if ($output !== null) {
    $modx->cacheManager->set($cacheKey, $output, $expires, $options);
    return $output;
} else {
    $modx->log(modX::LOG_LEVEL_WARN, \'GoogleSiteMap could not generate nor fetch a sitemap.\');
}',
    ),
  ),
  '09cb6012716bdd3f83bf8f979f6713c8' => 
  array (
    'criteria' => 
    array (
      'name' => 'GoogleSiteMapVersion1',
    ),
    'object' => 
    array (
      'id' => 113,
      'source' => 0,
      'property_preprocess' => 0,
      'name' => 'GoogleSiteMapVersion1',
      'description' => 'Old GoogleSiteMap Snippet—many times SLOWER than new version, but with more options. Beware potential server errors trying to execute this Snippet.',
      'editor_type' => 0,
      'category' => 0,
      'cache_type' => 0,
      'snippet' => '/**
 * GoogleSiteMap (Version 1x)
 *
 * Copyright 2009-2010 by Shaun McCormick <shaun@modx.com>
 *
 * - Based on Michal Till\'s MODx Evolution GoogleSiteMap_XML snippet
 *
 * GoogleSiteMap is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation; either version 2 of the License, or (at your option) any
 * later version.
 *
 * GoogleSiteMap is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * GoogleSiteMap; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package googlesitemap
 */
/**
 * GoogleSiteMap for MODx Revolution
 *
 * @package googlesitemap
 */
require_once $modx->getOption(\'googlesitemap.core_path\',null,$modx->getOption(\'core_path\').\'components/googlesitemap/\').\'model/googlesitemap/googlesitemap.class.php\';
$GoogleSiteMap = new GoogleSiteMap($modx,$scriptProperties);

/* setup default properties */
$googleSchema = $modx->getOption(\'googleSchema\',$scriptProperties,\'http://www.sitemaps.org/schemas/sitemap/0.9\');
$containerTpl = $modx->getOption(\'containerTpl\',$scriptProperties,\'gContainer\');
$startId = (int)$modx->getOption(\'startId\',$scriptProperties,0);

/* get container tpl and content */
return $GoogleSiteMap->getChunk($containerTpl,array(
    \'schema\' => $googleSchema,
    \'items\' => $GoogleSiteMap->run($startId),
));',
      'locked' => 0,
      'properties' => 'a:19:{s:16:"allowedtemplates";a:7:{s:4:"name";s:16:"allowedtemplates";s:4:"desc";s:30:"prop_gsm.allowedtemplates_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:7:"context";a:7:{s:4:"name";s:7:"context";s:4:"desc";s:21:"prop_gsm.context_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:8:"maxDepth";a:7:{s:4:"name";s:8:"maxDepth";s:4:"desc";s:22:"prop_gsm.maxdepth_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:0;s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:11:"hideDeleted";a:7:{s:4:"name";s:11:"hideDeleted";s:4:"desc";s:25:"prop_gsm.hidedeleted_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:10:"showHidden";a:7:{s:4:"name";s:10:"showHidden";s:4:"desc";s:24:"prop_gsm.showhidden_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:12:"googleSchema";a:7:{s:4:"name";s:12:"googleSchema";s:4:"desc";s:26:"prop_gsm.googleschema_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:43:"http://www.sitemaps.org/schemas/sitemap/0.9";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:9:"published";a:7:{s:4:"name";s:9:"published";s:4:"desc";s:23:"prop_gsm.published_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:10:"searchable";a:7:{s:4:"name";s:10:"searchable";s:4:"desc";s:24:"prop_gsm.searchable_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:16:"excludeResources";a:7:{s:4:"name";s:16:"excludeResources";s:4:"desc";s:30:"prop_gsm.excluderesources_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:17:"excludeChildrenOf";a:7:{s:4:"name";s:17:"excludeChildrenOf";s:4:"desc";s:31:"prop_gsm.excludechildrenof_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:6:"sortBy";a:7:{s:4:"name";s:6:"sortBy";s:4:"desc";s:20:"prop_gsm.sortby_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:9:"menuindex";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:11:"sortByAlias";a:7:{s:4:"name";s:11:"sortByAlias";s:4:"desc";s:25:"prop_gsm.sortbyalias_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:11:"modResource";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:7:"sortDir";a:7:{s:4:"name";s:7:"sortDir";s:4:"desc";s:21:"prop_gsm.sortdir_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"ASC";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:14:"templateFilter";a:7:{s:4:"name";s:14:"templateFilter";s:4:"desc";s:28:"prop_gsm.templatefilter_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"id";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:7:"itemTpl";a:7:{s:4:"name";s:7:"itemTpl";s:4:"desc";s:21:"prop_gsm.itemtpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:5:"gItem";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:12:"containerTpl";a:7:{s:4:"name";s:12:"containerTpl";s:4:"desc";s:26:"prop_gsm.containertpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:10:"gContainer";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:7:"startId";a:7:{s:4:"name";s:7:"startId";s:4:"desc";s:21:"prop_gsm.startid_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:5:"where";a:7:{s:4:"name";s:5:"where";s:4:"desc";s:19:"prop_gsm.where_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}s:10:"priorityTV";a:7:{s:4:"name";s:10:"priorityTV";s:4:"desc";s:24:"prop_gsm.prioritytv_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:24:"googlesitemap:properties";s:4:"area";s:0:"";}}',
      'moduleguid' => '',
      'static' => 0,
      'static_file' => '',
      'content' => '/**
 * GoogleSiteMap (Version 1x)
 *
 * Copyright 2009-2010 by Shaun McCormick <shaun@modx.com>
 *
 * - Based on Michal Till\'s MODx Evolution GoogleSiteMap_XML snippet
 *
 * GoogleSiteMap is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation; either version 2 of the License, or (at your option) any
 * later version.
 *
 * GoogleSiteMap is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * GoogleSiteMap; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package googlesitemap
 */
/**
 * GoogleSiteMap for MODx Revolution
 *
 * @package googlesitemap
 */
require_once $modx->getOption(\'googlesitemap.core_path\',null,$modx->getOption(\'core_path\').\'components/googlesitemap/\').\'model/googlesitemap/googlesitemap.class.php\';
$GoogleSiteMap = new GoogleSiteMap($modx,$scriptProperties);

/* setup default properties */
$googleSchema = $modx->getOption(\'googleSchema\',$scriptProperties,\'http://www.sitemaps.org/schemas/sitemap/0.9\');
$containerTpl = $modx->getOption(\'containerTpl\',$scriptProperties,\'gContainer\');
$startId = (int)$modx->getOption(\'startId\',$scriptProperties,0);

/* get container tpl and content */
return $GoogleSiteMap->getChunk($containerTpl,array(
    \'schema\' => $googleSchema,
    \'items\' => $GoogleSiteMap->run($startId),
));',
    ),
  ),
);