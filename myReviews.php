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
            $nick = $_SESSION["login"];
            $sql = "SELECT ocena, tresc, data, g.id AS idGry, nazwa FROM recenzje r, gry g WHERE g.id = idGry AND nick = '$nick'"; 
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                echo "<h2 style='color: darkorange;'>Moje recenzje</h2>";
                while ($row = $result->fetch_object()) {
                    echo "<p class='listaRecenzji'><strong><a class='linkGry' href='details.php?id={$row->idGry}'>{$row->nazwa}</a></strong> ({$row->ocena}/5<strong style='color: darkorange;'> ★</strong>): {$row->tresc}</p>";
                    echo "<p class='listaRecenzjiData'>Data: {$row->data}</p>";
                }
            } else {
                echo "<p>Brak recenzji</p>";
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

