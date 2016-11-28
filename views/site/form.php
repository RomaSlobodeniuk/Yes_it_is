<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 27.11.16
 * Time: 11:50
 */

use yii\helpers\Html;
use yii\widgets\ActiveForm;
?>

<?php $f = ActiveForm::begin();?>
<?=$f->field($form, 'name');?>
<?=$f->field($form, 'email');?>
<?=Html::submitButton('Let\'s go');?>
<?php ActiveForm::end();?>