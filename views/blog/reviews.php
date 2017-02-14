<?php
use app\components\my_widgets\Socials;

$this->title = "Reviews";

$this->registerMetaTag([
    'name' => 'description',
    'content' => 'This is the description to Reviews page'
]);

$this->registerMetaTag([
    'name' => 'keywords',
    'content' => 'Meta, keys, Reviews page'
]);

?>

<code><?= __FILE__; ?></code>

<div class="jumbotron">
    <h1>My REVIEWS</h1>
    <p>These are testing courses on the reviews page</p>

    <div class="row">
        <div class="col-sm-4">
        </div>
        <div class="col-sm-4 likes_socials">
            <?= Socials::widget(['blog_view' => 'reviews']); ?>
        </div>
        <div class="col-sm-4">
        </div>
    </div>
</div>
<div class="col-sm-9">
    <?php if (!empty($reviews)): ?>
        <?php foreach ($reviews as $review): ?>

            <div class="row text-center">
                <h2>The review from "<?= $review->from_whom; ?>"</h2>
                <?= $review->video; ?>
            </div>

        <?php endforeach; ?>
    <?php endif; ?>
</div>