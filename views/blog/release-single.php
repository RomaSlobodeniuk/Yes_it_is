<?php
$redirect_id = (!is_numeric($data['redirect_id'])) ? 1 : $data['redirect_id'];
$next_release_number = (($single_release->id - 1) == 0) ? $data['all_the_releases_count'] : ($single_release->id - 1);

$this->title = "Single release";

$this->registerMetaTag([
    'name' => 'description',
    'content' => $single_release->meta_desc
]);

$this->registerMetaTag([
    'name' => 'keywords',
    'content' => $single_release->meta_key
]);

?>

<div class="jumbotron">
    <div class="container">
        <div class="page-header">
            <h2>
                Release №<?= $id?>. <?= $single_release->title; ?>
                <small><?= $single_release->meta_key; ?> </small>
            </h2>
            <code><?= __FILE__; ?></code>
        </div>
    </div>
</div>
<div class="col-sm-9">
    <div class="row">
        <div class="col-sm-6 col-md-12">
            <div class="thumbnail">
                <img src="<?=$single_release->img?>" alt="">
                <div class="caption">
                    <h3>Release №<?= $id?>. <?=$single_release->title?></h3>
                    <p><?=$single_release->full_text?></p>
                    <p>
                        <a href="<?= Yii::$app->urlManager->createUrl(['blog/releases', 'page' => $redirect_id]); ?>" class="btn btn-primary" role="button">Go back</a>
                        <a href="<?= Yii::$app->urlManager->createUrl([
                            'blog/release-single/' . $next_release_number,
                            'all' => $data['all_the_releases_count']]); ?>" class="btn btn-default" role="button">Next Release</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>