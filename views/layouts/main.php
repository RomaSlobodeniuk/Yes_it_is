<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\ActiveForm;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use app\components\my_widgets\Author;
use app\components\my_widgets\SidebarLeft;
use app\components\my_widgets\RandomPosts;
use app\models\SearchForm;

$search_form = new SearchForm();

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta property="og:url" content="http://localhost/04_test_files/Yes_it_is/web/blog/author"/>
    <meta property="og:type" content="MySITE"/>
    <meta property="og:title" content="Author"/>
    <meta property="og:description" content="My description"/>
    <meta property="og:image" content="<?= Yii::$app->urlManager->baseUrl . '/images/icons/icon_1.jpg'; ?>"/>
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head(); ?>
    <link href="<?= Yii::$app->homeUrl . "images/icons/icon_1.png"; ?>" rel="shortcut icon" type="image/x-icon">
    <script src="https://vk.com/js/api/openapi.js?139" type="text/javascript"></script>
</head>
<body>
<div id="fb-root"></div>
<script>(function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/ru_RU/sdk.js#xfbml=1&version=v2.8";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
<script type="text/javascript">
    VK.init({
        apiId: 5868359,
        onlyWidgets: true
    });
</script>
<div id="main">
    <?php $this->beginBody() ?>

    <div class="wrap">
        <?php
        NavBar::begin([
            'brandLabel' => 'My Company',
            'brandUrl' => Yii::$app->homeUrl,
            'options' => [
                'class' => 'navbar-inverse navbar-fixed-top',
            ],
        ]);
        echo Nav::widget([
            'options' => ['class' => 'navbar-nav navbar-right'],
            'items' => [
                ['label' => 'Admin', 'url' => ['/admin/post']],
                ['label' => 'Blog', 'url' => ['/blog/index']],
                ['label' => 'Publications', 'url' => ['/site/publications']],
                ['label' => 'Contact', 'url' => ['/site/contact']],
                Yii::$app->user->isGuest ? (
                ['label' => 'Login', 'url' => ['/site/login']]
                ) : (
                    '<li>'
                    . Html::beginForm(['/site/logout'], 'post')
                    . Html::submitButton(
                        'Logout (' . Yii::$app->user->identity->username . ')',
                        ['class' => 'btn btn-link logout']
                    )
                    . Html::endForm()
                    . '</li>'
                )
            ],
        ]);
        NavBar::end();

        echo SidebarLeft::widget();

        ?>

        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">

                    </div><!-- /input-group -->
                </div><!-- /.col-lg-6 -->
                <div class="col-lg-6">
                    <div class="input-group pull-right">
                        <?php $form = ActiveForm::begin(['options' => ['class' => 'navbar-form navbar-left',
                            'role' => 'search']]) ?>
                        <div class="form-group">
                            <?= $form->field($search_form, 'q')->textInput(['placeholder' => 'Search for...'])->label(false); ?>
                        </div>
                        <input type="hidden" name="func" value="search">
                        <button type="submit" class="btn btn-default">Go!</button>
                        <?php ActiveForm::end(); ?>
                    </div><!-- /input-group -->
                </div><!-- /.col-lg-6 -->
            </div><!-- /.row -->
            <hr>
            <div class="row">
                <span class="btn btn-primary" onclick="openNav()" role="button">Open sidebar</span>
                <?= Breadcrumbs::widget([
                    'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
                ]) ?>
                <?= $content ?>
                <div class="col-sm-3">
                    <?php if (Yii::$app->controller->id == 'blog' && Yii::$app->controller->action->id == 'index'): ?>
                        <?= Author::widget([
                            'message' => '"Hello from the Widget!"',
                            'author' => 'Roma Slobodeniuk'
                        ]); ?>
                    <?php elseif (Yii::$app->controller->id == 'blog' && Yii::$app->controller->action->id == 'view'): ?>
                        <?php $post_id = Yii::$app->getRequest()->getQueryParam('id'); ?>
                        <?= RandomPosts::widget([
                            'id' => $post_id,
                            'label' => 'Another articles'
                        ]); ?>
                    <?php endif; ?>
                    <h4>Current Controller:
                        <button class="btn btn-success"><?= Yii::$app->controller->id; ?></h4>
                    <h4>Current Action:
                        <button class="btn btn-primary"><?= Yii::$app->controller->action->id; ?></button>
                    </h4>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="container">
            <p class="pull-left">&copy; My Company <?= date('Y') ?></p>

            <p class="pull-right"><?= Yii::powered() ?></p>
        </div>
    </footer>
</div>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
