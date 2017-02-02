<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 02.02.17
 * Time: 10:15
 */

namespace app\controllers;


class PostController extends AppController
{

    function actionIndex()
    {
        $data = array();
        $data['hello'] = "Hello";
        $data['hi'] = "Hi";

        return $this->render('index', ['data' => $data]) ;

    }
    function actionTest( $user_name = 'Unrecognized user')
    {
        $data = array();
        $data['hello'] = "Hello";
        $data['hi'] = "Hi";
        $data['user_name'] = $user_name;
        return $this->render('test', compact('data')) ;
    }
}