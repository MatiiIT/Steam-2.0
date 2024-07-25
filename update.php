<?php
$conn = new mysqli("localhost", "root", "", "steam");

$id = $_POST["id"];
$nazwa = $_POST["nazwa"];
$obrazek = $_POST["obrazek"]; 
$opis = $_POST["opis"]; 
$cena = $_POST["cena"]; 
$rozmiar = $_POST["rozmiar"]; 

$sql = "UPDATE gry SET nazwa='$nazwa', opis='$opis', cena='$cena', rozmiar='$rozmiar' WHERE id=$id"; 
$conn->query($sql);

header("location: details.php?id=$id"); 
$conn->close();
?>