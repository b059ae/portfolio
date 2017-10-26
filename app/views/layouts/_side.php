<?php
/**
 * User: Alexander Popov <b059ae@gmail.com>
 * Date: 26.10.17
 * Time: 11:28
 */
?>
<!-- Side Panel -->
<div id="side-panel" class="dark">
    <div id="close-panel">
        <i class="fa fa-close"></i>
    </div>

    <div class="side-panel-wrap">
        <!--<div class="logo">
            <a href="#"><img src="images/side-logo-light.png"></a>
        </div>-->
        <h2 class="heading-3 text-light">Alexander Popov</h2>
        <h1 class="lead text-light">Full Stack Web Developer</h1>
        <h1 class="lead text-light">Software Engineer</h1>
        <hr class="space">

        <!--Navigation-->
        <div id="mainMenu" class="menu-onclick menu-vertical">
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

        <hr class="space">



        <!--social icons-->
        <div class="social-icons social-icons-border social-icons-light social-icons-colored-hover text-center">
            <ul>
                <li><a href="#"><i class="fa fa-envelope"></i></a></li>
                <li class="social-github"><a href="#"><i class="fa fa-github"></i></a></li>
                <li class="social-linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                <li class="social-skype"><a href="#"><i class="fa fa-skype"></i></a></li>
                <li class="social-facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
<!--                <li class="social-gplus"><a href="#"><i class="fa fa-google-plus"></i></a></li>-->
                <li><a href="#"><i class="fa fa-vk"></i></a></li>
            </ul>
        </div>
        <!--end: social icons-->

        <!--copyright text-->
        <?php /*
        <p class="small">© 2017 POLO - Best HTML5 Template Ever. All Rights Reserved.</p>
        */ ?>
        <!--end: copyright text-->
    </div>

</div>
<!-- end: Side Panel -->

