<?php
use yii\widgets\LinkPager;

$this->title = "Releases";

$this->registerMetaTag([
    'name' => 'description',
    'content' => 'This is the description to ' . $this->title . ' Reviews page'
]);

$this->registerMetaTag([
    'name' => 'keywords',
    'content' => 'Meta, keys, ' . $this->title . ' page'
]);

?>

<div class="jumbotron">
    <h1>My <?=$this->title?></h1>
    <p>These are testing <?=$this->title?> on this page</p>

    <div class="row">

    </div>
</div>
<div class="col-sm-9">
    <?php if (!empty($releases)): ?>
        <?php foreach ($releases as $release): ?>
            <div class="media">
                <div class="media-left">
                    <a id="<?=$release->id;?>" href="<?=  Yii::$app->urlManager->createUrl(["blog/release-single", "id" => $release->link_id,
                                                                                            "all" => $all_the_releases,
                                                                                            "redirect_id" => $active_page,
                                                                                            "num" => $release->number
                        ]);?>">
                        <img class="media-object" src="<?= $release->img; ?>" alt="..." width="128 px" height="128 px">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">
                        <?php if ($release->is_release): ?>
                            <?= "<b>Release №" . $release->number . ".</b> "; ?>
                        <?php endif; ?>
                        <?= $release->title; ?>
                    </h4>
                    <p><?= substr($release->intro_text, 0, 255) . "..."; ?></p>
                    <p><a id="<?=$release->id;?>" class="btn btn-info" role="button" href="<?=
                        Yii::$app->urlManager->createUrl(["blog/release-single", "id" => $release->link_id,
                                                                                    "all" => $all_the_releases,
                                                                                    "redirect_id" => $active_page,
                                                                                    "num" => $release->number,

                        ]);?>">
                            Read more</a>
                        <?php if ($release->is_release): ?>
                            <a  class="btn btn-danger" role="button" href="<?= Yii::$app->urlManager->createUrl(['blog/index']); ?>">All the posts</a>
                        <?php endif; ?>
                    </p>
                    <img src="<?= Yii::$app->homeUrl . "images/icons/calendar.png"; ?>" alt="eye" width="3%">
                    <span class="badge"><?= $release->date; ?></span>
                    <img src="<?= Yii::$app->homeUrl . "images/icons/eye.png"; ?>" alt="eye" width="4%">
                    <span class="badge"><?= $release->hits; ?></span>
                </div>
            </div>
        <?php endforeach; ?>
        <div class="text-center">
            <?= LinkPager::widget([
                'pagination' => $pagination,
                'firstPageLabel' => 'To the start',
                'lastPageLabel' => ' To the end',
            ]); ?>
            <div class="alert alert-info">
                Page <?= $active_page ?> from <?= $count_pages ?>
            </div>
        </div>
    <?php endif; ?>
</div>