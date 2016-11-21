<?php
use app\models\AddToCartForm;
use yii\easyii\modules\catalog\api\Catalog;
use yii\easyii\modules\feedback\api\Feedback;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;

$this->title = $item->seo('title', $item->model->title);
$this->params['breadcrumbs'][] = ['label' => 'Shop', 'url' => ['shop/index']];
$this->params['breadcrumbs'][] = ['label' => $item->cat->title, 'url' => ['shop/cat', 'slug' => $item->cat->slug]];
$this->params['breadcrumbs'][] = $item->model->title;

$colors = [];
if(!empty($item->data->color) && is_array($item->data->color)) {
    foreach ($item->data->color as $color) {
        $colors[$color] = $color;
    }
}
?>
<h1><?= $item->seo('h1', $item->title) ?></h1>

<div class="row">
    <div class="col-md-4">
        <br/>
        <?= Html::img($item->thumb(360, 240)) ?>
        <?php if(count($item->photos)) : ?>
            <br/><br/>
            <div>
                <?php foreach($item->photos as $photo) : ?>
                    <?= $photo->box(null, 100) ?>
                <?php endforeach;?>
                <?php Catalog::plugin() ?>
            </div>
        <?php endif; ?>
    </div>
    <div class="col-md-8">
        <div class="row">
            <div class="col-md-8">
                <p>
                    <?php if(!empty($item->data->cvet) ) : ?>
                        <span class="text-muted">Цвет:</span> <?= implode(', ', $item->data->cvet) ?>
                    <?php endif; ?>
                    <br/>
                    <?php if(!empty($item->data->upakovka) ) : ?>
                        <span class="text-muted">Упаковка:</span> <?= implode(', ', $item->data->upakovka) ?>
                    <?php endif; ?>
                    <br/>
                    <?php if(!empty($item->data->svojstva) ) : ?>
                        <span class="text-muted">Свойства:</span> <?= implode(', ', $item->data->svojstva) ?>
                    <?php endif; ?>
                </p>
            </div>
        </div>
        <?= $item->description ?>
        <?=Feedback::form( [] )?>
    </div>
</div>