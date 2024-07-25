<?php
$conn = new mysqli("localhost", "root", "", "steam");

$idKategorii = $_POST["idKategorii"];
$nazwa = $_POST["nazwa"];
$obrazek = basename($_FILES["obrazek"]["name"]);
$opis = $_POST["opis"]; 
$cena = $_POST["cena"]; 
$rozmiar = $_POST["rozmiar"]; 
move_uploaded_file($_FILES["obrazek"]["tmp_name"], "obrazki/" . $obrazek);

$sql = "INSERT INTO gry (idKategorii, nazwa, obrazek, opis, cena, rozmiar) VALUES ('$idKategorii', '$nazwa', '$obrazek', '$opis', '$cena', '$rozmiar')";
$conn->query($sql);

$conn->close();
header("location: index.php");

?>