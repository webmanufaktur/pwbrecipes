<?php include_once('includes/prepend.php'); ?>
<?php include_once('includes/page.header.php'); ?>

<main class="uk-background-muted uk-padding">
<div class="uk-container">
    <div class="uk-grid">

        <div class="uk-width-2-3@m">
        <article class="uk-card uk-card-default uk-card-body">

            <h1 class="uk-heading-small"><?php echo $page->title; ?></h1>
            <div class="summary uk-text-lead"><?php echo $page->summary; ?></div>

            Total: <?php echo count( $dishes ); ?> dishes.
            <table class="uk-table uk-table-divider uk-table-striped uk-table-small">
                <tbody>
                    <?php foreach($dishes as $dish): ?>
                    <tr>
                        <td><a href="<?php echo $dish->url; ?>"><?php echo $dish->title; ?></a></td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
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