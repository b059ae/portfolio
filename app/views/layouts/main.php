<?php
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\Menu;

/** @var $content string */

$asset = \app\assets\AppAsset::register($this);
?>
<?php $this->beginPage() ?>
    <!DOCTYPE html>
    <html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=latin,cyrillic'
              rel='stylesheet' type='text/css'>
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
        <link rel="icon" href="/favicon.ico" type="image/x-icon">
        <?php $this->head() ?>
    </head>
    <body>
    <!-- Wrapper -->
    <div id="wrapper">
        <?php $this->beginBody() ?>
        <?= $this->render('_header', ['asset' => $asset]); ?>
        <?= $content ?>
        <?= $this->render('_footer', ['asset' => $asset]); ?>
        <?php $this->endBody() ?>
    </div>
    <!-- Go to top button -->
    <a id="goToTop"><i class="fa fa-angle-up top-icon"></i><i class="fa fa-angle-up"></i></a>
    </body>
    </html>
<?php $this->endPage() ?>