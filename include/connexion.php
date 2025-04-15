<?php
 $nom_du_serveur ="localhost";
 $nom_de_la_base ="brodetsgrmono12";
 $nom_utilisateur ="usersio";
 $passe ="sio";


$link = mysqli_connect ($nom_du_serveur,$nom_utilisateur,$passe,$nom_de_la_base);

$pdo = new PDO("mysql:host=".$nom_du_serveur.";dbname=".$nom_de_la_base, $nom_utilisateur, $passe);
?>