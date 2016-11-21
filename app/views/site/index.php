<?php
/** @var $features \yii\easyii\modules\entity\api\Entity */
/** @var $kley_items \yii\easyii\modules\catalog\api\ItemObject[] */
/** @var  $kley \yii\easyii\modules\catalog\api\CategoryObject */
/** @var  $syrie_items \yii\easyii\modules\catalog\api\ItemObject[] */
/** @var  $syrie \yii\easyii\modules\catalog\api\CategoryObject */
use yii\easyii\modules\carousel\api\Carousel;
use yii\easyii\modules\catalog\api\Catalog;
use yii\easyii\modules\feedback\api\Feedback;
use yii\helpers\Url;

$this->title = 'EasyiiCMS start page';
?>

<div class="container vertical-align-parent">
    <div class="col-md-12 text-center">
        <h1>Клей для производства мебели</h1>
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <?= Feedback::form([]) ?>
            </div>
        </div>

        <?=Carousel::widget(100,200)?>
        <?php foreach ($kley_items as $item) : ?>
            <?= $this->render('//catalog/klej/_item', ['item' => $item, 'cat' => $kley]) ?>
        <?php endforeach; ?>


        <h2>Получить полный каталог</h2>
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <?= Feedback::form([]) ?>
            </div>
        </div>

        <?php foreach ($syrie_items as $item) : ?>
            <?= $this->render('//catalog/syre-dla-klea/_item', ['item' => $item, 'cat' => $syrie]) ?>
        <?php endforeach; ?>

        <?php foreach ($features as $feature): ?>
            <a class="circle" href="<?= Url::base() . '/requirements.php' ?>">
                <?= $feature->title ?>
            </a>
        <?php endforeach; ?>

       
    </div>
</div>
