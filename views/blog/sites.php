<?php
use app\components\my_widgets\Socials;

$this->title = "Sites";

$this->registerMetaTag([
    'name' => 'description',
    'content' => 'This is the description to Sites page'
]);

$this->registerMetaTag([
    'name' => 'keywords',
    'content' => 'Meta, keys, Sites page'
]);

?>

<code><?= __FILE__; ?></code>

<div class="jumbotron">
    <h1>My "<?=$this->title?>"</h1>
    <p>These are testing courses on the <?=strtolower($this->title)?> page</p>

    <div class="row">
        <div class="col-sm-4">
        </div>
        <div class="col-sm-4 likes_socials">
            <?= Socials::widget(['blog_view' => strtolower($this->title)]); ?>
        </div>
        <div class="col-sm-4">
        </div>
    </div>
</div>

<div class="col-sm-9">
    <?php if (!empty($sites)): ?>
        <?php foreach ($sites as $site): ?>
            <div class="list-group">
                <a href="<?= $site->address; ?>" class="list-group-item"><?= $site->description; ?></a>
            </div>
        <?php endforeach; ?>
    <?php endif; ?>
</div>
