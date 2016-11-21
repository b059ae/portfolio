<?php

namespace app\controllers;

use Yii;
use yii\easyii\modules\catalog\api\Catalog;
use yii\helpers\Html;
use yii\web\NotFoundHttpException;

class CatalogController extends \yii\web\Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionCat($slug)
    {
        $filterForm = $this->getFilterForm($slug);
        $cat = Catalog::cat($slug);
        if(!$cat){
            throw new NotFoundHttpException('Category not found.');
        }
        $filters = null;
        if($filterForm->load(Yii::$app->request->get()) && $filterForm->validate()) {
            $filters = $filterForm->parse();
        }

        return $this->render($slug.'/cat', [
            'cat' => $cat,
            'items' => $cat->getItems([
                'pagination' => ['pageSize' => 2],
                'filters' => $filters
            ]),
            'filterForm' => $filterForm
        ]);
    }

    protected function getFilterForm($slug){
        switch ($slug){
            case 'syre-dla-klea':
                return new \app\models\SyryeFilterForm();
            case 'klej':
                return new \app\models\KleyFilterForm();
            default:
                throw new NotFoundHttpException('Category not found.'); 
        }
    }

    public function actionSearch($text)
    {
        $text = filter_var($text, FILTER_SANITIZE_STRING);

        return $this->render('search', [
            'text' => $text,
            'items' => Catalog::items([
                'where' => ['or', ['like', 'title', $text], ['like', 'description', $text]],
            ])
        ]);
    }

    public function actionView($category, $slug)
    {
        $cat = Catalog::cat($category);
        if(!$cat){
            throw new NotFoundHttpException('Category not found.');
        }
        $item = Catalog::get($slug);
        if(!$item){
            throw new NotFoundHttpException('Item not found.');
        }

        return $this->render($category.'/view', [
            'item' => $item,
//            'addToCartForm' => new \app\models\AddToCartForm()
        ]);
    }
}
