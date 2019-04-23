<?php include_once('includes/prepend.php'); ?>
<?php include_once('includes/page.header.php'); ?>

<main class="uk-background-muted uk-padding">
<div class="uk-container">
    <div class="uk-grid">

        <div class="uk-width-2-3@m">
        <article class="uk-card uk-card-default uk-card-body">

            <h1 class="uk-heading-small"><?php echo $page->title; ?></h1>
            <div class="summary uk-text-lead"><?php echo $page->summary; ?></div>
            <h2>Preparation/Directions</h2>
            <?php echo $page->preparation; ?>

            <h3>Ingredients</h3>
            <ul>
            <?php
                foreach($page->ingredients as $ingredient) {
                    echo "<li>{$ingredient->amount} {$ingredient->unit->title} <a href='{$ingredient->ingredient->url}'>{$ingredient->ingredient->title}</a></<li>";
                };
            ?>
            </ul>
        </article>
        </div>
        <div class="uk-width-1-3@m">
            <aside>
                <?php include_once('includes/page.sidebar.php'); ?>
            </aside>
        </div>
    </div>
</div>
</main>

<?php include_once('includes/page.breadcrumb.php'); ?>
<?php include_once('includes/page.footer.php'); ?>
<?php include_once('includes/append.php'); ?>