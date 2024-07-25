<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="utf-8" />
    <title>Steam 2.0</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
</head>

<body>
    <div id="container">
        <div id="header">
            <h1 class="logo">Steam 2.0</h1>
        </div>

        <div id="nav">
        <?php

        ?>
        </div>

        <div id="content">
            <br>
            <div class="witaj">
            <?php
                require('steam.php');
                session_start();
                if (isset($_POST["login"])) {
                $login = $_POST["login"];
                $haslo = $_POST["haslo"];

                $sql = "SELECT * FROM uzytkownicy WHERE login='$login' AND haslo='" . md5($haslo) . "'";
                $result = $conn->query($sql);
                if ($result->num_rows == 1) {
                    $_SESSION["login"] = $login;
                    header("Location: index.php");
                } else {
                echo "<div class='form'>
                <h3>Nieprawidłowy login lub hasło.</h3><br/>
                <p class='link'>Ponów próbę <a href='login.php'>logowania</a>.</p>
                </div>";
                }
                } else {
            ?>
            <form class="form" method="post" name="login">
            <h1 class="login-title">Logowanie</h1>
            <input type="text" class="login-input" name="login" placeholder="Login" autofocus="true"/>
            <input type="password" class="login-input" name="haslo" placeholder="Hasło"/>
            <input type="submit" value="Zaloguj" name="submit" class="login-button"/>
            <p class="link"><a href="registration.php">Zarejestruj się</a></p>
            </form>
            <?php
                }
            ?>
            </div>
        </div>
        <div id="footer">
            <h3>Wszelkie prawa zastrzeżone &copy</h3>
        </div>
    </div>
</body>

</html>

