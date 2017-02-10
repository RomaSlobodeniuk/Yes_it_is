<?php

$this->title = "Videos";

$this->registerMetaTag([
    'name' => 'description',
    'content' => 'This is the description to Videos page'
]);

$this->registerMetaTag([
    'name' => 'keywords',
    'content' => 'Meta, keys, Videos page'
]);

?>

<code><?= __FILE__; ?></code>

<div class="jumbotron">
    <h1>My Video Courses</h1>
    <p>These are testing courses on the videos page</p>
</div>
<div class="col-sm-9">
    <?php if (!empty($courses)): ?>
        <?php foreach ($courses as $course): ?>
            <div class="row">
                <div class="col-sm-6 col-md-12">
                    <div class="thumbnail">
                        <div class="alert alert-info text-center">
                            <h3><?=$course->title;?></h3>
                        </div>
                        <img src="<?=$course->img;?>" alt="<?=$course->title;?>">
                        <div class="caption">
                            <p><?=$course->description;?></p>
                            <?php if ($course->d_id): ?>
                                <p class="text-center">
                                    <a href="<?= $course->order; ?>" class="btn btn-primary" role="button">Order</a>
                                    <span class="badge">Price: <?= $course->price; ?></span>
                                </p>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    <?php endif; ?>
</div>