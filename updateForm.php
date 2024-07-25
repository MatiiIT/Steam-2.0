<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="utf-8" />
    <title>Steam 2.0</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
</head>

<body>

    <?php
        include("session.php");
        require("steam.php");
    ?>

    <div id="container">
        <div id="header">
            <h1 class="logo">Steam 2.0</h1>
        </div>

        <div id="nav">

        <?php
            $sql = "SELECT id, nazwa FROM kategorie";
            $result = $conn->query($sql);
            echo "<ol class='navigation'>";
            echo "<li><a href='index.php'>Wszystkie</a></li>";
            while($row = $result->fetch_object()) {
                echo "<li><a href='index.php?idKat={$row->id}'>{$row->nazwa}</a></li>";
                }
            echo '</ol>';
            $sql = "SELECT id, nazwa, obrazek FROM gry";
            if (isset($_GET["idKat"])) {
                $idKat = $_GET["idKat"];
                $sql .= " WHERE idKategorii = $idKat";
            } 
        ?>

        </div>
        <div id="content">
            <br>

            <div id="wyloguj">
            Witaj <?= $_SESSION["login"] ?>!
            <a class="linkGry" href="myReviews.php">Moje recenzje</a>
            <a style="color: rgb(35, 55, 85);" href="logout.php">Wyloguj</a>
            </div>

            <div class="witaj">
            <form action="update.php" method="post" enctype="multipart/form-data">

                <?php

                $id = $_GET["id"]; 
                $sql = "SELECT id, nazwa, obrazek, opis, cena, rozmiar FROM gry WHERE id=$id"; 
                $result = $conn->query($sql);

                $row = $result->fetch_object();

                echo '<div class="recenzjaGry" style="background-color: rgb(53, 85, 128);">';
                echo "<input type='hidden' name='id' value='$row->id'> ";
                echo "<p><input type='text' id='nazwa' class='recenzjaGry' name='nazwa' value='$row->nazwa'></p>";

                echo "<p><input type='file' class='recenzjaGry' name='obrazek' value='$row->obrazek'></p>";

                echo "<p><textarea id='opis' class='recenzjaGryOpis' name='opis' placeholder='Opis'>$row->opis</textarea></p>";

                echo "<p><input type='number' id='cena' class='recenzjaGry' name='cena' value='$row->cena'></p>";

                echo "<p><input type='number' id='rozmiar' class='recenzjaGry' name='rozmiar' placeholder='Rozmiar' value='$row->rozmiar'></p>";

                echo "<p><input type='submit' style='background-color: rgb(10, 199, 41);' class='recenzjaGryButton' value='Edytuj Gre'></p>";
                echo '</div>';
                
                $conn->close();
                ?>

            </form>

            <br><a style="background-color: darkorange;" class="recenzjaGryButton" href="index.php">Strona główna</a><br><br>

            </div>
        </div>
        <div id="footer">
            <h3>Wszelkie prawa zastrzeżone &copy</h3>
        </div>
    </div>
</body>

</html>

