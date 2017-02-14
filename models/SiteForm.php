<?php

namespace app\models;

use yii\base\Model;

class SiteForm extends Model
{
    public $address;
    public $description;

    public function rules()
    {
        return [
          ['address', 'required', 'message' => 'Enter the site address, please!'],
          ['description', 'required', 'message' => 'Enter the site description, please!'],
          ['address', 'url', 'message' => 'You have entered incorrect url!'],
        ];
    }
}