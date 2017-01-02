{* {snippet name=strict_url} *}
<html>
<head>
	<title>{block name="title"}{if $modx->resource->getTVValue('seoTitle')}{$modx->resource->getTVValue('seoTitle')}{else}{$modx->resource->get('pagetitle')} - {$modx->getOption('site_name')}{/if}{/block}</title>
	<meta name=”description” content="{$modx->resource->getTVValue('seoDescription')}"/>
	<meta name=”keywords” content="{$modx->resource->getTVValue('seoKeywords')}" />
	<meta http-equiv="content-language" content="ru" />
	<meta charset="utf-8" />
	<base href="{$modx->getOption('site_url')}" />
</head>
<body>
{* Heder *}

{block name=main}{/block}
{* Footer *}
<script src="assets/public/js/jquery-1.12.4.min.js"></script>
</body>
</html>