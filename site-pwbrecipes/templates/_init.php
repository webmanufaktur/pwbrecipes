<?php namespace ProcessWire;

$settings = $pages->get('template=settings');

$navMain = $settings->navMain;

$dishes = $pages->find('template=dish, sort=-created');
$recipes = $pages->find('template=recipe, sort=title');
$ingredients = $pages->find('template=ingredient, sort=title');