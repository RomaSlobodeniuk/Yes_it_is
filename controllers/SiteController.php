<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;

use app\models\MyForm;
use yii\helpers\Html;
use yii\web\Cookie;
use yii\web\UploadedFile;
use app\models\Publications;
use yii\data\Pagination;


class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return string
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    /**
     * Displays about page.
     *
     * @return string
     */
    public function actionAbout()
    {
        return $this->render('about');
    }

    public function actionHello($msg = 'Watcha doin\'? It\'s Roma')
    {
        return $this->render('hello', ['message' => $msg]);
    }

    public function actionForm()
    {
        $form = new MyForm();
        if ($form->load(Yii::$app->request->post()) && $form->validate()){
            $name = Html::encode($form->name);
            $email = Html::encode($form->email);
            $form->file = UploadedFile::getInstance($form, 'file');
            $form->file->saveAs('uploads/' . $form->file->baseName . '.' . $form->file->extension);
        } else {
            $name = '';
            $email = '';
        }
        return $this->render('form', ['form' => $form,
                                        'name' => $name,
                                        'email' => $email]);
    }

    public function actionPublications(){

        $query = Publications::find()->select('id, title, short_content, author_name')->orderBy('id DESC');
        $pages = new Pagination(['totalCount' => $query->count(), 'pageSize' => 2, 'pageSizeParam' => FALSE, 'forcePageParam' => FALSE]);
        $publications = $query->offset($pages->offset)->limit($pages->limit)->all();

//        $_SESSION['redirect_id'] =  getId();

        $session = Yii::$app->session;
        $session->set("redirect_id", getId()); // "getId()" from funcs.php

        return $this->render('publications', ['publications' => $publications, 'pages' => $pages]);
    }

    function actionView()
    {
        $id = \Yii::$app->request->get('id'); // as alternative way to get id;
//        $single_post = Post::find()->where(['id' => $id])->one();
        $single_publication = Publications::findOne($id); // as alternative syntax;
        if(empty($single_publication)){
            throw new HttpException(404, 'The page you are searching for doesn\'t exist!');
        }
        $data = array();
        $data['title'] = $single_publication->title;
        $data['content'] = $single_publication->content;

        $data['redirect_id'] = Yii::$app->session->get("redirect_id");

//        $cookies = Yii::$app->response->cookies;
//        $cookies->add(new Cookie([
//            'name' => 'redirect_id',
//            'value' => Yii::$app->session->get("redirect_id")
//        ]));
//
//        $our_cookie = Yii::$app->request->cookies;
//
//        $data['redirect_id'] = $our_cookie->getValue("redirect_id");
//        $our_cookie->remove("redirect_id");

        return $this->render('view', compact('data')) ;
    }
}
