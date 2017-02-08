<code><?= __FILE__; ?></code>

<div class="jumbotron">
    <h1>My Blog</h1>
    <p>These are testing releases on the blog page</p>
</div>
<div class="col-sm-9">
    <?php if (!empty($posts)): ?>
        <?php foreach ($posts as $post): ?>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2 class="panel-title text-center">
                        <p>
                            <b><?= $post->title; ?></b>
                        </p>
                    </h2>
                    <img src="<?= $post->img; ?>" class="img-rounded" alt="Cinque Terre" width="100%">
                </div>
                <div class="panel-body">
                    <p><?= $post->intro_text; ?></p>
                    <p><a class="btn btn-primary" role="button"
                          href="<?= $post->link; ?>?all=<?= $all_the_posts_count ?>&redirect_id=<?= $active_page ?>">Read
                            more</a></p>
                </div>
            </div>
        <?php endforeach; ?>
        <div class="text-center">
            <?= \yii\widgets\LinkPager::widget(['pagination' => $pages]); ?>
        </div>
    <?php endif; ?>
</div>

<div class="col-sm-3">
    <h1>WIDGETS</h1>
    <h1>WIDGETS</h1>
    <h1>WIDGETS</h1>
</div>
