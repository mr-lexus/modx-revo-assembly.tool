var ajson = msoptionsprice[msoptionsprice.option] != "" ? jQuery.parseJSON(msoptionsprice[msoptionsprice.option]) : {};
$('select[name="options['+msoptionsprice.option+']"]').change(function() {
    var spval = $(this).val();
    if (spval == 0) return false;
    $('.pr_change').html(ajson[spval]);
});

$(document).ready(function() {
    $('.pr_change').html(ajson[$('select[name="options['+msoptionsprice.option+']"] option:selected').val()]);
});
