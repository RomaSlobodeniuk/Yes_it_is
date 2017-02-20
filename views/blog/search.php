<?php
use yii\widgets\LinkPager;

$this->title = "Search";

$this->registerMetaTag([
    'name' => 'description',
    'content' => "Search: $q."
]);

$this->registerMetaTag([
    'name' => 'keywords',
    'content' => $q
]);

?>

<?php if ($q == ""): ?>
    <div class="alert alert-warning">
        <h2>You have typed an empty query for the searching.</h2>
    </div>
<?php else: ?>
    <div class="alert alert-info">
        <h2>The results of your query: "<?= $q ?>"</h2>
    </div>
    <?php if (!empty($found_posts)): ?>
        <?php foreach ($found_posts as $post): ?>
            <div class="media">
                <div class="media-left">
                    <a href="<?=  Yii::$app->urlManager->createUrl(["blog/release-single", "id" => $post->link_id,
                        "all" => $all_the_posts_count,
                        "num" => $post->number
                    ]);?>">
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
                    <?php $type = ($post->is_release) ? 'release-single' : 'view' ?>
                    <p><a class="btn btn-info" role="button" href="<?=  Yii::$app->urlManager->createUrl(["blog/$type", "id" => $post->link_id,
                            "all" => $all_the_posts_count,
                            "num" => $post->number
                        ]);?>   ">
                            Read more</a>
                        <?php if ($post->is_release): ?>
                            <a  class="btn btn-warning" role="button" href="<?= Yii::$app->urlManager->createUrl(['blog/releases']); ?>">Another releases</a>
                        <?php endif; ?>
                    </p>
                    <img src="<?= Yii::$app->homeUrl . "images/icons/calendar.png"; ?>" alt="eye" width="3%">
                    <span class="badge"><?= $post->date; ?></span>
                    <img src="<?= Yii::$app->homeUrl . "images/icons/eye.png"; ?>" alt="eye" width="4%">
                    <span class="badge"><?= $post->hits; ?></span>
                </div>
            </div>
        <?php endforeach; ?>
        <?php else:?>
        <div class="alert alert-danger">
            <h2>According to your query you've searched for nothing has found!"</h2>
        </div>
    <?php endif; ?>
<?php endif; ?>
