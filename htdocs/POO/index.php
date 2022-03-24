<?php

require 'personnage.php';

$merlin = new personnage("Merlin");
// $merlin -> regenerer(5);

$harry = new personnage("Harry");
// $harry -> regenerer(5); 
// var_dump($harry -> mort());

$merlin -> attaque($harry);

if($harry -> mort()){
    echo 'Harry is fucking dead brooooo';
} else {
    echo 'Harry has survived brooooo with' . $harry -> vie ;
}

// var_dump($merlin);
// var_dump($harry);