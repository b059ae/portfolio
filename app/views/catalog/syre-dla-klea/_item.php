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
            <span class="text-muted">Цвет:</span> <?= $item->data->cvet ?>
            <br/>
            <span class="text-muted">Фасовка:</span> <?= $item->data->fasovka?>
            <br/>
            <span class="text-muted">Вид сырья:</span> <?= $item->data->{'vid-syra'} ?>
        </p>
    </div>
</div>
<br>