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
<header>
    <?php
        include("connexion.php");
        include('header.php');
    ?>
    <br>
</header>
<body>
    <div class="legal-container">
        <h1 href="https://rabarison-andy.github.io/Portrait-chinois/">Mentions Légales</h1>
        <div class="legal-content">
            <p>EDITEUR DU SITE<br>
            Le site RentMyPC est crée par Andy Rabarison, étudiant en BUT MMI à l'université de Gustave Eiffel.</p>

            <p>HÉBERGEUR<br>
            Le site RentMyPC est hébergé par 02switch, une société spécialisée dans l'hébergement de sites web. Leur siège social est situé au 123 Rue du Hébergement, 75000 Paris.</p>

            <p>PROPRIÉTÉ INTELLECTUELLE<br>
            Tous les contenus présents sur le site RentMyPC, y compris les descriptions de produits, les images, les graphiques, les logos et les vidéos, sont la propriété de TopAchat, Apple, Asus, Razer, LENOVO, DELL et Pexels. Leurs utilisations sur ce site n'a que pour but du cadre d'un projet étudiant</p>

            <p>AVIS IMPORTANT<br>
            Veuillez noter que le site RentMyPC est un projet étudiant et n'est pas un véritable site de réservation. Les données fournies sur le site sont fictives et ne seront pas divulguées à des tiers.</p>
        </div>
    </div>
</body>
<footer>
    <?php
        include('footer.php');
    ?>
</footer>
</html>
