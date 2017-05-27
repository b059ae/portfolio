Объединение assets
==================

Введение
--------
Содержит информацию о сжатии и объединении файлов формата **css** и **js**. 
Сжатие и объединение нужно для:
* уменьшения времени загрузки страницы;
* объединения всех css в один файл;
* объединения всех js в один файл;
* сжать оба файла используя yiicompressor;


Описание работы
----------------
Assets требуется для объединения и сжатия файлов формата css и js.
Для начала, нужно в корневой каталог проекта подгрузить 2 файла:
1. compiler.jar
2. yiicompressor.jar

Вторым действием, требуется сгенерировать файл assets.php с помощью команды:

    php yii asset/template assets.php
    
В сгенерированном файле раскоментировать константы и bundles:
    
     //Константы
     Yii::setAlias('@webroot', __DIR__ . '/web'); 
     Yii::setAlias('@web', '/'); 
     ...
     //bundles
         'bundles' => [ 
              'app\assets\AppAsset', 
         ], 
        
В app/assets/AppAssets.php прописать зависимости например:

    public $depends = [ 
            ...
            'yii\widgets\ActiveFormAsset', 
            'yii\captcha\CaptchaAsset', 
            ...
        ]; 

Для того что бы выполнить объединение и сжатие, требуется выполнить в консоли команду:

    php yii asset assets.php app/config/assets-local.php
    
Если какой-нибудь из файлов .css или .js изменен, то требуется вручную выполнить данную команду.
Иначе, данный стиль или скрипт задействован не будет.

В components конфига "app/config/main-local.php" дописать: 
     
    //Генерация   php yii asset assets.php app/config/assets-local.php
    'assetManager' => [
        'bundles' =>require(__DIR__.'/assets-local.php'),
    ],
