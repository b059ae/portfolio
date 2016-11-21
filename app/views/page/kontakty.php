<?php
/** @var $item \yii\easyii\modules\page\api\PageObject */

use \yii\easyii\helpers\Image;
use yii\easyii\models\Setting;
use yii\helpers\Html;
use yii\web\JsExpression;

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
        $parts = explode("#", $item->adres);
        if (count($parts) == 4): ?>
            <iframe width="640" height="480" frameborder="0" style="border:0"
                    src="https://www.google.com/maps/embed/v1/place?q=place_id:<?= $parts[1] ?>&key=<?= Setting::get('gm_api_key') ?>&language=<?= Yii::$app->language ?>"
            ></iframe>
        <?php endif; ?>
    </div>
</div>