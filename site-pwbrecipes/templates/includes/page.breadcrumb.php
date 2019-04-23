<div class="uk-background-secondary uk-light uk-padding-small">
    <div class="uk-container">
        <ul class="uk-breadcrumb">
            <?php
            $parents = $page->parents;
            foreach($parents as $parent):
            ?>
            <li class="uk-text-uppercase"><a href="<?php echo $parent->url; ?>"><?php echo $parent->title; ?></a></li>
            <?php endforeach; ?>
            <li class="uk-text-uppercase"><span><?php echo $page->title; ?></span></li>
        </ul>
    </div>
</div>