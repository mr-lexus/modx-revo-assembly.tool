{snippet name=strict_url}
<html>
<head>
	<title>{block name="title"}{field name=pagetitle} - {config name=site_name}{/block}</title>
	<base href="{config name=site_url}" />
</head>
<body>

{block name=main}{/block}

</body>
</html>