<?php return array (
  '7cf3fc70060748f96129b0d2d2b6e0c3' => 
  array (
    'criteria' => 
    array (
      'name' => 'upgrademodx',
    ),
    'object' => 
    array (
      'name' => 'upgrademodx',
      'path' => '{core_path}components/upgrademodx/',
      'assets_path' => '{assets_path}components/upgrademodx/',
    ),
  ),
  '11a300679b64dc2b7b120675a77c79e8' => 
  array (
    'criteria' => 
    array (
      'name' => 'Upgrade MODX',
    ),
    'object' => 
    array (
      'id' => 8,
      'name' => 'Upgrade MODX',
      'description' => 'Upgrade MODX Widget',
      'type' => 'snippet',
      'content' => 'UpgradeMODXWidget',
      'namespace' => 'upgrademodx',
      'lexicon' => 'upgrademodx:default',
      'size' => 'half',
      'name_trans' => 'Upgrade MODX',
      'description_trans' => 'Upgrade MODX Widget',
    ),
  ),
  '893b66d8b55f7c04ed3a893a2b985682' => 
  array (
    'criteria' => 
    array (
      'category' => 'UpgradeMODX',
    ),
    'object' => 
    array (
      'id' => 73,
      'parent' => 0,
      'category' => 'UpgradeMODX',
      'rank' => 0,
    ),
  ),
  '482cb93751759813a7accba33b636e48' => 
  array (
    'criteria' => 
    array (
      'name' => 'UpgradeMODXSnippetScriptSource',
    ),
    'object' => 
    array (
      'id' => 186,
      'source' => 0,
      'property_preprocess' => 0,
      'name' => 'UpgradeMODXSnippetScriptSource',
      'description' => 'Source for MODX Upgrade script. Used internally',
      'editor_type' => 0,
      'category' => 73,
      'cache_type' => 0,
      'snippet' => '<?php

/**
 * UpgradeMODXWidget snippet for UpgradeMODX extra
 *
 * Copyright 2015 by Bob Ray <http://bobsguides.com>
 * Created on 08-16-2015
 *
 * UpgradeMODX is free software; you can redistribute it and/or modify it under the
 * terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * UpgradeMODX is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * UpgradeMODX; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package upgrademodx
 */


/*
 * This package was inspired by the work of a number of people and I have borrowed some of their code.
 * Dmytro Lukianenko (dmi3yy) is the original author of the MODX install script. Susan Sottwell,
 * Sharapov, Bumkaka, Inreti, Zaigham Rana, frischnetz, and AgelxNash, also contributed and I\'d
 * like to thank all of them for laying the groundwork.
  */

error_reporting(0);
ini_set(\'display_errors\', 0);
set_time_limit(0);
ini_set(\'max_execution_time\', 0);
header(\'Content-Type: text/html; charset=utf-8\');

if (extension_loaded(\'xdebug\')) {
    ini_set(\'xdebug.max_nesting_level\', 100000);
}


class MODXInstaller {
    static public function downloadFile($url, $path, $method, $certPath)
    {
        $newfname = $path;
        if (file_exists($path)) {
            unlink($path);
        }
        $newf = null;
        $file = null;
        if ($method == \'fopen\') {
            try {
                $file = fopen($url, "rb");
                if ($file) {
                    $newf = fopen($newfname, "wb");
                    if ($newf) {
                        set_time_limit(0);
                        while (!feof($file)) {
                            fwrite($newf, fread($file, 1024 * 8), 1024 * 8);
                        }
                    } else {
                        return (\'Could not open \' . $newf . \' for writing\');
                    }
                } else {
                    return (\'fopen failed to open \' . $url);
                }
            } catch (Exception $e) {
                return \'ERROR:Download \' . $e->getMessage();
            }
            if ($file) {
                fclose($file);
            }
            if ($newf) {
                fclose($newf);
            }

        } elseif ($method == \'curl\') {
            $newf = fopen($path, "wb");
            if ($newf) {
                set_time_limit(0);
                $ch = curl_init(str_replace(" ", "%20", $url));
                curl_setopt($ch, CURLOPT_CAINFO, $certPath);
                curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
                curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 1);
                curl_setopt($ch, CURLOPT_TIMEOUT, 180);
                curl_setopt($ch, CURLOPT_USERAGENT, \'Mozilla/4.0 (compatible; MSIE 6.0)\');
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($ch, CURLOPT_FILE, $newf);
                $openBasedir = ini_get(\'open_basedir\');
                if (empty($openBasedir) && filter_var(ini_get(\'safe_mode\'),
                        FILTER_VALIDATE_BOOLEAN) === false) {
                    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
                } else {
                    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, false);
                    $rch = curl_copy_handle($ch);
                    curl_setopt($rch, CURLOPT_URL, $url);
                    $header = curl_exec($rch);
                    if (!curl_errno($rch)) {
                        $newurl = $url;
                        $code = curl_getinfo($rch, CURLINFO_HTTP_CODE);
                        if ($code == 301 || $code == 302) {
                            if (version_compare(PHP_VERSION, \'5.3.7\') < 0) {
                                preg_match(\'/Location:(.*?)\\n/i\', $header, $matches);
                                $newurl = trim(array_pop($matches));
                            } else {
                                $newurl = curl_getinfo($rch, CURLINFO_REDIRECT_URL);
                            }
                        }
                        curl_close($rch);
                        curl_setopt($ch, CURLOPT_URL, $newurl);
                    }
                }
                $retVal = curl_exec($ch);
                if ($retVal === false) {

                    return (\'cUrl download of modx.zip failed \' . curl_error($ch));
                }
                curl_close($ch);
            } else {
                return (\'Cannot open \' . $path . \' for writing\');
            }
        } else {
            return \'Invalid method in call to downloadFile()\';
        }

        return true;
    }

    static public function removeFolder($path, $removeRoot = true) {
        $dir = realpath($path);
        if (!is_dir($dir)) {
            return;
        }
        $it = new RecursiveDirectoryIterator($dir);
        $files = new RecursiveIteratorIterator($it, RecursiveIteratorIterator::CHILD_FIRST);
        foreach ($files as $file) {
            if ($file->getFilename() === \'.\' || $file->getFilename() === \'..\') {
                continue;
            }
            if ($file->isDir()) {
                rmdir($file->getRealPath());
            } else {
                unlink($file->getRealPath());
            }
        }
        if ($removeRoot) {
            rmdir($dir);
        }
    }

    static public function copyFolder($src, $dest) {

        $path = realpath($src);
        $dest = realpath($dest);
        $objects = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($path), RecursiveIteratorIterator::SELF_FIRST);
        foreach ($objects as $name => $object) {
            $startsAt = substr(dirname($name), strlen($path));
            self::mmkDir($dest . $startsAt, true);
            if ($object->isDir()) {
                self::mmkDir($dest . substr($name, strlen($path)));
            }

            if (is_writable($dest . $startsAt) and $object->isFile()) {
                copy((string)$name, $dest . $startsAt . DIRECTORY_SEPARATOR . basename($name));
            }
        }
    }

    static public function normalize($paths) {
        if (is_array($paths)) {
            foreach ($paths as $k => $v) {
                $v = str_replace(\'\\\\\', \'/\', rtrim($v, \'/\\\\\'));
                $paths[$k] = $v;
            }
        } else {
            $paths = str_replace(\'\\\\\', \'/\', rtrim($paths, \'/\\\\\'));
        }
        return $paths;
    }

    static public function getDirectories($directories = array()) {
        if (empty($directories)) {
            $directories = array(
                \'setup\' => MODX_BASE_PATH . \'setup\',
                \'core\' => MODX_CORE_PATH,
                \'manager\' => MODX_MANAGER_PATH,
                \'connectors\' => MODX_CONNECTORS_PATH,
            );
        }
        /* See if we need to do processors path */
        $modxProcessorsPath = MODXInstaller::normalize(MODX_PROCESSORS_PATH);
        if (strpos(MODX_PROCESSORS_PATH, \'core/model/modx/processors\') === false) {
            $directories[\'core/model/modx/processors\'] = $modxProcessorsPath;
        }

        /* Normalize directory paths */
        $directories = MODXInstaller::normalize($directories);

        return $directories;

    }

    static public function copyFiles($sourceDir, $directories) {

        /* Normalize directory paths */
        MODXInstaller::normalize($directories);
        MODXInstaller::normalize($sourceDir);

        /* Copy directories */
        foreach ($directories as $source => $target) {
            MODXInstaller::mmkDir($target);
            set_time_limit(0);
            MODXInstaller::copyFolder($sourceDir . \'/\' . $source, $target);
        }

    }

    static public function mmkDir($folder, $perm = 0755) {
        if (!is_dir($folder)) {
            $oldumask = umask(0);
            mkdir($folder, $perm, true);
            umask($oldumask);
        }
    }
    
    static public function unZip($corePath, $source, $destination, $forcePclZip = false) {
        $status = true;
        if ( (! $forcePclZip) && class_exists(\'ZipArchive\', false)) {
            $zip = new ZipArchive;
            if ($zip instanceof ZipArchive) {
                $open = $zip->open($source, ZIPARCHIVE::CHECKCONS);

                if ($open == true) {
                    $result = $zip->extractTo($destination);
                    if ($result === false) {
                         /* Yes, this is fucking nuts, but it\'s necessary on some platforms */
                         $result = $zip->extractTo($destination);
                         if ($result === false) {
                             $msg = $zip->getStatusString();
                             MODXInstaller::quit($msg);
                         }
                    }
                    $zip->close();
                } else {
                    $status = \'Could not open ZipArchive \' . $source . \' \' . $zip->getStatusString();
                }

            } else {
                $status = \'Could not instantiate ZipArchive\';
            }
        } else {
            $zipClass = $corePath . \'xpdo/compression/pclzip.lib.php\';
            if (file_exists($zipClass)) {
                include $corePath . \'xpdo/compression/pclzip.lib.php\';
                $archive = new PclZip($source);
                if ($archive->extract(PCLZIP_OPT_PATH, $destination) == 0) {
                    $status = \'Extraction with PclZip failed - Error : \' . $archive->errorInfo(true);
                }
            } else {
                $status = \'Neither ZipArchive, nor PclZip were available to unzip the archive\';
            }
        }
        return $status;
    }


    /**
     * Get name of downloaded MODX directory (e.g., modx-3.4.0-pl).
     *
     * @param $tempDir string - temporary download directory
     * @return string - Name of directory
     */
    public static function getModxDir($tempDir) {
        $handle = opendir($tempDir);
        if ($handle !== false) {
            while (false !== ($name = readdir($handle))) {
                if ($name != "." && $name != "..") {
                    $dir = $name;
                }
            }
            closedir($handle);
        } else {
            MODXInstaller::quit (\'Unable to read directory contents or directory is empty: \' . dirname(__FILE__) . \'/temp\');
        }

        if (empty($dir)) {
            MODXInstaller::quit(\'Unknown error reading /temp directory\');
        }

        return $dir;
    }

    public static function quit($msg) {
        $begin = \'<div style="margin:auto;margin-top:100px;width:40%;height:80px;padding:30px;color:red;border:3px solid darkgray;text-align:center;background-color:rgba(160, 233, 174, 0.42);border-radius:15px;box-shadow: 10px 10px 5px #888888;"><p style="font-size: 14pt;">\';
        $end = \'</p><p style="margin-bottom:120px;"><a href="\' . MODX_MANAGER_URL . \'">Back to Manager</a></p></div>\';
        die($begin . $msg  . $end);
    }
}

/* Do not touch the following comments! You have been warned!  */
/** @var $forcePclZip bool - force the use of PclZip instead of ZipArchive */
/* [[+ForcePclZip]] */
/* [[+ForceFopen]] */
/* [[+InstallData]] */

$method = 0;
if (extension_loaded(\'curl\') && (!$forceFopen)) {
    $method = \'curl\';
} elseif (ini_get(\'allow_url_fopen\')) {
    $method = \'fopen\';
}

/* Next two lines for running in debugger  */
// if (true || !empty($_GET[\'modx\']) && is_scalar($_GET[\'modx\']) && isset($InstallData[$_GET[\'modx\']])) {
//       $rowInstall = $InstallData[\'revo2.4.1-pl\'];
// Comment our the two lines below to run in debugger.


   if (!empty($_GET[\'modx\']) && is_scalar($_GET[\'modx\']) && isset($InstallData[$_GET[\'modx\']])) {
       $rowInstall = $InstallData[$_GET[\'modx\']];

    if (file_exists(\'config.core.php\')) {
        @include \'config.core.php\';
    }
    if (!defined(\'MODX_CORE_PATH\')) {
        MODXInstaller::quit(\'Could not read config.core.php\');
    }

    @include MODX_CORE_PATH . \'config/\' . MODX_CONFIG_KEY . \'.inc.php\';

    if (!defined(\'MODX_CONNECTORS_PATH\')) {
        MODXInstaller::quit (\'Could not read main config file\');
    }


    /* run unzip and install */
    $source = dirname(__FILE__) . "/modx.zip";
    $url = $rowInstall[\'link\'];
    $certPath = MODX_CORE_PATH . \'components/upgrademodx/cacert.pem\';
    if (! file_exists($certPath)) {
        MODXInstaller::quit(\'Could not find cacert.pem\');
    }
    set_time_limit(0);

    $success = MODXInstaller::downloadFile($url, $source, $method, $certPath);

    /* Make sure we have the downloaded file */

    if ($success !== true) {
        MODXInstaller::quit($success);
    } elseif (!file_exists($source)) {
            MODXInstaller::quit (\'Missing file: \' . $source);
    } elseif (filesize($source) < 64) {
        MODXInstaller::quit(\'File: \' . $source . \' is empty -- download failed\');
    }

    $tempDir = realPath(dirname(__FILE__)) . \'/temp\';
    MODXInstaller::mmkdir($tempDir);
    clearstatcache();

    $destination = $tempDir;

    if (! file_exists($tempDir)) {
        MODXInstaller::quit(\'Unable to create directory: \' . $tempDir);
    }

    if (! is_readable($tempDir)) {
        MODXInstaller::quit(\'Unable to read from /temp directory\');
    }
    set_time_limit(0);
    $success = MODXInstaller::unZip(MODX_CORE_PATH, $source, $destination, $forcePclZip);
    if ($success !== true) {
        MODXInstaller::quit($success);
    }


    $directories = MODXInstaller::getDirectories();

    $directories = MODXInstaller::normalize($directories);

    $sourceDir = $tempDir . \'/\' . MODXInstaller::getModxDir($tempDir);
    $sourceDir = MODXInstaller::normalize($sourceDir);

    MODXInstaller::copyFiles($sourceDir, $directories);

    unlink($source);

    if (! is_dir(MODX_BASE_PATH . \'setup\')) {
        MODXInstaller::quit(\'File Copy Failed\');
    }

    MODXInstaller::removeFolder($tempDir, true);

    /* Clear cache files but not cache folder */

    $path = MODX_CORE_PATH . \'cache\';
    if (is_dir($path)) {
        MODXInstaller::removeFolder($path, false);
    }

    unlink(basename(__FILE__));

    /* Log upgrade in Manager Actions log */
    include MODX_CORE_PATH . \'model/modx/modx.class.php\';

    $modx = new modX();
    $modx->initialize(\'web\');
    $modx->lexicon->load(\'core:default\');
    $modx->logManagerAction(\'Upgrade MODX\',\'modWorkspace\', $modx->lexicon(\'version\') . \' \' . $_GET[\'modx\'], $_GET[\'userId\'] );
    $modx = null;

    /* Forward to Setup */
    header(\'Location: \' . $rowInstall[\'location\']);

} else {
    $ItemGrid = array();
    foreach ($InstallData as $ver => $item) {
        $ItemGrid[$item[\'tree\']][$ver] = $item;
    }

/* Display the Form */
    echo \'
<!DOCTYPE html>
<html>
<head>
    <title>UpgradeMODX</title>
    <meta charset="utf-8">
    <style type="text/css">
        @import url(https://fonts.googleapis.com/css?family=PT+Serif:400,700&subset=latin,cyrillic);article,aside,audio,b,body,canvas,dd,details,div,dl,dt,em,fieldset,figcaption,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hgroup,html,i,img,label,li,mark,menu,nav,ol,p,section,span,strong,summary,table,tbody,td,tfoot,th,thead,time,tr,u,ul,video{margin:0;padding:0;border:0;outline:0;vertical-align:baseline;background:0 0;font-size:100%}a{margin:0;padding:0;font-size:100%;vertical-align:baseline;background:0 0}table{border-collapse:collapse;border-spacing:0}td,td img{vertical-align:top}button,input,select,textarea{margin:0;font-size:100%}input[type=password],input[type=text],textarea{padding:0}input[type=checkbox]{vertical-align:bottom}input[type=radio]{vertical-align:text-bottom}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}html{overflow-y:scroll}body{color:#111;text-align:left;font:12px Verdana,"Geneva CY","DejaVu Sans",sans-serif}button,input,select,textarea{font-family:Verdana,"Geneva CY","DejaVu Sans",sans-serif}a,a:active,a:focus,a:hover,a:visited,button,input[type=button],input[type=submit],label{cursor:pointer}::selection{background:#84d5e8;color:#fff;text-shadow:none}html{position:relative;background:#f8f8f8 url(http://installer.evolution-cms.com/img/base.png)}body{background:0 0;font-size:14px;line-height:22px;font-family:"Helvetica Neue",helvetica,arial,sans-serif;text-shadow:0 1px 0 #fff}a{color:#0f7096}.button,button{color:#fff;display:inline-block;padding:15px;font-size:20px;text-decoration:none;border:5px solid #fff;border-radius:8px;background-color:#67a749;background-image:linear-gradient(to top,#67a749 0,#67a749 27.76%,#a1c755 100%);text-shadow:0 0 2px rgba(0,0,0,.64)}a.button{padding:5px 15px}h1,h2,h3,h4,h5{font-family:"PT Serif",helvetica,arial,sans-serif;line-height:28px}h1{font-size:26px}h2{font-size:22px}h3{font-size:18px}h4{font-size:16px}h5{font-size:14px}.header{-moz-box-sizing: border-box;float:left;width:100%;box-sizing:border-box;background:#fff;background:linear-gradient(to bottom,#fff,#f2f2f2);padding:20px;border-bottom:1px solid #fff}.header img{float:left;width:180px;margin:0 5px 0 0}.header h1.main-heading{color:#137899;font-size:32px;line-height:40px}.header-button-wrapper{float:right}.main-heading>span{display:none}.main-heading>sup{color:#ccc;font-weight:400}.content{float:left;padding:30px}.content h2{margin:0;line-height:20px}.content form{margin:10px 0 50px}.content form .column{float:left;box-sizing:border-box;width:500px;margin:20px 0}.column h3{display:inline-block;padding:0 0 5px;margin:0 0 20px;border-bottom:2px solid #000}.column label{float:left;width:100%;clear:both;padding:3px 0}form button{float:left;width:200px;clear:both}label>span{border-bottom:1px dotted #555}label>input{margin:0 5px 0 0}.footer{position:absolute;bottom:20px;right:20px;font-size:10px;color:#ccc}.footer a{color:#aaa}
    </style>
</head>
<body>
    <div class="header">
        <img src="https://cdn.modx.com/assets/i/logos/v5/svgs/modx-color.svg" alt="Logo">
        <h1 class="main-heading"><span>MODX</span> UpgradeMODX </h1>
        <div class="header-button-wrapper">
            <a href="https://github.com/BobRay/UpgradeMODX" class="button">GitHub</a>
        </div>
    </div>

<div class="content">\';
    echo "\\n" .  \'<h2>Choose MODX version for Upgrade</h2>
    <form>\';
    foreach ($ItemGrid as $tree => $item) {
        echo "\\n" . \'<div class="column">\' .
            "\\n<h3>" . strtoupper($tree) . \'</h3>\';
        foreach ($item as $version => $itemInfo) {
            echo "\\n    " . \'<label><input type="radio" name="modx" value="\' . $version . \'">            <span>\' . $itemInfo[\'name\'] . \'</span></label><br>\';
        }
        echo \'</div>\';
    }
    echo "\\n    " . \'<input type="hidden" name="userId" value="[[+modx.user.id]]">\';
    if ($method) {
        echo "\\n<h2> Using " . $method . "</h2>";
        echo "\\n" . \'<br><button>Upgrade &rarr;</button>\';
    } else {
        echo "\\n" . \'<h2>Cannot download the files - neither cURL nor allow_url_fopen is enabled on this server.</h2>\';
    }
    echo \'</form>\' . "\\n " .
\'</div>
    <div class="footer">
        <p>Originally created by <a href="http://ga-alex.com" title="">Bumkaka</a> & <a href="http://dmi3yy.com" title="">Dmi3yy</a></p>
        <p>Modified for Revolution only by <a href="http://sottwell.com" title="">sottwell</a></p>
        <p>Modified for Upgrade only with dashboard widget by <a href="http://bobsguides.com" title="">BobRay</a></p>
        <p>Designed by <a href="http://a-sharapov.com" title="">Sharapov</a></p>
    </div>
</body>
</html>
\';
}
?>
',
      'locked' => 0,
      'properties' => 'a:0:{}',
      'static' => 0,
      'static_file' => '',
      'content' => '<?php

/**
 * UpgradeMODXWidget snippet for UpgradeMODX extra
 *
 * Copyright 2015 by Bob Ray <http://bobsguides.com>
 * Created on 08-16-2015
 *
 * UpgradeMODX is free software; you can redistribute it and/or modify it under the
 * terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * UpgradeMODX is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * UpgradeMODX; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package upgrademodx
 */


/*
 * This package was inspired by the work of a number of people and I have borrowed some of their code.
 * Dmytro Lukianenko (dmi3yy) is the original author of the MODX install script. Susan Sottwell,
 * Sharapov, Bumkaka, Inreti, Zaigham Rana, frischnetz, and AgelxNash, also contributed and I\'d
 * like to thank all of them for laying the groundwork.
  */

error_reporting(0);
ini_set(\'display_errors\', 0);
set_time_limit(0);
ini_set(\'max_execution_time\', 0);
header(\'Content-Type: text/html; charset=utf-8\');

if (extension_loaded(\'xdebug\')) {
    ini_set(\'xdebug.max_nesting_level\', 100000);
}


class MODXInstaller {
    static public function downloadFile($url, $path, $method, $certPath)
    {
        $newfname = $path;
        if (file_exists($path)) {
            unlink($path);
        }
        $newf = null;
        $file = null;
        if ($method == \'fopen\') {
            try {
                $file = fopen($url, "rb");
                if ($file) {
                    $newf = fopen($newfname, "wb");
                    if ($newf) {
                        set_time_limit(0);
                        while (!feof($file)) {
                            fwrite($newf, fread($file, 1024 * 8), 1024 * 8);
                        }
                    } else {
                        return (\'Could not open \' . $newf . \' for writing\');
                    }
                } else {
                    return (\'fopen failed to open \' . $url);
                }
            } catch (Exception $e) {
                return \'ERROR:Download \' . $e->getMessage();
            }
            if ($file) {
                fclose($file);
            }
            if ($newf) {
                fclose($newf);
            }

        } elseif ($method == \'curl\') {
            $newf = fopen($path, "wb");
            if ($newf) {
                set_time_limit(0);
                $ch = curl_init(str_replace(" ", "%20", $url));
                curl_setopt($ch, CURLOPT_CAINFO, $certPath);
                curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
                curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 1);
                curl_setopt($ch, CURLOPT_TIMEOUT, 180);
                curl_setopt($ch, CURLOPT_USERAGENT, \'Mozilla/4.0 (compatible; MSIE 6.0)\');
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($ch, CURLOPT_FILE, $newf);
                $openBasedir = ini_get(\'open_basedir\');
                if (empty($openBasedir) && filter_var(ini_get(\'safe_mode\'),
                        FILTER_VALIDATE_BOOLEAN) === false) {
                    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
                } else {
                    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, false);
                    $rch = curl_copy_handle($ch);
                    curl_setopt($rch, CURLOPT_URL, $url);
                    $header = curl_exec($rch);
                    if (!curl_errno($rch)) {
                        $newurl = $url;
                        $code = curl_getinfo($rch, CURLINFO_HTTP_CODE);
                        if ($code == 301 || $code == 302) {
                            if (version_compare(PHP_VERSION, \'5.3.7\') < 0) {
                                preg_match(\'/Location:(.*?)\\n/i\', $header, $matches);
                                $newurl = trim(array_pop($matches));
                            } else {
                                $newurl = curl_getinfo($rch, CURLINFO_REDIRECT_URL);
                            }
                        }
                        curl_close($rch);
                        curl_setopt($ch, CURLOPT_URL, $newurl);
                    }
                }
                $retVal = curl_exec($ch);
                if ($retVal === false) {

                    return (\'cUrl download of modx.zip failed \' . curl_error($ch));
                }
                curl_close($ch);
            } else {
                return (\'Cannot open \' . $path . \' for writing\');
            }
        } else {
            return \'Invalid method in call to downloadFile()\';
        }

        return true;
    }

    static public function removeFolder($path, $removeRoot = true) {
        $dir = realpath($path);
        if (!is_dir($dir)) {
            return;
        }
        $it = new RecursiveDirectoryIterator($dir);
        $files = new RecursiveIteratorIterator($it, RecursiveIteratorIterator::CHILD_FIRST);
        foreach ($files as $file) {
            if ($file->getFilename() === \'.\' || $file->getFilename() === \'..\') {
                continue;
            }
            if ($file->isDir()) {
                rmdir($file->getRealPath());
            } else {
                unlink($file->getRealPath());
            }
        }
        if ($removeRoot) {
            rmdir($dir);
        }
    }

    static public function copyFolder($src, $dest) {

        $path = realpath($src);
        $dest = realpath($dest);
        $objects = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($path), RecursiveIteratorIterator::SELF_FIRST);
        foreach ($objects as $name => $object) {
            $startsAt = substr(dirname($name), strlen($path));
            self::mmkDir($dest . $startsAt, true);
            if ($object->isDir()) {
                self::mmkDir($dest . substr($name, strlen($path)));
            }

            if (is_writable($dest . $startsAt) and $object->isFile()) {
                copy((string)$name, $dest . $startsAt . DIRECTORY_SEPARATOR . basename($name));
            }
        }
    }

    static public function normalize($paths) {
        if (is_array($paths)) {
            foreach ($paths as $k => $v) {
                $v = str_replace(\'\\\\\', \'/\', rtrim($v, \'/\\\\\'));
                $paths[$k] = $v;
            }
        } else {
            $paths = str_replace(\'\\\\\', \'/\', rtrim($paths, \'/\\\\\'));
        }
        return $paths;
    }

    static public function getDirectories($directories = array()) {
        if (empty($directories)) {
            $directories = array(
                \'setup\' => MODX_BASE_PATH . \'setup\',
                \'core\' => MODX_CORE_PATH,
                \'manager\' => MODX_MANAGER_PATH,
                \'connectors\' => MODX_CONNECTORS_PATH,
            );
        }
        /* See if we need to do processors path */
        $modxProcessorsPath = MODXInstaller::normalize(MODX_PROCESSORS_PATH);
        if (strpos(MODX_PROCESSORS_PATH, \'core/model/modx/processors\') === false) {
            $directories[\'core/model/modx/processors\'] = $modxProcessorsPath;
        }

        /* Normalize directory paths */
        $directories = MODXInstaller::normalize($directories);

        return $directories;

    }

    static public function copyFiles($sourceDir, $directories) {

        /* Normalize directory paths */
        MODXInstaller::normalize($directories);
        MODXInstaller::normalize($sourceDir);

        /* Copy directories */
        foreach ($directories as $source => $target) {
            MODXInstaller::mmkDir($target);
            set_time_limit(0);
            MODXInstaller::copyFolder($sourceDir . \'/\' . $source, $target);
        }

    }

    static public function mmkDir($folder, $perm = 0755) {
        if (!is_dir($folder)) {
            $oldumask = umask(0);
            mkdir($folder, $perm, true);
            umask($oldumask);
        }
    }
    
    static public function unZip($corePath, $source, $destination, $forcePclZip = false) {
        $status = true;
        if ( (! $forcePclZip) && class_exists(\'ZipArchive\', false)) {
            $zip = new ZipArchive;
            if ($zip instanceof ZipArchive) {
                $open = $zip->open($source, ZIPARCHIVE::CHECKCONS);

                if ($open == true) {
                    $result = $zip->extractTo($destination);
                    if ($result === false) {
                         /* Yes, this is fucking nuts, but it\'s necessary on some platforms */
                         $result = $zip->extractTo($destination);
                         if ($result === false) {
                             $msg = $zip->getStatusString();
                             MODXInstaller::quit($msg);
                         }
                    }
                    $zip->close();
                } else {
                    $status = \'Could not open ZipArchive \' . $source . \' \' . $zip->getStatusString();
                }

            } else {
                $status = \'Could not instantiate ZipArchive\';
            }
        } else {
            $zipClass = $corePath . \'xpdo/compression/pclzip.lib.php\';
            if (file_exists($zipClass)) {
                include $corePath . \'xpdo/compression/pclzip.lib.php\';
                $archive = new PclZip($source);
                if ($archive->extract(PCLZIP_OPT_PATH, $destination) == 0) {
                    $status = \'Extraction with PclZip failed - Error : \' . $archive->errorInfo(true);
                }
            } else {
                $status = \'Neither ZipArchive, nor PclZip were available to unzip the archive\';
            }
        }
        return $status;
    }


    /**
     * Get name of downloaded MODX directory (e.g., modx-3.4.0-pl).
     *
     * @param $tempDir string - temporary download directory
     * @return string - Name of directory
     */
    public static function getModxDir($tempDir) {
        $handle = opendir($tempDir);
        if ($handle !== false) {
            while (false !== ($name = readdir($handle))) {
                if ($name != "." && $name != "..") {
                    $dir = $name;
                }
            }
            closedir($handle);
        } else {
            MODXInstaller::quit (\'Unable to read directory contents or directory is empty: \' . dirname(__FILE__) . \'/temp\');
        }

        if (empty($dir)) {
            MODXInstaller::quit(\'Unknown error reading /temp directory\');
        }

        return $dir;
    }

    public static function quit($msg) {
        $begin = \'<div style="margin:auto;margin-top:100px;width:40%;height:80px;padding:30px;color:red;border:3px solid darkgray;text-align:center;background-color:rgba(160, 233, 174, 0.42);border-radius:15px;box-shadow: 10px 10px 5px #888888;"><p style="font-size: 14pt;">\';
        $end = \'</p><p style="margin-bottom:120px;"><a href="\' . MODX_MANAGER_URL . \'">Back to Manager</a></p></div>\';
        die($begin . $msg  . $end);
    }
}

/* Do not touch the following comments! You have been warned!  */
/** @var $forcePclZip bool - force the use of PclZip instead of ZipArchive */
/* [[+ForcePclZip]] */
/* [[+ForceFopen]] */
/* [[+InstallData]] */

$method = 0;
if (extension_loaded(\'curl\') && (!$forceFopen)) {
    $method = \'curl\';
} elseif (ini_get(\'allow_url_fopen\')) {
    $method = \'fopen\';
}

/* Next two lines for running in debugger  */
// if (true || !empty($_GET[\'modx\']) && is_scalar($_GET[\'modx\']) && isset($InstallData[$_GET[\'modx\']])) {
//       $rowInstall = $InstallData[\'revo2.4.1-pl\'];
// Comment our the two lines below to run in debugger.


   if (!empty($_GET[\'modx\']) && is_scalar($_GET[\'modx\']) && isset($InstallData[$_GET[\'modx\']])) {
       $rowInstall = $InstallData[$_GET[\'modx\']];

    if (file_exists(\'config.core.php\')) {
        @include \'config.core.php\';
    }
    if (!defined(\'MODX_CORE_PATH\')) {
        MODXInstaller::quit(\'Could not read config.core.php\');
    }

    @include MODX_CORE_PATH . \'config/\' . MODX_CONFIG_KEY . \'.inc.php\';

    if (!defined(\'MODX_CONNECTORS_PATH\')) {
        MODXInstaller::quit (\'Could not read main config file\');
    }


    /* run unzip and install */
    $source = dirname(__FILE__) . "/modx.zip";
    $url = $rowInstall[\'link\'];
    $certPath = MODX_CORE_PATH . \'components/upgrademodx/cacert.pem\';
    if (! file_exists($certPath)) {
        MODXInstaller::quit(\'Could not find cacert.pem\');
    }
    set_time_limit(0);

    $success = MODXInstaller::downloadFile($url, $source, $method, $certPath);

    /* Make sure we have the downloaded file */

    if ($success !== true) {
        MODXInstaller::quit($success);
    } elseif (!file_exists($source)) {
            MODXInstaller::quit (\'Missing file: \' . $source);
    } elseif (filesize($source) < 64) {
        MODXInstaller::quit(\'File: \' . $source . \' is empty -- download failed\');
    }

    $tempDir = realPath(dirname(__FILE__)) . \'/temp\';
    MODXInstaller::mmkdir($tempDir);
    clearstatcache();

    $destination = $tempDir;

    if (! file_exists($tempDir)) {
        MODXInstaller::quit(\'Unable to create directory: \' . $tempDir);
    }

    if (! is_readable($tempDir)) {
        MODXInstaller::quit(\'Unable to read from /temp directory\');
    }
    set_time_limit(0);
    $success = MODXInstaller::unZip(MODX_CORE_PATH, $source, $destination, $forcePclZip);
    if ($success !== true) {
        MODXInstaller::quit($success);
    }


    $directories = MODXInstaller::getDirectories();

    $directories = MODXInstaller::normalize($directories);

    $sourceDir = $tempDir . \'/\' . MODXInstaller::getModxDir($tempDir);
    $sourceDir = MODXInstaller::normalize($sourceDir);

    MODXInstaller::copyFiles($sourceDir, $directories);

    unlink($source);

    if (! is_dir(MODX_BASE_PATH . \'setup\')) {
        MODXInstaller::quit(\'File Copy Failed\');
    }

    MODXInstaller::removeFolder($tempDir, true);

    /* Clear cache files but not cache folder */

    $path = MODX_CORE_PATH . \'cache\';
    if (is_dir($path)) {
        MODXInstaller::removeFolder($path, false);
    }

    unlink(basename(__FILE__));

    /* Log upgrade in Manager Actions log */
    include MODX_CORE_PATH . \'model/modx/modx.class.php\';

    $modx = new modX();
    $modx->initialize(\'web\');
    $modx->lexicon->load(\'core:default\');
    $modx->logManagerAction(\'Upgrade MODX\',\'modWorkspace\', $modx->lexicon(\'version\') . \' \' . $_GET[\'modx\'], $_GET[\'userId\'] );
    $modx = null;

    /* Forward to Setup */
    header(\'Location: \' . $rowInstall[\'location\']);

} else {
    $ItemGrid = array();
    foreach ($InstallData as $ver => $item) {
        $ItemGrid[$item[\'tree\']][$ver] = $item;
    }

/* Display the Form */
    echo \'
<!DOCTYPE html>
<html>
<head>
    <title>UpgradeMODX</title>
    <meta charset="utf-8">
    <style type="text/css">
        @import url(https://fonts.googleapis.com/css?family=PT+Serif:400,700&subset=latin,cyrillic);article,aside,audio,b,body,canvas,dd,details,div,dl,dt,em,fieldset,figcaption,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hgroup,html,i,img,label,li,mark,menu,nav,ol,p,section,span,strong,summary,table,tbody,td,tfoot,th,thead,time,tr,u,ul,video{margin:0;padding:0;border:0;outline:0;vertical-align:baseline;background:0 0;font-size:100%}a{margin:0;padding:0;font-size:100%;vertical-align:baseline;background:0 0}table{border-collapse:collapse;border-spacing:0}td,td img{vertical-align:top}button,input,select,textarea{margin:0;font-size:100%}input[type=password],input[type=text],textarea{padding:0}input[type=checkbox]{vertical-align:bottom}input[type=radio]{vertical-align:text-bottom}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}html{overflow-y:scroll}body{color:#111;text-align:left;font:12px Verdana,"Geneva CY","DejaVu Sans",sans-serif}button,input,select,textarea{font-family:Verdana,"Geneva CY","DejaVu Sans",sans-serif}a,a:active,a:focus,a:hover,a:visited,button,input[type=button],input[type=submit],label{cursor:pointer}::selection{background:#84d5e8;color:#fff;text-shadow:none}html{position:relative;background:#f8f8f8 url(http://installer.evolution-cms.com/img/base.png)}body{background:0 0;font-size:14px;line-height:22px;font-family:"Helvetica Neue",helvetica,arial,sans-serif;text-shadow:0 1px 0 #fff}a{color:#0f7096}.button,button{color:#fff;display:inline-block;padding:15px;font-size:20px;text-decoration:none;border:5px solid #fff;border-radius:8px;background-color:#67a749;background-image:linear-gradient(to top,#67a749 0,#67a749 27.76%,#a1c755 100%);text-shadow:0 0 2px rgba(0,0,0,.64)}a.button{padding:5px 15px}h1,h2,h3,h4,h5{font-family:"PT Serif",helvetica,arial,sans-serif;line-height:28px}h1{font-size:26px}h2{font-size:22px}h3{font-size:18px}h4{font-size:16px}h5{font-size:14px}.header{-moz-box-sizing: border-box;float:left;width:100%;box-sizing:border-box;background:#fff;background:linear-gradient(to bottom,#fff,#f2f2f2);padding:20px;border-bottom:1px solid #fff}.header img{float:left;width:180px;margin:0 5px 0 0}.header h1.main-heading{color:#137899;font-size:32px;line-height:40px}.header-button-wrapper{float:right}.main-heading>span{display:none}.main-heading>sup{color:#ccc;font-weight:400}.content{float:left;padding:30px}.content h2{margin:0;line-height:20px}.content form{margin:10px 0 50px}.content form .column{float:left;box-sizing:border-box;width:500px;margin:20px 0}.column h3{display:inline-block;padding:0 0 5px;margin:0 0 20px;border-bottom:2px solid #000}.column label{float:left;width:100%;clear:both;padding:3px 0}form button{float:left;width:200px;clear:both}label>span{border-bottom:1px dotted #555}label>input{margin:0 5px 0 0}.footer{position:absolute;bottom:20px;right:20px;font-size:10px;color:#ccc}.footer a{color:#aaa}
    </style>
</head>
<body>
    <div class="header">
        <img src="https://cdn.modx.com/assets/i/logos/v5/svgs/modx-color.svg" alt="Logo">
        <h1 class="main-heading"><span>MODX</span> UpgradeMODX </h1>
        <div class="header-button-wrapper">
            <a href="https://github.com/BobRay/UpgradeMODX" class="button">GitHub</a>
        </div>
    </div>

<div class="content">\';
    echo "\\n" .  \'<h2>Choose MODX version for Upgrade</h2>
    <form>\';
    foreach ($ItemGrid as $tree => $item) {
        echo "\\n" . \'<div class="column">\' .
            "\\n<h3>" . strtoupper($tree) . \'</h3>\';
        foreach ($item as $version => $itemInfo) {
            echo "\\n    " . \'<label><input type="radio" name="modx" value="\' . $version . \'">            <span>\' . $itemInfo[\'name\'] . \'</span></label><br>\';
        }
        echo \'</div>\';
    }
    echo "\\n    " . \'<input type="hidden" name="userId" value="[[+modx.user.id]]">\';
    if ($method) {
        echo "\\n<h2> Using " . $method . "</h2>";
        echo "\\n" . \'<br><button>Upgrade &rarr;</button>\';
    } else {
        echo "\\n" . \'<h2>Cannot download the files - neither cURL nor allow_url_fopen is enabled on this server.</h2>\';
    }
    echo \'</form>\' . "\\n " .
\'</div>
    <div class="footer">
        <p>Originally created by <a href="http://ga-alex.com" title="">Bumkaka</a> & <a href="http://dmi3yy.com" title="">Dmi3yy</a></p>
        <p>Modified for Revolution only by <a href="http://sottwell.com" title="">sottwell</a></p>
        <p>Modified for Upgrade only with dashboard widget by <a href="http://bobsguides.com" title="">BobRay</a></p>
        <p>Designed by <a href="http://a-sharapov.com" title="">Sharapov</a></p>
    </div>
</body>
</html>
\';
}
?>
',
    ),
  ),
  'a86b9ebcdd2c7a6745891e459b2c558a' => 
  array (
    'criteria' => 
    array (
      'name' => 'UpgradeMODXTpl',
    ),
    'object' => 
    array (
      'id' => 187,
      'source' => 0,
      'property_preprocess' => 0,
      'name' => 'UpgradeMODXTpl',
      'description' => 'Tpl chunk for alert widget',
      'editor_type' => 0,
      'category' => 73,
      'cache_type' => 0,
      'snippet' => '<h3 style="color:[[+ugm_notice_color]]">[[+ugm_notice]]</h3>
<br/>[[+ugm_current_version_caption]]: [[+ugm_current_version]]
<br/>[[+ugm_latest_version_caption]]: [[+ugm_latest_version]]

[[+ugm_logout_note]]
[[+ugm_form]]
[[+ugm_errors]]
<p>&nbsp;</p>

',
      'locked' => 0,
      'properties' => NULL,
      'static' => 0,
      'static_file' => '',
      'content' => '<h3 style="color:[[+ugm_notice_color]]">[[+ugm_notice]]</h3>
<br/>[[+ugm_current_version_caption]]: [[+ugm_current_version]]
<br/>[[+ugm_latest_version_caption]]: [[+ugm_latest_version]]

[[+ugm_logout_note]]
[[+ugm_form]]
[[+ugm_errors]]
<p>&nbsp;</p>

',
    ),
  ),
  'bc66584c83f0f7321d3fa37f74111103' => 
  array (
    'criteria' => 
    array (
      'name' => 'UpgradeMODXWidget',
    ),
    'object' => 
    array (
      'id' => 104,
      'source' => 0,
      'property_preprocess' => 0,
      'name' => 'UpgradeMODXWidget',
      'description' => 'Upgrade MODX Dashboard widget',
      'editor_type' => 0,
      'category' => 73,
      'cache_type' => 0,
      'snippet' => '/**
 * UpgradeMODXWidget snippet for UpgradeMODX extra
 *
 * Copyright 2015 by Bob Ray <http://bobsguides.com>
 * Created on 08-16-2015
 *
 * UpgradeMODX is free software; you can redistribute it and/or modify it under the
 * terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * UpgradeMODX is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * UpgradeMODX; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package upgrademodx
 */

/**
 * Description
 * -----------
 * UpgradeMODX Dashboard widget
 * This package was inspired by the work of a number of people and I have borrowed some of their code.
 * Dmytro Lukianenko (dmi3yy) is the original author of the MODX install script. Susan Sottwell, Sharapov,
 * Bumkaka, Inreti, Zaigham Rana, frischnetz, and AgelxNash, also contributed and I\'d like to thank all
 * of them for laying the groundwork.
 *
 * Variables
 * ---------
 * @var $modx modX
 * @var $scriptProperties array
 *
 * @package upgrademodx
 **/

/* Properties

 * @property &groups textfield -- group, or commma-separated list of groups, who will see the widget; Default: (empty)..
 * @property &hideWhenNoUpgrade combo-boolean -- Hide widget when no upgrade is available; Default: No.
 * @property &interval textfield -- Interval between checks -- Examples: 1 week, 3 days, 6 hours; Default: 1 week.
 * @property &language textfield -- Two-letter code of language to user; Default: en.
 * @property &lastCheck textfield -- Date and time of last check -- set automatically; Default: (empty)..
 * @property &latestVersion textfield -- Latest version (at last check) -- set automatically; Default: (empty)..
 * @property &plOnly combo-boolean -- Show only pl (stable) versions; Default: yes.
 * @property &versionsToShow textfield -- Number of versions to show in upgrade form (not widget); Default: 5.

 */


if (php_sapi_name() === \'cli\') {
    /* This section for debugging during development. It won\'t execute in MODX */
    include \'C:\\xampp\\htdocs\\addons\\assets\\mycomponents\\instantiatemodx\\instantiatemodx.php\';
    $snippet =
    $scriptProperties = array(
        \'versionsToShow\' => 5,
        \'hideWhenNoUpgrade\' => false,
        \'lastCheck\' => \'\',
        \'interval\' => \'+60 seconds\',
        \'plOnly\' => false,
        \'language\' => \'en\',
        \'forcePclZip\' => false,
        \'forceFopen\' => false,
        \'currentVersion\' => $modx->getOption(\'settings_version\'),
        \'latestVersion\' => \'2.4.3-pl\',
        \'githubTimeout\' => 6,
        \'modTimeout\' => 6,
        \'tries\' => 2,
    );

} else {
    /* This will execute when in MODX */
    $language = $modx->getOption(\'language\', $scriptProperties, \'en\', true);
    $modx->lexicon->load($language . \':upgrademodx:default\');
    /* Return empty string if user shouldn\'t see widget */

    $groups = $modx->getOption(\'groups\', $scriptProperties, \'Administrator\', true);
    if (strpos($groups, \',\') !== false) {
        $groups = explode(\',\', $groups);
    }
    if (! $modx->user->isMember($groups)) {
        return \'\';
    }
}

$props = $scriptProperties;
$corePath = $modx->getOption(\'ugm.core_path\', $props, $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/upgrademodx/\');

require_once($corePath . \'model/upgrademodx.class.php\');


$upgrade = new UpgradeMODX($modx);
$upgrade->init($props);

/* See if user has submitted the form. If so, create the upgrade script and launch it */
if (isset($_POST[\'UpgradeMODX\'])) {
    $upgrade->writeScriptFile();
    /* Log out all users before launching the form */
    $sessionTable = $modx->getTableName(\'modSession\');
    if ($modx->query("TRUNCATE TABLE {$sessionTable}") == false) {
        $flushed = false;
    } else {
        $modx->user->endSession();
    }
    $modx->sendRedirect(MODX_BASE_URL . \'upgrade.php\');

}

/* Set the method */
$forceFopen = $modx->getOption(\'forceFopen\', $props, false, true);
$method = null;
if (extension_loaded(\'curl\') && (!$forceFopen)) {
    $method = \'curl\';
} elseif (ini_get(\'allow_url_fopen\')) {
    $method = \'fopen\';
} else {
    die($this->modx->lexicon(\'ugm_no_curl_no_fopen\'));
}

$lastCheck = $modx->getOption(\'lastCheck\', $props, \'2015-08-17 00:00:004\', true);
$interval = $modx->getOption(\'interval\', $props, \'+1 week\', true);
$interval = \'+1 week\';
$hideWhenNoUpgrade = $modx->getOption(\'hideWhenNoUpgrade\', $props, false, true);
$plOnly = $modx->getOption(\'plOnly\', $props);
$versionsToShow = $modx->getOption(\'versionsToShow\', $props, 5);
$currentVersion = $modx->getOption(\'settings_version\');
$latestVersion = $modx->getOption(\'latestVersion\', $props, \'\', true);
$versionListPath = $upgrade->getVersionListPath();

$versionListExists = false;

$fullVersionListPath = $versionListPath . \'versionlist\';
if (file_exists($fullVersionListPath)) {
    $v = file_get_contents($fullVersionListPath);
    if (! empty($v)) {
        $versionListExists = true;
    }
}

$timeToCheck = $upgrade->timeToCheck($lastCheck, $interval);
/* Perform check if no versionlist or latestVersion, or if it\'s time to check */
if ((!$versionListExists ) || $timeToCheck || empty($latestVersion)) {
    $upgradeAvailable = $upgrade->upgradeAvailable($currentVersion, $plOnly, $versionsToShow, $method);
    $latestVersion = $upgrade->getLatestVersion();
} else {
    $upgradeAvailable = version_compare($currentVersion, $latestVersion) < 0;;
}
$placeholders = array();
$placeholders[\'[[+ugm_current_version]]\'] = $currentVersion;
$placeholders[\'[[+ugm_latest_version]]\'] = $latestVersion;

$errors = $upgrade->getErrors();

if (!empty($errors)) {
    $msg = \'\';
    foreach ($errors as $error) {
        $msg .= \'<br/><span style="color:red">\' . $modx->lexicon(\'ugm_error\') .
            \': \' . $error . \'</span>\';
    }
    return $msg;
}

$placeholders[\'[[+ugm_current_version_caption]]\'] = $modx->lexicon(\'ugm_current_version_caption\');
$placeholders[\'[[+ugm_latest_version_caption]]\'] = $modx->lexicon(\'ugm_latest_version_caption\');

/* See if there\'s a new version and if it\'s downloadable */
if ($upgradeAvailable) {
    $placeholders[\'[[+ugm_notice]]\'] = $modx->lexicon(\'ugm_upgrade_available\');
    $placeholders[\'[[+ugm_notice_color]]\'] = \'green\';
    $placeholders[\'[[+ugm_logout_note]]\'] = \'<br/><br/>(\' .
        $modx->lexicon(\'ugm_logout_note\')
        . \')\';
    $placeholders[\'[[+ugm_form]]\'] = \'<br/><br/>
        <form method="post" action="">
           <input class="x-btn x-btn-small x-btn-icon-small-left primary-button x-btn-noicon"
                    type="submit" name="UpgradeMODX" value="\' . $modx->lexicon(\'ugm_upgrade_modx\') .  \'">
        </form>\';

} else {
    if ($hideWhenNoUpgrade) {
        return \'\';
    } else {
        $placeholders[\'[[+ugm_notice]]\'] = $modx->lexicon(\'ugm_modx_up_to_date\');
        $placeholders[\'[[+ugm_notice_color]]\'] = \'gray\';
    }
}

/* Get Tpl */

$tpl = $modx->getChunk(\'UpgradeMODXTpl\');

/* Do the replacements */
$tpl = str_replace(array_keys($placeholders), array_values($placeholders), $tpl);

if (php_sapi_name() === \'cli\') {
    echo $tpl;
}

return $tpl;',
      'locked' => 0,
      'properties' => 'a:17:{s:8:"attempts";a:9:{s:4:"name";s:8:"attempts";s:4:"desc";s:17:"ubm_attempts_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"2";s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:8:"Download";s:10:"desc_trans";s:59:"Number of tries to get data from GitHub or MODX; default: 2";s:10:"area_trans";s:8:"Download";}s:10:"forceFopen";a:9:{s:4:"name";s:10:"forceFopen";s:4:"desc";s:19:"ugm_forceFopen_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:8:"Download";s:10:"desc_trans";s:55:"Force the use of fopen instead of cURL for the download";s:10:"area_trans";s:8:"Download";}s:11:"forcePclZip";a:9:{s:4:"name";s:11:"forcePclZip";s:4:"desc";s:20:"ugm_forcePclZip_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:8:"Download";s:10:"desc_trans";s:45:"Force the use of PclZip instead of ZipArchive";s:10:"area_trans";s:8:"Download";}s:11:"modxTimeout";a:9:{s:4:"name";s:11:"modxTimeout";s:4:"desc";s:21:"ugm_modx_timeout_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"6";s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:8:"Download";s:10:"desc_trans";s:69:"Timeout in seconds for checking download status from MODX; default: 6";s:10:"area_trans";s:8:"Download";}s:15:"ssl_verify_peer";a:9:{s:4:"name";s:15:"ssl_verify_peer";s:4:"desc";s:24:"ugm_ssl_verify_peer_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:8:"Download";s:10:"desc_trans";s:57:"For security, have cURL verify the identity of the server";s:10:"area_trans";s:8:"Download";}s:8:"language";a:9:{s:4:"name";s:8:"language";s:4:"desc";s:17:"ugm_language_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:2:"en";s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:4:"Form";s:10:"desc_trans";s:57:"Two-letter language code for language to use; default: en";s:10:"area_trans";s:4:"Form";}s:6:"plOnly";a:9:{s:4:"name";s:6:"plOnly";s:4:"desc";s:15:"ugm_plOnly_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:1;s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:4:"Form";s:10:"desc_trans";s:44:"Show only pl (stable) versions; default: yes";s:10:"area_trans";s:4:"Form";}s:14:"versionsToShow";a:9:{s:4:"name";s:14:"versionsToShow";s:4:"desc";s:23:"ugm_versionsToShow_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"5";s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:4:"Form";s:10:"desc_trans";s:67:"Number of versions to show in upgrade form (not widget); default: 5";s:10:"area_trans";s:4:"Form";}s:13:"githubTimeout";a:9:{s:4:"name";s:13:"githubTimeout";s:4:"desc";s:23:"ugm_github_timeout_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:1:"6";s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:6:"GitHub";s:10:"desc_trans";s:50:"Timeout in seconds for checking Github; default: 6";s:10:"area_trans";s:6:"GitHub";}s:12:"github_token";a:9:{s:4:"name";s:12:"github_token";s:4:"desc";s:21:"ugm_github_token_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:6:"GitHub";s:10:"desc_trans";s:49:"Github token - available from your GitHub profile";s:10:"area_trans";s:6:"GitHub";}s:15:"github_username";a:9:{s:4:"name";s:15:"github_username";s:4:"desc";s:24:"ugm_github_username_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:0:"";s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:6:"GitHub";s:10:"desc_trans";s:23:"Your username at GitHub";s:10:"area_trans";s:6:"GitHub";}s:6:"groups";a:9:{s:4:"name";s:6:"groups";s:4:"desc";s:15:"ugm_groups_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:13:"Administrator";s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:8:"Security";s:10:"desc_trans";s:66:"group, or commma-separated list of groups, who will see the widget";s:10:"area_trans";s:8:"Security";}s:17:"hideWhenNoUpgrade";a:9:{s:4:"name";s:17:"hideWhenNoUpgrade";s:4:"desc";s:26:"ugm_hideWhenNoUpgrade_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";a:0:{}s:5:"value";b:0;s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:6:"Widget";s:10:"desc_trans";s:53:"Hide widget when no upgrade is available: default: No";s:10:"area_trans";s:6:"Widget";}s:8:"interval";a:9:{s:4:"name";s:8:"interval";s:4:"desc";s:17:"ugm_interval_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:6:"1 week";s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:6:"Widget";s:10:"desc_trans";s:77:"Interval between checks -- Examples: 1 week, 3 days, 6 hours; default: 1 week";s:10:"area_trans";s:6:"Widget";}s:9:"lastCheck";a:9:{s:4:"name";s:9:"lastCheck";s:4:"desc";s:18:"ugm_lastCheck_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:19:"2016-08-16 11:53:29";s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:6:"Widget";s:10:"desc_trans";s:48:"Date and time of last check -- set automatically";s:10:"area_trans";s:6:"Widget";}s:13:"latestVersion";a:9:{s:4:"name";s:13:"latestVersion";s:4:"desc";s:22:"ugm_latestVersion_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:8:"2.5.1-pl";s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:6:"Widget";s:10:"desc_trans";s:51:"Latest version (at last check) -- set automatically";s:10:"area_trans";s:6:"Widget";}s:15:"versionListPath";a:9:{s:4:"name";s:15:"versionListPath";s:4:"desc";s:26:"ugm_version_list_path_desc";s:4:"type";s:9:"textfield";s:7:"options";a:0:{}s:5:"value";s:29:"{core_path}cache/upgrademodx/";s:7:"lexicon";s:22:"upgrademodx:properties";s:4:"area";s:6:"Widget";s:10:"desc_trans";s:110:"Path to versionlist file (minus the filename -- should end in a slash); Default: {core_path}cache/upgrademodx/";s:10:"area_trans";s:6:"Widget";}}',
      'moduleguid' => '',
      'static' => 0,
      'static_file' => '',
      'content' => '/**
 * UpgradeMODXWidget snippet for UpgradeMODX extra
 *
 * Copyright 2015 by Bob Ray <http://bobsguides.com>
 * Created on 08-16-2015
 *
 * UpgradeMODX is free software; you can redistribute it and/or modify it under the
 * terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * UpgradeMODX is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * UpgradeMODX; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package upgrademodx
 */

/**
 * Description
 * -----------
 * UpgradeMODX Dashboard widget
 * This package was inspired by the work of a number of people and I have borrowed some of their code.
 * Dmytro Lukianenko (dmi3yy) is the original author of the MODX install script. Susan Sottwell, Sharapov,
 * Bumkaka, Inreti, Zaigham Rana, frischnetz, and AgelxNash, also contributed and I\'d like to thank all
 * of them for laying the groundwork.
 *
 * Variables
 * ---------
 * @var $modx modX
 * @var $scriptProperties array
 *
 * @package upgrademodx
 **/

/* Properties

 * @property &groups textfield -- group, or commma-separated list of groups, who will see the widget; Default: (empty)..
 * @property &hideWhenNoUpgrade combo-boolean -- Hide widget when no upgrade is available; Default: No.
 * @property &interval textfield -- Interval between checks -- Examples: 1 week, 3 days, 6 hours; Default: 1 week.
 * @property &language textfield -- Two-letter code of language to user; Default: en.
 * @property &lastCheck textfield -- Date and time of last check -- set automatically; Default: (empty)..
 * @property &latestVersion textfield -- Latest version (at last check) -- set automatically; Default: (empty)..
 * @property &plOnly combo-boolean -- Show only pl (stable) versions; Default: yes.
 * @property &versionsToShow textfield -- Number of versions to show in upgrade form (not widget); Default: 5.

 */


if (php_sapi_name() === \'cli\') {
    /* This section for debugging during development. It won\'t execute in MODX */
    include \'C:\\xampp\\htdocs\\addons\\assets\\mycomponents\\instantiatemodx\\instantiatemodx.php\';
    $snippet =
    $scriptProperties = array(
        \'versionsToShow\' => 5,
        \'hideWhenNoUpgrade\' => false,
        \'lastCheck\' => \'\',
        \'interval\' => \'+60 seconds\',
        \'plOnly\' => false,
        \'language\' => \'en\',
        \'forcePclZip\' => false,
        \'forceFopen\' => false,
        \'currentVersion\' => $modx->getOption(\'settings_version\'),
        \'latestVersion\' => \'2.4.3-pl\',
        \'githubTimeout\' => 6,
        \'modTimeout\' => 6,
        \'tries\' => 2,
    );

} else {
    /* This will execute when in MODX */
    $language = $modx->getOption(\'language\', $scriptProperties, \'en\', true);
    $modx->lexicon->load($language . \':upgrademodx:default\');
    /* Return empty string if user shouldn\'t see widget */

    $groups = $modx->getOption(\'groups\', $scriptProperties, \'Administrator\', true);
    if (strpos($groups, \',\') !== false) {
        $groups = explode(\',\', $groups);
    }
    if (! $modx->user->isMember($groups)) {
        return \'\';
    }
}

$props = $scriptProperties;
$corePath = $modx->getOption(\'ugm.core_path\', $props, $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/upgrademodx/\');

require_once($corePath . \'model/upgrademodx.class.php\');


$upgrade = new UpgradeMODX($modx);
$upgrade->init($props);

/* See if user has submitted the form. If so, create the upgrade script and launch it */
if (isset($_POST[\'UpgradeMODX\'])) {
    $upgrade->writeScriptFile();
    /* Log out all users before launching the form */
    $sessionTable = $modx->getTableName(\'modSession\');
    if ($modx->query("TRUNCATE TABLE {$sessionTable}") == false) {
        $flushed = false;
    } else {
        $modx->user->endSession();
    }
    $modx->sendRedirect(MODX_BASE_URL . \'upgrade.php\');

}

/* Set the method */
$forceFopen = $modx->getOption(\'forceFopen\', $props, false, true);
$method = null;
if (extension_loaded(\'curl\') && (!$forceFopen)) {
    $method = \'curl\';
} elseif (ini_get(\'allow_url_fopen\')) {
    $method = \'fopen\';
} else {
    die($this->modx->lexicon(\'ugm_no_curl_no_fopen\'));
}

$lastCheck = $modx->getOption(\'lastCheck\', $props, \'2015-08-17 00:00:004\', true);
$interval = $modx->getOption(\'interval\', $props, \'+1 week\', true);
$interval = \'+1 week\';
$hideWhenNoUpgrade = $modx->getOption(\'hideWhenNoUpgrade\', $props, false, true);
$plOnly = $modx->getOption(\'plOnly\', $props);
$versionsToShow = $modx->getOption(\'versionsToShow\', $props, 5);
$currentVersion = $modx->getOption(\'settings_version\');
$latestVersion = $modx->getOption(\'latestVersion\', $props, \'\', true);
$versionListPath = $upgrade->getVersionListPath();

$versionListExists = false;

$fullVersionListPath = $versionListPath . \'versionlist\';
if (file_exists($fullVersionListPath)) {
    $v = file_get_contents($fullVersionListPath);
    if (! empty($v)) {
        $versionListExists = true;
    }
}

$timeToCheck = $upgrade->timeToCheck($lastCheck, $interval);
/* Perform check if no versionlist or latestVersion, or if it\'s time to check */
if ((!$versionListExists ) || $timeToCheck || empty($latestVersion)) {
    $upgradeAvailable = $upgrade->upgradeAvailable($currentVersion, $plOnly, $versionsToShow, $method);
    $latestVersion = $upgrade->getLatestVersion();
} else {
    $upgradeAvailable = version_compare($currentVersion, $latestVersion) < 0;;
}
$placeholders = array();
$placeholders[\'[[+ugm_current_version]]\'] = $currentVersion;
$placeholders[\'[[+ugm_latest_version]]\'] = $latestVersion;

$errors = $upgrade->getErrors();

if (!empty($errors)) {
    $msg = \'\';
    foreach ($errors as $error) {
        $msg .= \'<br/><span style="color:red">\' . $modx->lexicon(\'ugm_error\') .
            \': \' . $error . \'</span>\';
    }
    return $msg;
}

$placeholders[\'[[+ugm_current_version_caption]]\'] = $modx->lexicon(\'ugm_current_version_caption\');
$placeholders[\'[[+ugm_latest_version_caption]]\'] = $modx->lexicon(\'ugm_latest_version_caption\');

/* See if there\'s a new version and if it\'s downloadable */
if ($upgradeAvailable) {
    $placeholders[\'[[+ugm_notice]]\'] = $modx->lexicon(\'ugm_upgrade_available\');
    $placeholders[\'[[+ugm_notice_color]]\'] = \'green\';
    $placeholders[\'[[+ugm_logout_note]]\'] = \'<br/><br/>(\' .
        $modx->lexicon(\'ugm_logout_note\')
        . \')\';
    $placeholders[\'[[+ugm_form]]\'] = \'<br/><br/>
        <form method="post" action="">
           <input class="x-btn x-btn-small x-btn-icon-small-left primary-button x-btn-noicon"
                    type="submit" name="UpgradeMODX" value="\' . $modx->lexicon(\'ugm_upgrade_modx\') .  \'">
        </form>\';

} else {
    if ($hideWhenNoUpgrade) {
        return \'\';
    } else {
        $placeholders[\'[[+ugm_notice]]\'] = $modx->lexicon(\'ugm_modx_up_to_date\');
        $placeholders[\'[[+ugm_notice_color]]\'] = \'gray\';
    }
}

/* Get Tpl */

$tpl = $modx->getChunk(\'UpgradeMODXTpl\');

/* Do the replacements */
$tpl = str_replace(array_keys($placeholders), array_values($placeholders), $tpl);

if (php_sapi_name() === \'cli\') {
    echo $tpl;
}

return $tpl;',
    ),
  ),
);