<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 27.11.16
 * Time: 11:40
 */

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
            ['email', 'email']
        ];
    }

}

?>