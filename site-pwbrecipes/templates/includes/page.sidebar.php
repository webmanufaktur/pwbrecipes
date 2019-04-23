<h3>Recipes</h3>
<?php foreach($pages->find('template=recipe, sort=random, limit=3') as $recipe): ?>
<div class="uk-card uk-card-default uk-card-small uk-card-body uk-margin">
    <h4 class="uk-card-title">Recipe: <a href="<?php echo $recipe->url; ?>"><?php echo $recipe->title; ?><br><small>Get all the details here...</small></a></h4>
</div>
<?php endforeach; ?>