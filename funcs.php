<?php

function getId(){
    $exploded = explode('/', $_SERVER['REQUEST_URI']);
    $last_value = $exploded[count($exploded) - 1];
    return $last_value;
}