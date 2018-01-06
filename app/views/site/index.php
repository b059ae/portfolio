<?php
/** @var $page \yii\easyii\modules\page\api\PageObject */
/** @var $items \yii\easyii\modules\catalog\api\ItemObject[] */

$this->registerMetaTag([
    'name' => 'description',
    'content' => $page->seo('description')
]);
$this->title = $page->seo('title', $page->getTitle());
?>
<!-- Portfolio -->
<div id="portfolio" class="grid-layout portfolio-3-columns" data-margin="0">
    <?php foreach ($items as $item): ?>
        <!-- portfolio item -->
        <div class="portfolio-item img-zoom pf-illustrations pf-uielements pf-media">
            <div class="portfolio-item-wrap">
                <div class="portfolio-image">
                    <a data-lightbox="ajax" href="<?= \yii\helpers\Url::to(['/portfolio/' . $item->slug]) ?>">
                        <img src="<?= $item->thumb(600, 431) ?>"/>
                    </a>
                </div>
                <div class="portfolio-description">
                    <a data-lightbox="ajax" href="<?= \yii\helpers\Url::to(['/portfolio/' . $item->slug]) ?>">
                        <h3><?= $item->getTitle() ?></h3>
                        <p><?= $item->short ?></p>
                        <i class="fa fa-expand"></i>
                    </a>
                </div>
            </div>
        </div>
        <!-- end: portfolio item -->
    <?php endforeach; ?>
    <!-- portfolio item -->
    <div class="portfolio-item img-zoom pf-illustrations pf-uielements pf-media">
        <div class="portfolio-item-wrap">
            <div class="portfolio-image">
                <a data-lightbox="ajax" href="/portfolio-page.html">
                    <img src="http://via.placeholder.com/600x400" alt="">
                </a>
            </div>
            <div class="portfolio-description">
                <a data-lightbox="ajax" href="/portfolio-page.html">
                    <h3>Luxury Wine</h3>
                    <p>Graphics / Branding</p>
                    <i class="fa fa-expand"></i>
                </a>
            </div>
        </div>
    </div>
    <!-- end: portfolio item -->
    <!-- portfolio item -->
    <div class="portfolio-item img-zoom pf-illustrations pf-uielements pf-media">
        <div class="portfolio-item-wrap">
            <div class="portfolio-image">
                <a href="#"><img src="http://via.placeholder.com/600x400" alt=""></a>
            </div>
            <div class="portfolio-description">
                <a href="portfolio-page-grid-gallery.html">
                    <h3>Luxury Wine</h3>
                    <span>Graphics / Branding</span>
                </a>
            </div>
        </div>
    </div>
    <!-- end: portfolio item -->
    <!-- portfolio item -->
    <div class="portfolio-item img-zoom pf-illustrations pf-uielements pf-media">
        <div class="portfolio-item-wrap">
            <div class="portfolio-image">
                <a href="#"><img src="http://via.placeholder.com/600x400" alt=""></a>
            </div>
            <div class="portfolio-description">
                <a data-lightbox="ajax" href="/portfolio/wine-pro">
                    <h3>Last Iceland Sunshine</h3>
                    <span>Graphics</span>
                </a>
            </div>
        </div>
    </div>
</div>
<!-- end: Portfolio -->