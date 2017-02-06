<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

$this->title = 'Form';
$this->params['breadcrumbs'][] = $this->title;
?>

<?php if($name && $email):;?>
    <div class="alert alert-info">
        <p>You typed the name: <?= $name;?></p>
        <p>You typed the email: <?= $email;?></p>
    </div>
<?php endif; ?>


<?php $f = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]);?>
<?=$f->field($form, 'name');?>
<?=$f->field($form, 'email');?>
<?=$f->field($form, 'file')->fileInput();?>
<?=Html::submitButton('Let\'s go');?>
<?php ActiveForm::end();?>