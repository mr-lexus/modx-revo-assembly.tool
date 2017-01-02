<?php return array (
  'manifest-version' => '1.1',
  'manifest-attributes' => 
  array (
    'changelog' => 'Changelog for virtualpage.

2.0.4-beta (07.11.2016)
==============
- Add "cache_prefix" to "cacheKey"

2.0.3-beta (10.09.2016)
==============
- Fix "entry getlist"

2.0.2-beta (04.08.2016)
==============
- Fix "data"
- Fix "lexicon"

2.0.1-beta (01.08.2016)
==============
- Improvement "dispatch"

2.0.0-beta (01.08.2016)
==============
- Full refactoring

1.1.0-beta
==============
- update FastRoute

1.0.9-beta
==============
- added new event: "vpOnResourceAfterCreate"
- refactoring cache method

1.0.8-beta
==============
- add check site status
- refactoring js (grid, window, handler)

1.0.7-beta
==============
- update FastRoute

1.0.6-beta
==============
- add cache for "chunk, snippet"
- refactoring cache method

1.0.5-beta
==============
- add cache for "dinamic resource"
- small fix

1.0.4-beta
==============
- add option placeholder in route
- add "dinamic resource" in method handler

1.0.3-beta
==============
- small fix

1.0.2-beta
==============
- add method "GET,POST"
- add prefix pl

1.0.1-beta
==============
- add handler type "chunk"
- small fix

1.0.0-beta
==============
- Initial release.',
    'license' => 'The MIT License (MIT)

Copyright (c) 2014 Vladimir Grishin

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.',
    'readme' => '--------------------
virtualpage
--------------------
Author: Vgrish <vgrish@gmail.com>
--------------------

Virtual page for MODx Revolution.

Feel free to suggest ideas/improvements/bugs on GitHub:
https://github.com/vgrish/virtualpage/issues',
  ),
  'manifest-vehicles' => 
  array (
    0 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modNamespace',
      'guid' => 'd35c737a4799f63d041a5a36b4109559',
      'native_key' => 'virtualpage',
      'filename' => 'modNamespace/3e77e78479fa55a5033e87e782f6507a.vehicle',
      'namespace' => 'virtualpage',
    ),
    1 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modSystemSetting',
      'guid' => 'b01b544089c73f36ac43f3c90f46c07c',
      'native_key' => 'virtualpage_active',
      'filename' => 'modSystemSetting/b5fdddb30c0adb71600def35c98f1998.vehicle',
      'namespace' => 'virtualpage',
    ),
    2 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modSystemSetting',
      'guid' => '8bd89dc01b4c23d4b2fd7016ff3e4daa',
      'native_key' => 'virtualpage_exclude_event_groupname',
      'filename' => 'modSystemSetting/9b083a2c4bbb9f934c3e1bd843d46a91.vehicle',
      'namespace' => 'virtualpage',
    ),
    3 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modSystemSetting',
      'guid' => '686570b0c3dfccbd8dee203fa407802d',
      'native_key' => 'virtualpage_fastrouter_key',
      'filename' => 'modSystemSetting/5d35a80ea218673ea975231a3378839e.vehicle',
      'namespace' => 'virtualpage',
    ),
    4 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modSystemSetting',
      'guid' => 'cc3cf6cad63cbd9098d6bc9cacd2af38',
      'native_key' => 'virtualpage_prefix_placeholder',
      'filename' => 'modSystemSetting/77277de79cc0c533ef3df5258bce8229.vehicle',
      'namespace' => 'virtualpage',
    ),
    5 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modEvent',
      'guid' => 'b48f09aaf010e5690d80744a73e87f0b',
      'native_key' => 'vpOnResourceAfterCreate',
      'filename' => 'modEvent/3669a5fcda86e3b5390e0d899838ccb2.vehicle',
      'namespace' => 'virtualpage',
    ),
    6 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modEvent',
      'guid' => 'e5a3373a19c6f657747e6adce4e6b5f1',
      'native_key' => 'vpOnBeforeProcess',
      'filename' => 'modEvent/b01f7223b37e797d61b1ddaedce61ab9.vehicle',
      'namespace' => 'virtualpage',
    ),
    7 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modEvent',
      'guid' => 'c5c3cbcf32a63c96cef18200389b5026',
      'native_key' => 'vpOnGetResource',
      'filename' => 'modEvent/b3e4f7f445069b9f396d0327c516172a.vehicle',
      'namespace' => 'virtualpage',
    ),
    8 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modMenu',
      'guid' => '3ef05e7dfafe8c7dc2359f9542dbfd77',
      'native_key' => 'virtualpage',
      'filename' => 'modMenu/1db2a9dadb7dd5bcdf56da656cad5581.vehicle',
      'namespace' => 'virtualpage',
    ),
    9 => 
    array (
      'vehicle_package' => 'transport',
      'vehicle_class' => 'xPDOObjectVehicle',
      'class' => 'modCategory',
      'guid' => '71ec4ec3edbcf875249e19d4706e7596',
      'native_key' => NULL,
      'filename' => 'modCategory/3ba043c97f3ca53b30ad598d013ba02b.vehicle',
      'namespace' => 'virtualpage',
    ),
  ),
);