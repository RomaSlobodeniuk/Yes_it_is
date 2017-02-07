<h1><?= "This is an actionIndex which is saying to you \"" . $data['hello'] . " World!\"\n"; ?></h1>
<code><?= __FILE__; ?></code>

<?php if (!empty($posts)): ?>
    <?php foreach ($posts as $post): ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><a href="<?= yii\helpers\Url::to(['blog/view', 'id' => $post->id]);?>"><?= $post->title; ?></a></h3>
            </div>
            <div class="panel-body">
                <p><?= $post->excerpt; ?></p>
            </div>
        </div>
    <?php endforeach; ?>
    <div>
        <?= \yii\widgets\LinkPager::widget(['pagination' => $pages]);?>
    </div>
<?php endif; ?>
