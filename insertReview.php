<?php
include("session.php");
require("steam.php");

$idGry = $_POST["idGry"];
$nick = $_SESSION["login"];
$ocena = $_POST["ocena"];
$tresc = $_POST["tresc"];
$sql = "INSERT INTO recenzje (idGry, nick, ocena, tresc) VALUES ('$idGry', '$nick', '$ocena', '$tresc')";

$conn->query($sql);

$conn->close();
header("Location: details.php?id=$idGry");
?>