<?php
use app\components\Hello;

$hello = new Hello();
$this->params['breadcrumbs'][] = $data['title'];
$redirect_id = (!is_numeric($data['redirect_id'])) ? 1 : $data['redirect_id']
?>
<div class="jumbotron">
    <h1><?= $data['title']; ?></h1>
</div>

<div class="alert alert-warning">
    <h2>Widget says to you: </h2>
    <h3>
        <b><?= Hello::widget(['message' => '"Hello from the Widget!"']); ?></b>
    </h3>
</div>

<code><?= __FILE__ ?></code>

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title"><?= $data['title']; ?></h3>
    </div>
    <div class="panel-body">
        <p><?= $data['content']; ?></p>
    </div>
</div>
<p><a class="btn btn-primary btn-lg"
      href="<?= Yii::$app->urlManager->createUrl(['site/publications', 'page' => $redirect_id]); ?>" role="button">Go
        back</a></p>
<div class="alert alert-info">
    <p>Yii::$app->session BEFORE REMOVING= <?= Yii::$app->session->get('redirect_id'); ?></p>
    <?php Yii::$app->session->remove('redirect_id'); ?>
    <p>Yii::$app->session AFTER REMOVING = <?= Yii::$app->session->get('redirect_id'); ?></p>
    <p>$data['redirect_id'] = <?= $data['redirect_id']; ?></p>
    <p>$redirect_id = <?= $redirect_id; ?></p>
</div>
