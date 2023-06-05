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
  <header>
    <?php
        include("connexion.php");
        include('header.php');
    ?>
    <br>
  </header>

  <div class="about-container">
    <h1>Créateur du site : Andy Rabarison</h1>
    <div class="about-content">
      <p>Je suis un élève de 20 ans en première année du BUT MMI (Métiers du Multimédia et de l'Internet). Passionné par le code et les technologies numériques, j'ai créé RentMyPC pour répondre aux besoins des étudiants.</p>
      <p>Le concept de RentMyPC est né du fait que de nombreux étudiants ne disposent pas toujours de l'équipement adapté à leurs études. Ce site a pour objectif de faciliter l'achat d'ordinateurs portables en permettant la location de PC portables aux étudiants.</p>
      <p>Notre plateforme permet aux étudiants de louer des ordinateurs portables à d'autres étudiants qui ont du matériel disponible. Cela offre une solution pratique et économique, favorisant l'échange et la collaboration entre pairs.</p>
      <p>Nous sommes conscients de l'importance de la confidentialité des données des utilisateurs. Soyez assurés que toutes les informations fournies lors de l'utilisation de notre site seront traitées de manière confidentielle et ne seront pas divulguées à des tiers.</p>
      <p>Le site RentMyPC est hébergé grâce à 02switch, un fournisseur d'hébergement réputé pour sa fiabilité et sa sécurité.</p>
    </div>
  </div>

  <footer>
    <?php
        include('footer.php');
    ?>
  </footer>

</body>
</html>
