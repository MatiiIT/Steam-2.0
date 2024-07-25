<?php
$conn = new mysqli("localhost", "root", "", "steam");

$id = $_GET["id"];

$sql = "DELETE FROM gry WHERE id=$id"; 
$conn->query($sql);
$conn->close();

header("location: index.php");
?>