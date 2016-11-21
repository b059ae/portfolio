<?php
/** @var $item \yii\easyii\modules\page\api\PageObject */
/** @var $images EntityOb */

use \yii\easyii\helpers\Image;
use yii\helpers\Html;

$this->title = $item->seo('title', $item->model->title);
$this->params['breadcrumbs'][] = $item->model->title;

?>
<h1><?= $item->seo('h1', $item->title) ?></h1>

<div class="row">
    <div class="col-md-12">
        <?= $item->text ?>
    </div>
    <div class="col-md-12">
        <?php
        foreach ($images as $image) {
            $thumb = Image::thumb($image->izobrazenie, 128, 36);
            echo Html::a(Html::img($thumb), $image->{'ssylka-na-sajt'});
        }
        ?>
    </div>
</div>