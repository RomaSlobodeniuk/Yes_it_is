<?php
use yii\widgets\LinkPager;
use app\components\my_widgets\Author;

$this->registerMetaTag([
    'name' => 'description',
    'content' => 'This is the description to Blog page'
]);

$this->registerMetaTag([
    'name' => 'keywords',
    'content' => 'Meta, keys, Blog page'
]);

?>

<code><?= __FILE__; ?></code>

<div class="jumbotron">
    <h1>My Blog</h1>
    <p>These are testing releases on the blog page</p>
</div>
<div class="col-sm-9">
    <?php if (!empty($posts)): ?>
        <?php foreach ($posts as $post): ?>
            <div class="media">
                <div class="media-left">
                    <a href="<?= $post->link; ?>?all=<?= $all_the_posts_count ?>&redirect_id=<?= $active_page ?>">
                        <img class="media-object" src="<?= $post->img; ?>" alt="..." width="128 px" height="128 px">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">
                        <?php if ($post->is_release): ?>
                            <?= "<b>Release №" . $post->number . ".</b> "; ?>
                        <?php endif; ?>
                        <?= $post->title; ?>
                    </h4>
                    <p><?= substr($post->intro_text, 0, 255) . "..."; ?></p>
                    <p><a class="btn btn-info" role="button" href="<?= $post->link; ?>?all=<?= $all_the_posts_count ?>&redirect_id=<?= $active_page ?>">
                            Read more</a>
                        <a  class="btn btn-warning" role="button" href="<?= Yii::$app->urlManager->createUrl(['blog/releases']); ?>">Another releases</a>
                    </p>
                    <img src="<?= Yii::$app->homeUrl . "images/icons/calendar.png"; ?>" alt="eye" width="3%">
                    <span class="badge"><?= $post->date; ?></span>
                    <img src="<?= Yii::$app->homeUrl . "images/icons/eye.png"; ?>" alt="eye" width="4%">
                    <span class="badge"><?= $post->hits; ?></span>
                </div>
            </div>
        <?php endforeach; ?>
        <div class="text-center">
            <?= LinkPager::widget([
                'pagination' => $pages,
                'firstPageLabel' => 'To the start',
                'lastPageLabel' => ' To the end',
            ]); ?>
            <div class="alert alert-info">
                Page <?= $active_page ?> from <?= $count_pages ?>
            </div>
        </div>
    <?php endif; ?>
</div>