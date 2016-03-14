#=====================================================================================#
# Documentation
http://www.fpublisher.ru/documentation/smarty_doc/ # smarty doc


#=====================================================================================#
# field
{field name=pagetitle}
{field name=content}

#=====================================================================================#
# config
{config name=site_name}
{config name=site_url}

#=====================================================================================#
# snippet
{snippet name=pdoMenu params="parents=`0`"}

#=====================================================================================#
# snippet
{$modx->getChunk('snippet')}

#=====================================================================================#    
# if
{if $modx->getOption('site_start') == $modx->resource->id}home{else}not home{/if}

#=====================================================================================#
# getdata
{assign var=params value=[
    "where" => [
        "publishedon:!=" => 0,
        "parent" => 6
    ],
    "limit" => 0,
    "sort" => "publishedon",
    "dir" => "DESC",
    "getPage" => true
]}
{processor action="web/getdata" ns="shopmodx" params=$params assign=value}
{foreach $value.object as $object}
       <p>{$object.pagetitle}</p>
       <p>{$object.alias}</p>
       {if $object.tvs.test1.value}<p>{$object.tvs.test1.value}</p>{/if}
       <a href="[[~{$object.id}]]">{$object.pagetitle}</a>
       {date('Y-m-d',$object.publishedon)}
       <hr>
{/foreach}

#=====================================================================================#
#params
{block name=page_params}
    {$server_protocol = $modx->getOption('server_protocol')}
    {$site_url = $modx->getOption('site_url')}
    {$http_host = $modx->getOption('http_host')}
    {$mobile_host = $modx->getOption('mobile_host')}
    {$mobile_host_url = "{$server_protocol}://{$mobile_host}/"}
    {$site_name = $modx->getOption('site_name')}
    {$site_start = $modx->getOption('site_start')}
    {$cultureKey = $modx->getOption('cultureKey')}
    {$assets_url = $modx->getOption('assets_url')}
    {$container_class = "container"}
    {$canonical_site_url = $site_url}
    {$left_block_class = 'col-xs-12 col-md-9'}
    {$right_block_class = 'col-xs-12 col-md-3'}
    {$logo_text = "ModX"}
{/block}


{block name=js}
    {literal}
    #js/json code
    {/literal}
{/block}

{include "blocks/head.tpl"}








