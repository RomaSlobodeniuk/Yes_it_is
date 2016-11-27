<?php

use yii\helpers\Html;

$this->title = 'Hello';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>

    <div class="jumbotron">
        <h1><?= $message ?></h1>
    </div>
</div>