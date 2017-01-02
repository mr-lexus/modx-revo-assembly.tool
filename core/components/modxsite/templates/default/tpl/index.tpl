{extends file="layout.tpl"}
{block name=main}


<img src="{snippet name=phpthumbon params="input=`{field name=imageTV}`&options=`w=50&h=50&zc=1&f=jpg`"}" alt="">
<img src="{snippet name=phpthumbof params="input=`{field name=imageTV}`&options=`w=50&h=50&zc=1&f=jpg`"}" alt="">

{/block}