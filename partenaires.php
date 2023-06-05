<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css" type="text/css">
    <title>RentMyPC</title>
    <link rel="icon" href="img/favicon.ico">
</head>

<body>
    <header>
        <?php
        include("connexion.php");
        include('header.php');
        ?>
        <br>
    </header>
    
    <h1 class="titre">Tous nos partenaires :</h1>
    <div class="client-slider">
        <div class="client-slide-track">
            <div class="client-slide">
                <img src="img/Apple_logo.png" height="100" width="250" alt="">
            </div>
            <div class="client-slide">
                <img src="img/Asus_logo.png" height="100" width="250" alt="">
            </div>
            <div class="client-slide">
                <img src="img/DELL_logo.png" height="100" width="250" alt="">
            </div>
            <div class="client-slide">
                <img src="img/Lenovo-Logo.png" height="100" width="250" alt="">
            </div>
            <div class="client-slide">
                <img src="img/Razer_logo.png" height="100" width="250" alt="">
            </div>
            <div class="client-slide">
                <img src="img/topachat.png" height="100" width="250" alt="">
            </div>
            <div class="client-slide">
                <img src="img/Apple_logo.png" height="100" width="250" alt="">
            </div>
            <div class="client-slide">
                <img src="img/Asus_logo.png" height="100" width="250" alt="">
            </div>
            <div class="client-slide">
                <img src="img/DELL_logo.png" height="100" width="250" alt="">
            </div>
            <div class="client-slide">
                <img src="img/Lenovo-Logo.png" height="100" width="250" alt="">
            </div>
            <div class="client-slide">
                <img src="img/Razer_logo.png" height="100" width="250" alt="">
            </div>
            <div class="client-slide">
                <img src="img/topachat.png" height="100" width="250" alt="">
            </div>
            <div class="client-slide">
                <img src="img/Lenovo-Logo.png" height="100" width="250" alt="">
            </div>
            <div class="client-slide">
                <img src="img/Razer_logo.png" height="100" width="250" alt="">
            </div>
        </div>
    </div>

    <footer>
        <?php
        include('footer.php');
        ?>
    </footer>
</body>

</html>
