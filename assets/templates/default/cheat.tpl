#================= Documentation ===========================================================#
# Documentation
http://www.fpublisher.ru/documentation/smarty_doc/ # smarty doc
#=== END Documentation =====================================================================#
{block name=pdoCrumbs}{/block}
#=== FIELD =================================================================================#
# field
{field name=pagetitle}
{field name=content}
{field name=imageTV}
#=== END FIELD =============================================================================#

#=== CONFIG ================================================================================#
# config
{config name=site_name}
{config name=site_url}
<base href="{config name=site_url}" />
#=== END CONFIG ============================================================================#

#=== SNIPPET ===============================================================================#
# snippet
{snippet name=pdoMenu params="parents=`0`"}
{snippet name=phpthumbon params="input=`{field name=imageTV}`&options=`w=500&h=500&zc=1&f=jpg`"}
#=== END SNIPPET ===========================================================================#

#=== IF ====================================================================================#
# if
{if $modx->getOption('site_start') == $modx->resource->id}home{else}not home{/if}
#=== END IF ================================================================================#

#=== PROCESSOR =============================================================================#
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
#=== END PROCESSOR =========================================================================#

#=== PARAMS ================================================================================#
#params
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
#=== END PARAMS ============================================================================#

#=== CONSTANT ==============================================================================#
{MODX_CORE_PATH} - абсолютный путь к ядру (оканчивается /CORE/)
{MODX_ASSETS_PATH} - абсолютный путь к активам (оканчивается /assets/)
{MODX_PROCESSORS_PATH} - абсолютный путь к процессорам (оканчивается /processors/)
{MODX_CONNECTORS_PATH} - абсолютный путь к коннекторам (оканчивается /connectors/)
{MODX_MANAGER_PATH} - абсолютный путь к админ части (оканчивается /manager/)
{MODX_BASE_PATH} - абсолютный путь к корню сайта, обчно то же самое, что и $_SERVER['DOCUMENT_ROOT']
{MODX_HTTP_HOST} - имя сайта (домен)
#=== CONSTANT ==============================================================================#

#=== MIGX TV ===============================================================================#
#migx return
{$value = json_decode($modx->resource->getTVValue('interior_migx'))}
{foreach $value as $key => $object}
	{$object = (array)$object}
	{$modx->makeUrl($product->get('id'))}
	{$object.pagetitle}
	{snippet name=phpthumbon params="input=`{field name=imageTV}`&options=`w=500&h=500&zc=1&f=jpg`"}
{/foreach}

#migx chunk
{$value = json_decode($modx->resource->getTVValue('tvName'))}
{$value = array_chunk((array)$value, 8)}
{foreach $value as $key => $object}
<div>
	{foreach $object as $key => $last_object}
	{$last_object = (array)$last_object}
	<div>
		{snippet name=phpthumbon params="input=`{$last_object.image}`&options=`w=500&h=500&zc=1&f=jpg`"}
		{last_object.text}
	</div>
	{/foreach}
</div>
{/foreach}
#=== END MIGX TV ===========================================================================#

#=== TVTable ===============================================================================#
[[TVTable?
	&tv=`id TV`
	&id=`id ресурса`
	&classname=`Классы таблицы`
]]
{snippet name=TVTable params="tv=`60`&id=`1`"}
{snippet name=TVTable params="tv=`60`"}
{snippet name=TVTableArray params="tv=`60`&id=`1`"}
{snippet name=TVTableArray params="tv=`60`"}
#=== END TVTable ===========================================================================#

#=== BLOCKS ================================================================================#
#block
{block name=js} # code {/block}

#literal
{literal} #js/json code {/literal}

#include
{include "blocks/head.tpl"}
#=== END BLOCKS ============================================================================#


#=== BENCHMARCK ============================================================================#
<ul>
	<li>[^qt^] - Query Time - Shows how long MODx took talking to the database</li>
	<li>[^q^] - Query Count -Shows how many database queries MODX made</li>
	<li>[^p^] - Parse Time - Shows how long MODX took to parse the page</li>
	<li>[^t^] - Total Time - Shows the total time taken to parse/ render the page</li>
	<li>[^s^] - Source - Shows the source of page, whether is database or cache.</li>
</ul>
#=== END BENCHMARCK ========================================================================#

#=== MODX API ==============================================================================#
{$modx->resource->get('id')} id текущего ресурса
{$modx->resource->getContent()} поле контент
{$modx->user->get('id')} id пользователя
{$modx->resource->get('pagetitle')}
{$modx->resource->getTVValue('imageTV')}

# получение TV по id ресурса
{$contact = $modx->getObject('modResource',28)}
{$contact->getTVValue('contactPhone')}
#=== END MODX API ==========================================================================#

#=== IDEA ==================================================================================#
Плагин обрезающий текст по длинне





















#===========================================================================================#
#=== TV PARAMS =============================================================================#
#===========================================================================================#
#migx
[{"caption":"gallery","fields": [
{"field":"image","caption":"Изображение","inputTV":"ImageTV"},
{"field":"alt","caption":"Альтернативный заголовок"},
{"field":"textarea_field","caption":"Текстовая область","inputTVtype":"textarea"},
{"field":"published", "caption":"Чекбокс", "inputTVtype":"checkbox", "inputOptionValues":"Да==1"}
{"field":"active","caption":"Активная","inputTVtype":"listbox","inputOptionValues":"Да==1||Нет==0"} 
]}]

[
{"header": "Баннер", "sortable": "false", "dataIndex": "image","renderer": "this.renderImage"},
{"header": "Альтернативный заголовок", "sortable": "false", "dataIndex": "alt", "width": "30"},
{"header": "Чекбокс", "dataIndex":"published", "show_in_grid":1, "renderer":"this.renderCrossTick"},
{"header": "Активный", "sortable": "false", "dataIndex": "active"}
]

#inputTVtype
{* 
autotag Авто-метка
text Текст
textarea Текстовая область
textareamini Текстовая область (мини)
richtext Текстовый редактор
dropdown Выпадающий список
listbox Список (одиночный выбор)
listbox  Список (множественный выбор)
list-multiple-legacy Устаревший список множественного выбора
option Переключатели (radio)
checkbox Флажки (checkbox)
image Изображение
file Файл
url URL
email Электронная почта
number Число
date Дата
tag Тег *}

#BINDINGS
------------------------------------------------------------------------------
#@FILE путь к файлу
@FILE /path/to/some_directory/file.php
------------------------------------------------------------------------------
#@RESOURCE идентификатор ресурса	
@RESOURCE 12
------------------------------------------------------------------------------
# @CHUNK имя чанка
@CHUNK chunk_name
------------------------------------------------------------------------------
#@SELECT sql запрос
@SELECT `username` AS `name`,`id` FROM `[[+PREFIX]]users` WHERE `active` = 1
@SELECT pagetitle, id FROM modx_site_content WHERE parent=27 AND id != [[+id]]
------------------------------------------------------------------------------
#@EVAL php-код
@EVAL "Hello".echo " world!";
------------------------------------------------------------------------------
#@DIRECTORY путь относительно корня
@DIRECTORY /path/to/some_directory
------------------------------------------------------------------------------
#@INLINE доступно в некоторых сниппетах (например, getResources), это специфический чанк, написанный в одну строку при вызове.

#===========================================================================================#
#===========================================================================================#







#===========================================================================================#
#=== TRICKS ================================================================================#
#===========================================================================================#

#=== Вызов MODX в статичном PHP файле ======================================================#
require_once '/var/www/config.core.php';
require_once MODX_CORE_PATH.'model/modx/modx.class.php';
$modx = new modX();
$modx->initialize('web');

#=== modMail — класс, расширяемый modPHPMailer =============================================#
$message = $modx->getChunk('myEmailTemplate');
 
$modx->getService('mail', 'mail.modPHPMailer');
$modx->mail->set(modMail::MAIL_BODY,$message);
$modx->mail->set(modMail::MAIL_FROM,'me@example.org');
$modx->mail->set(modMail::MAIL_FROM_NAME,'Johnny Tester');
$modx->mail->set(modMail::MAIL_SUBJECT,'Check out my new email template!');
$modx->mail->address('to','user@example.com');
$modx->mail->address('reply-to','me@xexample.org');
$modx->mail->setHTML(true);

if (!$modx->mail->send()) {
	$modx->log(modX::LOG_LEVEL_ERROR,'An error occurred while trying to send the email: '.$modx->mail->mailer->ErrorInfo);
}

$modx->mail->reset();
#===========================================================================================#
#===========================================================================================#




#===========================================================================================#
#=== NOT SORT ==============================================================================#
#===========================================================================================#
# 
{str_replace(array(")", "-", "(", " " ), "", $modx->resource->getTVValue('header_phone'))}
{$modx->resource->getTVValue('header_phone')}

#


Получаем ссылку на документ
$modx->makeUrl(12); // 12 - id документа
$modx->makeUrl(12, '', array('key' => 'value')); // Выведет адрес с get параметром

Данный код выведет полный url к документу.
$modx->makeUrl(12, '', '','full'); // 12 - id документа


Получаем объект документа
/* Для получения документа по Id, в данном примере получит документ с id 62 */
$resource = $modx->getObject('modResource', 62);
/* В данном примере будет получен документ с pagetitle равному Документ */
$resource = $modx->getObject('modResource', array('pagetitle' => 'Документ'));


Получаем и изменяем значения полей документа:
$resource->get('id'); // Получаем id документа
$resource->get('pagetitle'); // Получаем pagetitle документа
$resource->set('pagetitle', 'Новый заголовок'); // Заменяем pagetitle документа

$resource->getTVValue('price'); // Получаем значение ТВ поля price
$resource->setTVValue('price', '2000'); // Заменяем значение ТВ поля price


Создание документа:
$resource = $modx->newObject('modDocument'); // Создаем объект
$resource->set('template', 1); // Присваиваем документу нужный нам шаблон
$resource->set('pagetitle', 'Новый документ'); // Присваиваем документу pagetitle
$resource->set('parent', 5); // Выбираем родительский ресурс для документа
$resource->save(); // Сохраняем документ







