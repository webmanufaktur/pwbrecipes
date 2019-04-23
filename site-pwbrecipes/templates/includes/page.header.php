<header class="uk-background-secondary uk-light">
    <div class="uk-navbar uk-container">
        <div class="uk-navbar-left">
            <a class="uk-navbar-item uk-logo" href="/"><?php echo $pages->get(1)->title; ?></a>
        </div>
        <div class="uk-navbar-right">
            <nav>
                <ul class="uk-navbar-nav">
                    <?php foreach($navMain as $nm): ?>
                    <li><a href="<?php echo $nm->url; ?>"><?php echo $nm->title; ?></a></li>
                    <?php endforeach; ?>
                </ul>
            </nav>
        </div>
    </div>
</header>