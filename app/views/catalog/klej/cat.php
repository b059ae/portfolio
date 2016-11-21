<?php
/** @var  $items \yii\easyii\modules\catalog\api\ItemObject[] */
/** @var  $cat \yii\easyii\modules\catalog\api\CategoryObject */

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;

$this->title = $cat->seo('title', $cat->model->title);
$this->params['breadcrumbs'][] = ['label' => 'Shop', 'url' => ['shop/index']];
$this->params['breadcrumbs'][] = $cat->model->title;
?>
<h1><?= $cat->seo('h1', $cat->title) ?></h1>
<br/>

<div class="row">
    <div class="col-md-8">
        <?php if(count($items)) : ?>
            <br/>
            <?php foreach($items as $item) : ?>
                <?= $this->render('_item', ['item' => $item, 'cat'=>$cat]) ?>
            <?php endforeach; ?>
        <?php else : ?>
            <p>Category is empty</p>
        <?php endif; ?>
    </div>
    <div class="col-md-3 col-md-offset-1">
        <h4>Быстрый фильтр</h4>
        <div class="well well-sm">
            <?php $form = ActiveForm::begin(['method' => 'get', 'action' => Url::to(['/catalog/cat', 'slug' => $cat->slug])]); ?>
                <?= $form->field($filterForm, 'svojstva')->dropDownList($cat->fieldOptions('svojstva', 'Не выбрано')) ?>
                <?= $form->field($filterForm, 'cvet')->dropDownList($cat->fieldOptions('cvet', 'Не выбрано')) ?>
                <?= $form->field($filterForm, 'upakovka')->dropDownList($cat->fieldOptions('upakovka', 'Не выбрано')) ?>
                <?= Html::submitButton('Найти', ['class' => 'btn btn-primary']) ?>
            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>



<?= $cat->getPages() ?>