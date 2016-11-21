<?php
namespace app\models;

use Yii;
use yii\base\Model;

class SyryeFilterForm extends Model
{
    public $cvet;
    public $fasovka;
    public $vid_syra;


    public function rules()
    {
        return [
            [['cvet','fasovka','vid_syra'], 'string']
        ];
    }

    public function attributeLabels()
    {
        return [
            'cvet' => 'Цвет',
            'fasovka' => 'Фасовка',
            'vid_syra' => 'Вид сырья',
        ];
    }

    public function parse()
    {
        $filters = [];

        if ($this->cvet) {
            $filters['cvet'] = $this->cvet;
        }
        if ($this->fasovka) {
            $filters['fasovka'] = $this->fasovka;
        }
        if ($this->vid_syra) {
            $filters['vid-syra'] = $this->vid_syra;
        }

        return $filters;
    }
}