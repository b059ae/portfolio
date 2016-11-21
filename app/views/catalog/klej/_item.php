<?php
/** @var $item \yii\easyii\modules\catalog\api\ItemObject */
/** @var $cat \yii\easyii\modules\catalog\api\CategoryObject */
use yii\helpers\Html;
?>

<div class="row">
    <div class="col-md-2">
        <?= Html::img($item->thumb(160, 160)) ?>
    </div>
    <div class="col-md-10">
        <p><?= Html::a($item->title, ['catalog/view', 'category' => $cat->slug, 'slug' => $item->slug]) ?></p>
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
<br>