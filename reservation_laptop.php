<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css" type="text/css">
    <title>RentMyPC</title>
    <link rel="icon" href="img/favicon.ico">
    <meta http-equiv="refresh" content="7; url='index.php'" />
</head>
<body>
<header>
    <?php
        include('header.php');
    ?>
    <br>
</header>   
<?php
include("connexion.php");

$idlaptop = $_GET["id"];
$prenom = $_GET["prenom"];
$nom = $_GET["nom"];
$mail = $_GET["email"];
$dreservation = $_GET["duree"];
$datereserv = $_GET["date_depart_reservation"];
$nompc = $_GET["nom_pc"];

$query = "INSERT INTO reservations_pc_portables (id_pc_portable, nom, prenom, email, duree_reservation, date_reservation) 
          VALUES ('$idlaptop', '$nom', '$prenom', '$mail', '$dreservation', '$datereserv')";

$db->query($query);

//Premettra d'afficher la date en Français//
setlocale(LC_TIME, 'fr_FR');
$to = $mail;
$subject = 'Reservation RentMyPC';
$message = '
<html>
<body>
  <header>
    <img class="logo" alt="logo" src="https://resaweb.rabarison.butmmi.o2switch.site/img/logo.png">
  </header>
  <div class="lineh">
    <div class="line"></div>
    <h1 id="reservation">Merci d\'avoir réservé sur RentMyPC</h1>
    <div class="line"></div>
  </div>
  <div class="texte">
    <br>
    <h2>Réservation au nom de '.$prenom.' '.$nom.'</h2>
    <h2>Détails commande:</h2>
    <div class="infos">
      <h2>'.strftime('%a %e %B %Y', strtotime($datereserv)).'</h2>
      <h1> Vous avez réserver le '.$nompc.'</h1>
    </div>
    <h2>Prix : 300 €</h2>
    <h2>Pour une durée de '.$dreservation.' mois</h2>
  </div>

  <footer>
    <div class="footer-container">
      <nav class="footer">
        <a href="https://resaweb.rabarison.butmmi.o2switch.site/mentions_legales.php">Mentions Légales</a>
        <a href="https://resaweb.rabarison.butmmi.o2switch.site/Informations.php">A propos</a>
        <a href="https://resaweb.rabarison.butmmi.o2switch.site/Partners.php">Nos partenaires</a>
        <a href="https://resaweb.rabarison.butmmi.o2switch.site/FAQ.php">FAQ</a>
        <p class="copyright">
          © 2023-2024 RentMyPC | Projet Résaweb par Andy Rabarison
        </p>
      </nav>
    </div>
  </footer>
</body>
</html>
';

$headers[] = 'MIME-Version: 1.0';
$headers[] = 'Content-type: text/html; charset=UTF-8';

mail($to, $subject, $message, implode("\r\n", $headers));
?>

<div class="thanks">
<p>Merci pour votre réservation, veuillez vérifier vos mails pour avoir un récapitulatif de votre commande.</p>
</div>
<footer>
  <?php
    include('footer.php');
  ?>
</footer>
</body>
</html>
