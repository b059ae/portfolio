<?php

namespace app\controllers;

use Yii;
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


    /**
     * Работа в портфолио
     *
     * @param string $slug
     * @return string
     */
    public function actionPortfolio(string $slug)
    {
        // При аякс-запросе показываем только часть страницы
        if (Yii::$app->request->isAjax) {
            $this->layout = false;
        }

        return $this->render('portfolio',[
            // 'item' => //find item
        ]);
    }
}