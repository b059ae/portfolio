<?php
namespace app\models;

use Yii;
use yii\base\Model;

class KleyFilterForm extends Model
{
    public $cvet;
    public $upakovka;
    public $svojstva;


    public function rules()
    {
        return [
            [['cvet','upakovka','svojstva'], 'string']
        ];
    }

    public function attributeLabels()
    {
        return [
            'cvet' => 'Цвет',
            'upakovka' => 'Упаковка',
            'svojstva' => 'Свойства',
        ];
    }

    public function parse()
    {
        $filters = [];

        if ($this->cvet) {
            $filters['cvet'] = $this->cvet;
        }
        if ($this->upakovka) {
            $filters['upakovka'] = $this->upakovka;
        }
        if ($this->svojstva) {
            $filters['svojstva'] = $this->svojstva;
        }

        return $filters;
    }
}