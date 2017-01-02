## Examples

**Image+* could be used for several purposes. On this page you find some examples how to use it:

### MIGX

If you want to use *Image+* in MIGX you could define all *Image+* TV properties with a JSON string in the 'Configs' textarea in the MIGX formtabs field configuration. The following properties are possible.

```
{
"targetWidth":"",
"targetHeight":"",
"targetRatio":"",
"thumbnailWidth":"",
"allowAltTag":""
}
```

You could show the thumbnail in the grid column by setting the renderer to 'ImagePlus.MIGX_Renderer'. At the moment you have to raw edit a MIGX configuration for that.

<!-- Piwik -->
<script type="text/javascript">
  var _paq = _paq || [];
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
    var u="//piwik.partout.info/";
    _paq.push(['setTrackerUrl', u+'piwik.php']);
    _paq.push(['setSiteId', 13]);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
  })();
</script>
<noscript><p><img src="//piwik.partout.info/piwik.php?idsite=13" style="border:0;" alt="" /></p></noscript>
<!-- End Piwik Code -->

### getResources

In order for the TV to be parsed with getResources, make sure you add the following line to your getResources call:

```
&processTVs=`name_of_your_tv`
```
