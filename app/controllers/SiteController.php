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

    /**
     * Главная страница
     * @return string
     */
    public function actionIndex()
    {

        return $this->render('index',[
        ]);
    }
}