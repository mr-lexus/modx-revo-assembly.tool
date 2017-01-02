<?php return array (
  'manifest-version' => '1.1',
  'manifest-attributes' => 
  array (
    'license' => '',
    'readme' => 'modxSite
=====================================================

This MODX Extra automatically installing most popular MODX-packages on your MODX-site
',
    'changelog' => 'modxSite-1.6.0
=============================================================
1. Added thumb processors
2. Added thumb connector


modxSite-1.5.0
=============================================================
1. Added object-processor
2. Added service modxsite
3. Code refactoring


modxSite-1.4.0
=============================================================
1. Remove packages autoinstall
2. #2 replace $this->classKey with $alias


modxSite-1.3.1
=============================================================
1. Changed check captcha order 
2. Force Smarty compiling on non-cached templates (in controller)
3. Minor bugfix


modxSite-1.3.0
=============================================================
1. Queries new order
2. SQL errors loging


modxSite-1.2.3
=============================================================
1. prepareResponse bugfix


modxSite-1.2.2
=============================================================
1. Code refactoring
2. Added default connector


modxSite-1.2.1
=============================================================
1.  Custom MODX core directory and tables prefix supporting


modxSite-1.2.0
=============================================================
1.  Added form processor


modxSite-1.1.1
=============================================================
1.  Added auto-installing packages:
        - Console
        - Ace


modxSite-1.1.0
=============================================================
1.  Added method modxsite::loadProcessor()
2.  Create mediaSources:
        - Controllers
        - Smarty templates
        - Public templates
        - Images
        - Files
3.  Install packages:
        - phpTemplates
        - modxSmarty
4.  Added getlist/getdata processors from shopModx
5.  Added plugin Debug
6.  Added plugin memory_get_usage
7.  Added modxclub.ru transport provider
        

modxSite-1.0.0-rc
=============================================================
1.  Removed operator GOTO in package resolver for support php lower than 5.3
2.  Minor bugfix in package resolver


modxSite-0.0.2-beta
=============================================================
1.  Added MediaSource Controllers for site controllers (modTemplate`s)
2.  Added MediaSource Templates for site templates (site skins)
3.  Added system setting modxSite.template_url


modxSite-0.0.1-beta
=============================================================
1.  Created core
2.  Created packages installation resolver',
  ),
  'manifest-vehicles' => 
  array (
    0 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modNamespace',
      'guid' => '5ff6fda481e1e2fe570008cd451287cd',
      'native_key' => 'modxsite',
      'filename' => 'modNamespace/5966c64e1192ec1801526f47343054b2.vehicle',
      'namespace' => 'modxsite',
    ),
    1 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modSystemSetting',
      'guid' => '75f82f8a3bdcb7b90ebd10673e5e706f',
      'native_key' => 'modxSite.template_url',
      'filename' => 'modSystemSetting/684615b7cebce7e720c3b0fcd1456037.vehicle',
      'namespace' => 'modxsite',
    ),
    2 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modSystemSetting',
      'guid' => '415b4926e32352ac6820edd412be570a',
      'native_key' => 'modxsite.thumb_snippet',
      'filename' => 'modSystemSetting/8f16c116f3558fb70c9d8c43c6e9702e.vehicle',
      'namespace' => 'modxsite',
    ),
    3 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modSystemSetting',
      'guid' => '770d9b4029c71e78da9c3046db53ae60',
      'native_key' => 'modxsite.thumb_types',
      'filename' => 'modSystemSetting/057e7ee5cab64f3ad5e57f806294590a.vehicle',
      'namespace' => 'modxsite',
    ),
    4 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modMediaSource',
      'guid' => '6f09793bc208cff18c34a0f4868de90d',
      'native_key' => 0,
      'filename' => 'modMediaSource/cdf24420c52147e9cea3e1d980788f33.vehicle',
      'namespace' => 'modxsite',
    ),
    5 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modMediaSource',
      'guid' => 'a754f75cc5b60539c2b5a4a2def6a49a',
      'native_key' => 0,
      'filename' => 'modMediaSource/5602de9de607bd1d85769bf0032d89a6.vehicle',
      'namespace' => 'modxsite',
    ),
    6 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modMediaSource',
      'guid' => 'e6885a3c40f95b87a5e6ef2f0c65d1d1',
      'native_key' => 0,
      'filename' => 'modMediaSource/e2106f6c16ac32a5669ba8f8367ab1ec.vehicle',
      'namespace' => 'modxsite',
    ),
    7 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modMediaSource',
      'guid' => '14507b888ba832e4b2a3fbb3bc26ec5f',
      'native_key' => 0,
      'filename' => 'modMediaSource/1e0c067a6394d8625dc3b0ee82836481.vehicle',
      'namespace' => 'modxsite',
    ),
    8 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modMediaSource',
      'guid' => '2c0db0af36b279f56f1c2f0c54f527ba',
      'native_key' => 0,
      'filename' => 'modMediaSource/3037e19aee6e7313a7101bb801f21a38.vehicle',
      'namespace' => 'modxsite',
    ),
    9 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modTransportProvider',
      'guid' => '79f39a103afb8a5965003d31dd25e35c',
      'native_key' => 0,
      'filename' => 'modTransportProvider/42146544d953ffe746e974f4de001348.vehicle',
      'namespace' => 'modxsite',
    ),
    10 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modCategory',
      'guid' => '06cacd4c39245c0b8aca8ce674ac40df',
      'native_key' => 1,
      'filename' => 'modCategory/db2a3a1f2757e06d08986bea33baaf0c.vehicle',
      'namespace' => 'modxsite',
    ),
  ),
);