<?php

namespace app\controllers;

use Yii;
use app\models\Posts;
use app\models\Courses;
use app\models\Reviews;
use app\models\Sites;
use app\models\SiteForm;
use yii\data\Pagination;
use yii\web\HttpException;

class BlogController extends AppController
{
    function actionIndex()
    {
        $query = Posts::find()->where(['hide' => 0]);
        $all_the_posts = $query->orderBy(['date' => SORT_DESC])->all();
        $all_the_posts_count = $query->count();
        $pages = new Pagination(['totalCount' => $query->count(), 'pageSize' => 2, 'pageSizeParam' => FALSE, 'forcePageParam' => FALSE]);
        $posts = $query->orderBy(['date' => SORT_DESC])->offset($pages->offset)->limit($pages->limit)->all();
        Posts::setNumbers($posts, $all_the_posts);
//        $this->debug($all_the_posts);
//        die;
//        $session = Yii::$app->session;
//        $session->set("release_number", getId()); // "getId()" from funcs.php

        $this->view->title = 'Blog';

        return $this->render('index', ['posts' => $posts,
            'all_the_posts_count' => $all_the_posts_count,
            'active_page' => Yii::$app->request->get('page', 1),
            'count_pages' => $pages->getPageCount(),
            'pages' => $pages
        ]);
    }

    function actionView()
    {
        $id = Yii::$app->request->get('id'); // as alternative way to get id;
        $data['all_the_posts_count'] = Yii::$app->request->get('all'); // as alternative way to get id;
        $data['redirect_id'] = Yii::$app->request->get('redirect_id');
//        $single_post = Post::find()->where(['id' => $id])->one();
        $single_post = Posts::findOne($id); // as alternative syntax;

        if (empty($single_post)) {
            throw new HttpException(404, 'The page you are searching for doesn\'t exist!');
        }

        return $this->render('view', compact('single_post', 'data', 'all_releases'));
    }

    function actionAuthor()
    {
        return $this->render('author');
    }

    function actionVideos()
    {
        $courses = Courses::find()->orderBy(['id' => SORT_DESC])->all();
        return $this->render('videos', compact('courses'));
    }

    function actionReviews()
    {
        $reviews = Reviews::find()->orderBy('rand()')->all();
        return $this->render('reviews', compact('reviews'));
    }

    function actionSites()
    {
        $sites = Sites::find()->where(['active' => 1])->orderBy(['id' => SORT_DESC])->all();
        return $this->render('sites', compact('sites'));
    }

    function actionAddSite()
    {
        $site_form = new SiteForm();

        if ($site_form->load(Yii::$app->request->post()) && $site_form->validate()) {
            $site = new Sites();
            $site->address = $site_form->address;
            $site->description = $site_form->description;
            $site->save();
            $success = true;
            $error = false;
            return $this->render('add-site', compact('site_form', 'success', 'error'));
        } else {
            if (isset($_POST['address'])) {
                $error = true;
            } else {
                $error = false;
            }
            $success = false;
            return $this->render('add-site', compact('site_form', 'success', 'error'));
        }
    }

    function actionReleases(){
        $query = Posts::find()->where(['hide' => 0, 'is_release' => 1]);
        $all_the_posts = $query->orderBy(['date' => SORT_DESC])->all();
        $all_the_releases = count($all_the_posts);
        $pagination = new Pagination([
            'defaultPageSize' => 2,
            'totalCount' => $query->count()
        ]);

        $releases = $query->orderBy(['date' => SORT_DESC])->offset($pagination->offset)->limit($pagination->limit)->all();

        Posts::setNumbers($releases, $all_the_posts);

        return $this->render('releases', ['releases' => $releases,
            'active_page' => Yii::$app->request->get('page', 1),
            'count_pages' => $pagination->getPageCount(),
            'all_the_releases' => $all_the_releases,
            'pagination' => $pagination]);

    }

    function actionReleaseSingle(){
        $id = Yii::$app->request->get('id'); // as alternative way to get id;
        $data['all_the_releases_count'] = Yii::$app->request->get('all'); // as alternative way to get id;
        $data['redirect_id'] = Yii::$app->request->get('redirect_id');
        $data['release_number'] = Yii::$app->request->get('num');
        $single_release = Posts::findOne($id); // as alternative syntax;

        if (empty($single_release)) {
            throw new HttpException(404, 'The page you are searching for doesn\'t exist!');
        }

        return $this->render('release-single', compact('single_release', 'data', 'id'));
    }
}