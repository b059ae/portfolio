<?php
/** @var $item \yii\easyii\modules\page\api\PageObject */

$this->title = $item->seo('title', $item->model->title);
$this->params['breadcrumbs'][] = $item->model->title;

?>
<h1><?= $item->seo('h1', $item->title) ?></h1>

<div class="row">
    <div class="col-md-12">
        <?= $item->text ?>
    </div>
</div>