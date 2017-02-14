<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

$this->title = "Add Site";

$this->registerMetaTag([
    'name' => 'description',
    'content' => 'This is the description to Add site page'
]);

$this->registerMetaTag([
    'name' => 'keywords',
    'content' => 'Meta, keys, Add site page'
]);

?>

<code><?= __FILE__; ?></code>

<div class="jumbotron">
    <h1>My "<?= $this->title ?>"</h1>
    <p>This is a testing page - the <?= strtolower($this->title) ?> page</p>
</div>

<div class="col-sm-9">
    <h2>Fill out the form:</h2>
    <?php if ($success): ?>
        <div class="alert alert-success">
            <h4>Your site was added successfully!</h4>
        </div>
    <?php endif; ?>
    <?php if ($error): ?>
        <div class="alert alert-danger">
            <h4>Error! Your site was not added! Please, check your data and try again.</h4>
        </div>
    <?php endif; ?>
    <?php $form = ActiveForm::begin(); ?>
    <?= $form->field($site_form, 'address')->label('Enter your site: '); ?>
    <?= $form->field($site_form, 'description')->label('Description (limit - 255 characters): ')->textarea(['rows' => '6']); ?>
    <?= Html::submitButton('Add the site', ['class' => 'text-center']); ?>
    <?php $form = ActiveForm::end(); ?>
</div>
