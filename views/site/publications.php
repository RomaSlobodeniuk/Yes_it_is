<div class="list-group">
    <?php foreach ($publications as $publication): ?>
        <a href="<?= yii\helpers\Url::to(['site/view', 'id' => $publication->id]);?>" class="list-group-item">
            <h4 class="list-group-item-heading"><?=$publication->title;?></h4>
            <p class="list-group-item-text"><?=$publication->short_content;?></p>
        </a>
    <?php endforeach; ?>
    <div>
        <?= \yii\widgets\LinkPager::widget(['pagination' => $pages]);?>
    </div>
</div>