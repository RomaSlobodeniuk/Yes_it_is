<?php
$this->title = 'Author';

$this->registerMetaTag([
    'name' => 'description',
    'content' => 'This is the description to Author\'s page'
]);

$this->registerMetaTag([
    'name' => 'keywords',
    'content' => 'Meta, keys, Author page'
]);

?>

<div class="container">
    <div class="jumbotron">
        <h1>About author page</h1>
        <p>My greetings, dear friends, I'm very glad to know you're visiting my site!
            My name is Roma and I'll tell you something about
            myself.</p>
    </div>
    <hr>
    <div class="row">
        <div class="text-center col-sm-4">
            <img src="<?= Yii::$app->homeUrl . "images/author/me.jpg"; ?>" class="img-thumbnail" alt="Cinque Terre"
                 width="304" height="236">
            <hr>
            <div class="alert alert-warning">
                This is me on the 5-th course in the great city Lviv.
            </div>
            <div id="vk_like" class="text-center"></div>
            <script type="text/javascript">
                VK.Widgets.Like('vk_like');
            </script>
            <hr>
            <div class="fb-like pull-left" data-href="http://localhost/04_test_files/Yes_it_is/web/blog/author" data-width="300px" data-layout="standard" data-action="like" data-show-faces="true" data-share="false"></div>
        </div>
        <div class="col-sm-8">
            <div class="panel panel-primary">
                <div class="panel-heading">Teen age</div>
                <div class="panel-body">
                    <p>Well, I'd like to start from the story of my teen age, as an exception to this I want to mention
                        that
                        I
                        was born in little and beautiful town
                        Netishyn on 16 of August in 1991. So, when I was 16 years old, all I wanted was to go away from
                        my
                        home.
                        At the age of 17 I even
                        hated my life as every teenager do.
                    </p>
                </div>
            </div>
            <div class="panel panel-info">
                <div class="panel-heading">University life</div>
                <div class="panel-body">
                    <p>According to this I went to study in Lviv.</p>
                    <p>These were the hardest time there, because I was a cadet. I didn't know who I want to be, because
                        I
                        was
                        on
                        the state service.This automatically meant that after my graduating I would be hired on the job
                        in
                        my
                        region.
                    <p>But as I became older I realized that I didn't want to serve. At first after graduating
                        the university I decided to be a java programmer.</p>
                </div>
            </div>
            <div class="panel panel-success">
                <div class="panel-heading">After university till now</div>
                <div class="panel-body">
                    <p>
                        I was sent to Khmelnytsky where it turned out that I have to stay and serve there at General
                        Department. So,
                        I have served 25 months...then after my vacations I didn't come back to work. I left that hell
                        and
                        found
                        the job that I love.
                    </p>
                    <p>
                        Now I'm 25 years old and I'm a PHP web-developer. I have gone a tough way to reach this. I'm
                        happy
                        and I'm believe only in
                        myself, I'm gonna achieve another my dreams.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>