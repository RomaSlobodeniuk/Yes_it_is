<?php
$redirect_id = (!is_numeric($data['redirect_id'])) ? 1 : $data['redirect_id'];
$next_post_number = (($single_post->id - 1) == 0) ? $data['all_the_posts_count'] : ($single_post->id - 1);
?>
<div class="jumbotron">
    <div class="container">
        <div class="page-header">
            <h2><?= $single_post->title; ?> <small><?= $single_post->meta_key; ?> </small></h2>
            <code><?= __FILE__; ?></code>
        </div>
    </div>
</div>

<div class="col-sm-6 col-md-12">
    <div class="thumbnail">
        <img src="<?= $single_post->img; ?>" alt="pic">
        <div class="caption">
            <h3><?= $single_post->meta_desc; ?></h3>
            <p><?= $single_post->full_text; ?></p>
            <p><a href="<?= Yii::$app->urlManager->createUrl(['blog/index', 'page' => $redirect_id]); ?>"
                  class="btn btn-primary" role="button">Go back</a>
                <a href="<?= Yii::$app->urlManager->createUrl(['blog/' . $next_post_number, 'all' => $data['all_the_posts_count']]); ?>" class="btn btn-default" role="button">Next release</a>
            </p>
        </div>
    </div>
</div>