<?php
if($_GET['hello'] === ""){
	header("Location: /403.html");
	exit();
} 
echo strip_tags(trim($_GET['hello']));

$res = $modx->getObject('modResource',1);
echo $res->getTVValue('imageTV');