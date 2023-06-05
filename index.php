<?php
include("connexion.php");

/* Commande pour demander les trois derniers produits ajouter à la base de données par l'ordre d'id */
$stmt = $db->prepare("SELECT * from `pc_portables` WHERE `id` ORDER BY `id` DESC LIMIT 3");
$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.theme.min.css">
    <link rel="stylesheet" href="styles.css" type="text/css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js"></script>
    <title>RentMyPC</title>
    <link rel="icon" href="img/favicon.ico">
    <script>
        $(document).ready(function(){
    $("#testimonial-slider").owlCarousel({
        items:2,
        itemsDesktop:[1000,2],
        itemsDesktopSmall:[980,1],
        itemsTablet:[768,1],
        pagination:true,
        navigation:true,
        navigationText:["<",">"],
        autoPlay:true
    });
});
</script>
</head>
<body>
<header>
    <?php
        include('header.php');
    ?>
    <br>
</header>
<div class="home">
    <div class="introduction">
        <h1>
            <span>Besoin d'un</span><br>
            <span>ordinateur adapté</span><br>
            <span>pour vos études ?</span><br>
        </h1>
        <h5>Réservations disponibles uniquement en France et sous réserve de <a href="FAQ.php">certaines conditions</a>.</h5>
    </div>
    <img src="img/Laptop_home.png" alt="">
    <a href="#aboutus" class="scroll">
        <!-- le premier span dessine la flèche -->
        <span class="arrow"></span>
        <span class="arrow2"></span>

        <!-- le 2e span fournit un contenu pour les lecteurs d'écran -->
        <span class="sr-only"></span>
    </a>
</div>


<section class="aboutus" id="aboutus">
    <p class="aboutus_desc">
        <span>RentMyPC</span> est un site de réservation 
        ayant pour but de permettre aux étudiants 
        principalement de réserver un ordinateur 
        pour leurs études. 
        Pour cela, 
        plusieurs gammes sont présentes grâce à nos partenaires. Nous pouvons vous proposer des offres aux prix les plus avantageux possibles. Nous espérons que vous trouverez l'ordinateur qui vous conviendra.
    </p>
    <section class="recent-product">
      <div class="recent">
        <img src="img/Laptop_standard.png" alt="Pc de catégorie standard" class="offer-img offer-1-img">
        <div class="offre">
          <h2 class="nom_laptop">Produits standard</h2>
          <a href="produits_standard.php" class="btn reserve">Voir le produit</a>
        </div>
      </div>
      <div class="recent">
        <img src="img/Laptop_premium.png" alt="Pc de catégorie premium" class="offer-img offer-2-img">
        <div class="offre">
          <h2 class="nom_laptop">Produits premium</h2>
          <a href="produits_premium.php" class="btn reserve">Voir le produit</a>
        </div>
      </div>
    </section>
</section>
<div class="produit-container">
        <h1 class="produits-recent-texte">Nos produits récemment ajoutés</h1>
    </div>
<div class="produits-recent">
    <?php
    foreach ($result as $pc_portable) {
        $id = $pc_portable["id"];
        $nom = $pc_portable["nom"];
        $image = $pc_portable["image"];
        $prix = $pc_portable["prix"];
    ?>
    <div class="produit">
        <div class="nom-produit">
            <h2><?php echo $nom; ?></h2>
        </div>
        <div class="img-produit">
            <img src="<?php echo $image; ?>" alt="Image du produit">
        </div>
        <div class="prix-produit">
            <h4><?php echo $prix; ?> €</h4>
        </div>
        <div class="details-produit">
            <a href="pc_portable.php?id=<?php echo $id; ?>" alt="Voir la page du produit">Page produit</a>
        </div>
    </div>
    <?php } ?>
</div>
<!-- Slider commentaire venant de codepen : https://codepen.io/13garth/pen/awKaOJ -->
<div class="container">
<h1>L'AVIS DE NOS CLIENTS</h1>
    <div class="row">
        <div class="col-md-12">
            <div id="testimonial-slider" class="owl-carousel">
                <!--  ////////////////////////////////////////////////////////  -->
                <div class="testimonial-item equal-height style-6" style="height: 254px;">
                    <div class="testimonial-image cell-left">
                        <img src="https://images.pexels.com/photos/67636/rose-blue-flower-rose-blooms-67636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="Rose">
                    </div>
                    <div class="cell-right">
                        <div class="testimonial-name">Daniel M.
                        </div>
                        <div class="testimonial-job">Thompson
                        </div>
                    </div>
                    <div class="testimonial-content quote"><i class="fa fa-quote-left">  
                        </i>Grâce à RentMyPC, j'ai pu réserver un ordinateur pour mes études. Le prix comparé aux autres sites ma permis de prendre un ordinateur que je n'aurais jamais pu avoir autre part.
                    </div>
                </div>
                <!--  ////////////////////////////////////////////////////////  -->
                <div class="testimonial-item equal-height style-6" style="height: 254px;">
                    <div class="testimonial-image cell-left">
                        <img src="https://images.pexels.com/photos/67636/rose-blue-flower-rose-blooms-67636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="Rose">
                    </div>
                    <div class="cell-right">
                        <div class="testimonial-name">Idalia A.
                        </div>
                        <div class="testimonial-job">Neeley
                        </div>
                    </div>
                    <div class="testimonial-content quote"><i class="fa fa-quote-left">  
                        </i>Super site qui m'a servis pour une petite période où mon ordinateur ne fonctionner plus. 
                    </div>
                </div>
                <!--  ////////////////////////////////////////////////////////  -->
                <div class="testimonial-item equal-height style-6" style="height: 254px;">
                    <div class="testimonial-image cell-left">
                        <img src="https://images.pexels.com/photos/67636/rose-blue-flower-rose-blooms-67636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="Rose">
                    </div>
                    <div class="cell-right">
                        <div class="testimonial-name">Francine W.
                        </div>
                        <div class="testimonial-job">Blakey
                        </div>
                    </div>
                    <div class="testimonial-content quote"><i class="fa fa-quote-left">  
                        </i>Merci beaucoup à RentMyPC, pour toutes mes années d'études, j'ai pu avoir un ordinateur à un bas prix.
                    </div>
                </div>
                <!--  ////////////////////////////////////////////////////////  -->
                <div class="testimonial-item equal-height style-6" style="height: 254px;">
                    <div class="testimonial-image cell-left">
                        <img src="https://images.pexels.com/photos/67636/rose-blue-flower-rose-blooms-67636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="Rose">
                    </div>
                    <div class="cell-right">
                        <div class="testimonial-name">Gustave 
                        </div>
                        <div class="testimonial-job">Drouin
                        </div>
                    </div>
                    <div class="testimonial-content quote"><i class="fa fa-quote-left">  
                        </i>Site qui m'a été d'une grande utilité, la large proposition d'ordinateurs et les prix attractifs font qu'il est avantageux de réserver sur ce site. Je recommande ! 
                    </div>
                </div>
                <!--  ////////////////////////////////////////////////////////  -->
                <div class="testimonial-item equal-height style-6" style="height: 254px;">
                    <div class="testimonial-image cell-left">
                        <img src="https://images.pexels.com/photos/67636/rose-blue-flower-rose-blooms-67636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="Rose">
                    </div>
                    <div class="cell-right">
                        <div class="testimonial-name">Marsilius
                        </div>
                        <div class="testimonial-job">Garnier
                        </div>
                    </div>
                    <div class="testimonial-content quote"><i class="fa fa-quote-left">  
                        </i>Une bonne surprise ! Je ne pensais pas qu'un service pareil verrait le jour et je suis agréablement surpris de la large gamme d'ordinateurs disponibles. 
                    </div>
                </div>
                <!--  ////////////////////////////////////////////////////////  -->
                <div class="testimonial-item equal-height style-6" style="height: 254px;">
                    <div class="testimonial-image cell-left">
                        <img src="https://images.pexels.com/photos/67636/rose-blue-flower-rose-blooms-67636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="Rose">
                    </div>
                    <div class="cell-right">
                        <div class="testimonial-name">Virginie
                        </div>
                        <div class="testimonial-job">Brousseau
                        </div>
                    </div>
                    <div class="testimonial-content quote"><i class="fa fa-quote-left">  
                        </i>+1, une très bonne découverte que je recommande à tous les étudiants qui ont besoin d'équipement puissant pour leurs études.
                    </div>
                </div>
                <!--  ////////////////////////////////////////////////////////  -->
                <div class="testimonial-item equal-height style-6" style="height: 254px;">
                    <div class="testimonial-image cell-left">
                        <img src="https://images.pexels.com/photos/67636/rose-blue-flower-rose-blooms-67636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="Rose">
                    </div>
                    <div class="cell-right">
                        <div class="testimonial-name">Fusberta
                        </div>
                        <div class="testimonial-job">Moïse
                        </div>
                    </div>
                    <div class="testimonial-content quote"><i class="fa fa-quote-left">  
                        </i>Un site incroyable pour les étudiants, mais aussi pour les autres utilisateurs ont besoin de bons matériels performants !
                    </div>
                </div>
                <!--  ////////////////////////////////////////////////////////  -->
            </div>
        </div>
    </div>
</div>
</body>
<footer>
    <?php
        include('footer.php');
    ?>
</footer>
</html>
