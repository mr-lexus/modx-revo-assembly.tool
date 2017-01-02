{extends file="layout.tpl"}
{block name=main}

{$modx->resource->get('content')}
<img src="{snippet name=phpthumbon params="input=`{field name=imageTV}`&options=`w=300&h=100&zc=1&f=jpg`"}" alt="">
<img src="{snippet name=phpthumbof params="input=`{field name=imageTV}`&options=`w=150&h=150&zc=1&f=jpg`"}" alt="">

{/block}