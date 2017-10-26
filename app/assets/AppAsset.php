<?php
namespace app\assets;

class AppAsset extends \yii\web\AssetBundle
{
    public $sourcePath = '@app/media';
    public $css = [
        'css/plugins.css',
        'css/style.css',
        'css/responsive.css',
    ];
    public $js = [
        'js/jquery.js',
        'js/plugins.js',
        'js/functions.js'
    ];
    public $depends = [
        /*'yii\web\JqueryAsset',
        'yii\bootstrap\BootstrapAsset',*/
    ];
}
