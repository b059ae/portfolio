<?php
/**
 * Created by PhpStorm.
 * User: b059a
 * Date: 06.01.2018
 * Time: 10:08
 */
/** @var $item \yii\easyii\modules\catalog\api\ItemObject */

$this->registerMetaTag([
    'name' => 'description',
    'content' => $item->seo('description')
]);
$this->title = $item->seo('title', $item->getTitle());
?>
<div class="portfolio-ajax-page">
    <div class="col-md-7">
        <div class="carousel arrows-grey arrows-only arrows-visible dots-dark dots-inside" data-items="1">
            <?php foreach ($item->photos as $photo) : ?>
                <?= $photo->box(1315, 945) ?>
            <?php endforeach; ?>
        </div>
    </div>
    <div class="col-md-5">
        <div class="project-description">
            <h2><?= $item->getTitle() ?></h2>
            <?= $item->getDescription() ?>
            <hr>
            <div class="portfolio-attributes style1">
                <div class="attribute"><strong>Website:</strong> <?= \yii\helpers\Html::a($item->website, 'http://'.$item->website, ['rel'=>'nofollow', 'target'=>'_blank']) ?></div>
                <div class="attribute"><strong>Date:</strong> <?= $item->date ?></div>
                <div class="attribute"><strong>Services:</strong> <?= implode(' / ', $item->services) ?></div>
            </div>
            <!--<hr>
            <div class="portfolio-share m-t-20">
                <h4>Share this project</h4>
                <div class="align-center">

                    <a class="btn btn-xs btn-slide btn-light" href="#">
                        <i class="fa fa-facebook"></i>
                        <span>Facebook</span>
                    </a>
                    <a class="btn btn-xs btn-slide btn-light" href="#" data-width="100">
                        <i class="fa fa-twitter"></i>
                        <span>Twitter</span>
                    </a>
                    <a class="btn btn-xs btn-slide btn-light" href="#" data-width="118">
                        <i class="fa fa-instagram"></i>
                        <span>Instagram</span>
                    </a>
                    <a class="btn btn-xs btn-slide btn-light" href="mailto:#" data-width="80">
                        <i class="fa fa-envelope"></i>
                        <span>Mail</span>
                    </a>
                </div>
            </div>-->
        </div>
    </div>
</div>

