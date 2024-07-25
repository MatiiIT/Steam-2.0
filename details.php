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

        <div id="wyloguj">
            Witaj <?= $_SESSION["login"] ?>!
            <a class="linkGry" href="myReviews.php">Moje recenzje</a>
            <a style="color: rgb(35, 55, 85);" href="logout.php">Wyloguj</a>
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

            <div class="witaj">
            <?php
            $id = $_GET["id"];

            $sql = "SELECT AVG(ocena) AS srednia FROM recenzje WHERE idGry=$id";
            $result = $conn->query($sql);
            $srednia = $result->fetch_object()->srednia;
            
            $sql = "SELECT idKategorii, k.nazwa AS nazwaKat, g.nazwa, obrazek, g.opis, g.cena, g.rozmiar FROM gry g, kategorie k WHERE g.id=$id AND idKategorii=k.id";

            $result = $conn->query($sql);
            $row = $result->fetch_object();
        
            echo "<h1 style='color: darkorange;'>{$row->nazwa}</h1>";
            echo "<p class='opisGry'><img class='obrazekGry' src='obrazki/{$row->obrazek}' alt='{$row->nazwa}' width='200'></p>";
            echo "<p class='opisGry'>Kategoria: <a class='linkGry' href='index.php?idKat={$row->idKategorii}'>{$row->nazwaKat}</a></p>";
            echo "<p class='opisGry'>{$row->opis}</p>";
            echo "<p class='opisGry'>Cena: {$row->cena} zł</p>";
            echo "<p class='opisGry'>Rozmiar: {$row->rozmiar} GB</p>";
            echo "<p class='opisGry'>Średnia ocen: " . round($srednia, 2) . " <strong style='color: darkorange;'>★</strong></p>";


            echo "<p id='deleteButton'><a href='delete.php?id=$id' style='background-color: rgb(197, 55, 55); color: beige;' class='button2'>Usuń gre</a></p>"; 
            echo "<p id='editButton'><a href='updateForm.php?id=$id' style='background-color: rgb(38, 202, 161); color: beige;' class='button2'>Edytuj gre</a></p>"; 

            ?>

            <h2 style="color: darkorange;">Dodaj Recenzję</h2>
            <form action="insertReview.php" method="post">
                <input type="hidden" name="idGry" value="<?php echo $id; ?>">
                <div class="dodajRecenzje">
                <p class="recenzjaGryOcena">
                    <label for="ocena">Ocena:</label>
                    <select id="ocena" class="recenzjaGryOcena" name="ocena">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    <strong style='color: darkorange;'>★</strong>
                </p>
                <p>
                <textarea id="tresc" class="recenzjaGryOpis" name="tresc" placeholder="Treść"></textarea>
                </p>
                </div>
                <p>
                    <input class="recenzjaGryButton" type="submit" value="Dodaj Recenzje">
                </p>
            </form>

            <?php

            $nick = $_SESSION["login"];
            $sql = "SELECT nick, ocena, tresc, data FROM recenzje WHERE idGry=$id";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                echo "<h2 style='color: darkorange;'>Recenzje</h2>";
                while ($row = $result->fetch_object()) {
                    echo "<p class='listaRecenzji'><strong style='color: darkorange;'>{$row->nick}</strong> ({$row->ocena}/5<strong style='color: darkorange;'> ★</strong>): {$row->tresc}</p>";
                    echo "<p class='listaRecenzjiData'>{$row->data}</p>";
                }
            } else {
                echo "<p>Brak recenzji :(</p>";
            }
                
            $conn->close();
            
            ?>
            </div>
        </div>
        <div id="footer">
            <h3>Wszelkie prawa zastrzeżone &copy</h3>
        </div>
    </div>
</body>

</html>

