<?php

namespace app\controllers;

use yii\easyii\modules\catalog\api\Catalog;
use yii\easyii\modules\entity\api\Entity;
use yii\web\Controller;

class SiteController extends Controller
{
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    public function actionTest(){
        return $this->render('test');
    }

    public function actionIndex()
    {
        $features = Entity::cat('preimusestva');

        $kley = Catalog::cat('klej');
        $syrie = Catalog::cat('syre-dla-klea');

        return $this->render('index',[
            'features'=>$features->getItems(),
            'kley'=>$kley,
            'kley_items'=>$kley->getItems([
                'pagination' => ['pageSize' => 4],
            ]),
            'syrie'=>$syrie,
            'syrie_items'=>$syrie->getItems([
                'pagination' => ['pageSize' => 4],
            ]),
        ]);
    }
}