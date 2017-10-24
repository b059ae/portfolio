<?php
/** @var $this \yii\web\View */
/** @var $asset \yii\web\AssetBundle */

use yii\helpers\Url;
use yii\widgets\Menu;
?>
<header id="header" class="header-transparent dark">
    <div id="header-wrap">
        <div class="container">
            <!--Logo-->
            <div id="logo">
                <a href="index.html" class="logo" data-dark-logo="images/logo-dark.png">
                    <img src="images/logo.png" alt="Polo Logo">
                </a>
            </div>
            <!--End: Logo-->

            <!--Top Search Form-->
            <div id="top-search">
                <form action="search-results-page.html" method="get">
                    <input type="text" name="q" class="form-control" value="" placeholder="Start typing & press  &quot;Enter&quot;">
                </form>
            </div>
            <!--end: Top Search Form-->

            <!--Header Extras-->
            <div class="header-extras">
                <ul>
                    <li class="visible-md visible-lg">
                        <!--top search-->
                        <a href="#" class="toggle-item" data-target="#mainMenu" data-class="items-visible">
                            <i class="fa fa-bars"></i>
                            <i class="fa fa-close"></i>
                        </a>
                        <!--end: top search-->
                    </li>
                </ul>
            </div>
            <!--end: Header Extras-->

            <!--Navigation Resposnive Trigger-->
            <div id="mainMenu-trigger">
                <button class="lines-button x"> <span class="lines"></span> </button>
            </div>
            <!--end: Navigation Resposnive Trigger-->

            <!--Navigation-->
            <div id="mainMenu" class="menu-slide light items-visible">
                <div class="container">
                    <nav>
                        <ul>
                            <?php foreach (yii\easyii\modules\menu\api\Menu::items('main') as $item): ?>
                                <li>
                                    <a href="<?= $item['url'] ?>"><?= $item['label'] ?></a>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </nav>
                </div>
            </div>
            <!--end: Navigation-->
        </div>
    </div>
</header>