<?php

namespace app\controllers;

use Yii;
use yii\easyii\modules\entity\api\Entity;
use yii\easyii\modules\page\api\Page;
use yii\web\NotFoundHttpException;

class PageController extends \yii\web\Controller
{


/*    public function actionView($slug)
    {
        $page = Page::get($slug);
        if(!$page){
            throw new NotFoundHttpException('Item not found.');
        }

        return $this->render('view', [
            'item' => $page,
        ]);
    }*/

    public function actionDostavka()
    {
        $page = Page::get('dostavka');
        if(!$page){
            throw new NotFoundHttpException('Item not found.');
        }

        $tk = Entity::cat('transportnye-kompanii');

        return $this->render('dostavka', [
            'item' => $page,
            'images' => $tk->getItems(),
        ]);
    }

    public function actionKontakty()
    {
        $page = Page::get('kontaktnaya-informacia');
        if(!$page){
            throw new NotFoundHttpException('Item not found.');
        }


        return $this->render('kontakty', [
            'item' => $page,
        ]);
    }
}
