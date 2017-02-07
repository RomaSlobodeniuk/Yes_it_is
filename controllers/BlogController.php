<?php

namespace app\controllers;
use app\models\Post;
use yii\data\Pagination;
use yii\web\HttpException;

class BlogController extends AppController
{

    function actionIndex()
    {
        $query = Post::find()->select('id, title, excerpt')->orderBy('id DESC');
        $pages = new Pagination(['totalCount' => $query->count(), 'pageSize' => 2, 'pageSizeParam' => FALSE, 'forcePageParam' => FALSE]);
        $posts = $query->offset($pages->offset)->limit($pages->limit)->all();
//        debug($posts);
//        debug($_SERVER);
        $data = array();
        $data['hello'] = "Hello";
        $data['hi'] = "Hi";

        return $this->render('index', ['data' => $data, 'posts' => $posts, 'pages' => $pages]) ;

    }

//    function actionTest( $user_name = 'Unrecognized user')
//    {
//        $data = array();
//        $data['hello'] = "Hello";
//        $data['hi'] = "Hi";
//        $data['user_name'] = $user_name;
//        return $this->render('test', compact('data')) ;
//    }

    function actionView( $id = '')
    {
        $id = \Yii::$app->request->get('id'); // as alternative way to get id;
//        $single_post = Post::find()->where(['id' => $id])->one();
        $single_post = Post::findOne($id); // as alternative syntax;
        if(empty($single_post)){
            throw new HttpException(404, 'The page you are searching for doesn\'t exist!');
        }
        $data = array();
        $data['title'] = $single_post->title;
        $data['text'] = $single_post->text;
        return $this->render('view', compact('data')) ;
    }
}