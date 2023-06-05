<?php
    include("connexion.php");
    include('header.php');
?>
<link rel="stylesheet" href="styles.css">
<html>
<head>
<title>RentMyPC</title>
<link rel="icon" href="img/favicon.ico">
</head>
<body>

    <section class="faq">
        <h1>Questions Fréquentes</h1>
        <button class="accordion">Combien de temps puis-je réserver mon ordinateur ?</button>
            <div class="panel">
                <p>Vous avez une durée de réservation de 5 ans, ce qui équivaut à la durée de la plupart des études.</p>
            </div>

        <button class="accordion">Qui peut réserver l'ordinateur ?</button>
            <div class="panel">
                <p>SSeuls les étudiants sont éligibles à la réservation d'un de nos produits, lors de l'acquisition de votre produit, il vous sera demandé de confirmer votre statut d'étudiant.</p>
            </div>

        <button class="accordion">Que se passe-t-il si je casse le produit durant mon temps d'utilisation ?</button>
            <div class="panel">
                <p>Il est évident qu'un accident peut si vite arriver, c'est pour ça qu'à l'instant ou vous nous notifier qu'un produit se voit endommager, il vous sera demandé de payer pour les réparations.</p>
            </div>
    </section>

</body>
</html>
<br>
<br>
<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>
<?php
    include('footer.php');
?>
