<?php
 $conn = new mysqli("localhost", "root", "", "steam");
 if ($conn->connect_error) {
 exit("Connection failed: " . $conn->connect_error);
 }
?>