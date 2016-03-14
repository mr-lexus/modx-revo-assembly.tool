<html>
<head>
    <title>{block name="title"}{field name=pagetitle} - {config name=site_name}{/block}</title>
    <base href="{config name=site_url}" />
</head>
<body>
    <nav>{snippet name=pdoMenu params="parents=`0`"}</nav>
    <!-- {field name=content} -->

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
           <hr>
    {/foreach}
</body>
</html>