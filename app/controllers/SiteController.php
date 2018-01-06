<?php

namespace app\controllers;

use Yii;
use yii\easyii\modules\catalog\api\Catalog;
use yii\easyii\modules\entity\api\Entity;
use yii\easyii\modules\page\api\Page;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

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
     *
     * @return string
     * @throws NotFoundHttpException
     */
    public function actionIndex()
    {
        $page = Page::get('main');
        if (!$page) {
            throw new NotFoundHttpException('Item not found.');
        }

        return $this->render('index',[
            'page' => $page,
            'items' => Catalog::items(),
        ]);
    }


    /**
     * Работа в портфолио
     *
     * @param string $slug
     * @return string
     * @throws NotFoundHttpException
     */
    public function actionPortfolio(string $slug)
    {
        // При аякс-запросе показываем только часть страницы
        if (Yii::$app->request->isAjax) {
            $this->layout = false;
        }

        $item = Catalog::get($slug);
        if (!$item) {
            throw new NotFoundHttpException('Item not found.');
        }

        return $this->render('portfolio',[
             'item' => $item,
        ]);
    }
}