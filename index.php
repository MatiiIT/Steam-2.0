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
            $sql = "SELECT id, nazwa FROM kategorie";
            $result = $conn->query($sql);
 
            echo '
            <form>
                <p>
                <input class="szukaj" type="text" name="fraza">
                <input class="button2" type="submit" value="Wyszukaj">
                </p>
            </form>
            ';
            
            $sql = "SELECT id, nazwa, obrazek FROM gry";
            if (isset($_GET["idKat"])) {
                $idKat = $_GET["idKat"];
                $sql .= " WHERE idKategorii = $idKat";
            } 
            elseif (isset($_GET["fraza"])) {
                $fraza = $_GET["fraza"];
                $sql .= " WHERE nazwa LIKE '%$fraza%'";
            }

            $result = $conn->query($sql);

            if ($result->num_rows > 0) {


                while ($row = $result->fetch_object()) {
                    
                    echo "<div class='widokGry'>";
                    echo "<a href='details.php?id={$row->id}'><p><img src='obrazki/{$row->obrazek}' alt='{$row->nazwa}'></p></a>";

                    echo "<a style='text-decoration: none;' href='details.php?id={$row->id}'><p class='nazwaGry'>{$row->nazwa}</p></a>";
                    echo "</div>";
                }

            } else {
                echo "<p>Brak wyników :(</p>";
            }

            $conn->close();
            ?>

            <p class="dodajGre"><a class="linkGry" href="insertForm.php">Dodaj gre</a></p>  
            </div>
            
        </div>
        <div id="footer">
            <h3>Wszelkie prawa zastrzeżone &copy</h3>
        </div>
    </div>
</body>

</html>

