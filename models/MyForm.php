<?php

namespace app\models;

use yii\base\Model;

class MyForm extends Model
{
    public $name;
    public $email;

    public function rules()
    {
        return [
          [['name', 'email'], 'required'],
            ['email', 'email', 'message' => 'Your email is incorrect!']
        ];
    }

}

?>