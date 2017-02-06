<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 02.02.17
 * Time: 10:13
 */

namespace app\controllers;

use yii\web\Controller;

class AppController extends Controller
{
    public function debug($array){
        echo '<pre>' . print_r($array, true) . '</pre>';
    }
}