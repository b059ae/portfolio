<?php
/** @var $this \yii\web\View */
/** @var $asset \yii\web\AssetBundle */

use yii\helpers\Url;
use yii\widgets\Menu;
?>
<header>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-menu">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?= Url::home() ?>">Easyii shop</a>
            </div>

            <div class="collapse navbar-collapse" id="navbar-menu">
                <?= Menu::widget([
                    'options' => ['class' => 'nav navbar-nav'],
                    'items' => [
                        ['label' => 'Home', 'url' => ['site/index']],
                        ['label' => 'Shop', 'url' => '#'],
                        ['label' => 'News', 'url' => '#'],
                        ['label' => 'Articles', 'url' => '#'],
                        ['label' => 'Gallery', 'url' => '#'],
                        ['label' => 'Guestbook', 'url' => '#'],
                        ['label' => 'FAQ', 'url' => '#'],
                        ['label' => 'Contact', 'url' => '#'],
                    ],
                ]); ?>
            </div>
        </div>
    </nav>
</header>