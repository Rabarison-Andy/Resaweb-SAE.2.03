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
        $id = $_GET['id'];

        // Requête pour obtenir les informations du produit
        $stmt = $db->prepare("SELECT * FROM `pc_portables` WHERE `id` = :id");
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $product = $stmt->fetch(PDO::FETCH_ASSOC);
    ?>
</header>
<body>
<?php if ($product) {
    $nom = $product["nom"];
    $image = $product["image"];
    $prix = $product["prix"];
    $description = $product["description"];
    ?>
    <div class="laptop-details">
        <h2 class="nom"><?php echo $nom; ?></h2>
        <img src="<?php echo $image; ?>" alt="">
        <div class="description">
            <p class="desc"><?php echo $description; ?></p>
            <button class="lire_plus">En savoir plus</button>
        </div>
        <section class="prix">
            <p>Prix : <?php echo $prix; ?> €</p>
            <button class="open-modal">Réserver</button>
        </section>
    </div>

    <div class="modal">
        <svg class="close-modal" width="20" height="20" viewBox="0 0 29 29" fill="none">
            <path d="M3 3L26.5 26.5" stroke="#333" stroke-width="5" stroke-linecap="round"/>
            <path d="M26.5 3L3 26.5" stroke="#333" stroke-width="5" stroke-linecap="round"/>
        </svg>

        <form action="reservation_laptop.php" method="GET" onsubmit="return validateForm()">
            <input type="hidden" name="id" value="<?php echo $id; ?>">
            <input type="hidden" name="nom_pc" value="<?php echo $nom; ?>">
            <label for="prenom">Prénom</label>
            <input type="text" name="prenom" id="prenom" required>
            <br>
            <label for="nom">Nom</label>
            <input type="text" name="nom" id="nom" required>
            <br>
            <label for="email">Email</label>
            <input type="email" name="email" required>
            <br>
            <label for="reservation_debut">Date de début de réservation</label>
            <input type="date" class="datepicker" name="date_depart_reservation" min="2023-06-05" required>
            <br>
            <div class="wrapper">
                <label for="duree">Durée de réservation :</label>
                <input type="range" id="duree" name="duree" min="1" max="60" step="1" required>
                <span id="duree-value"></span>
                <span id="duree-text"></span>
            </div>
            <button type="submit">Confirmer</button>
        </form>
    </div>
    <br>
    <br>
    <br>
    <?php
} else {
    http_response_code(404);
    include('404.html');
    exit;
}
?>
</body>
<footer>
    <?php
        include('footer.php');
    ?>
</footer>
<script>
    /* Fonction qui permet de voir la description complète, ou permet de réduire la taille de la description. */
    document.addEventListener('DOMContentLoaded', function () {
        const description = document.querySelector('.description');
        const descParagraph = document.querySelector('.desc');
        const expandButton = document.querySelector('.lire_plus');

        let isExpanded = false;

        expandButton.addEventListener('click', function () {
            isExpanded = !isExpanded;
            if (isExpanded) {
                description.classList.add('expanded');
                descParagraph.style.maxHeight = 'none';
                expandButton.textContent = 'Réduire';
            } else {
                description.classList.remove('expanded');
                descParagraph.style.maxHeight = '100px';
                expandButton.textContent = 'En savoir plus';
            }
        });
    });

    /* Mets le prénom au format première lettre en majuscule et le reste en miniscule et le nom en majuscule */
    function validateForm() {
        var prenomInput = document.getElementById('prenom');
        var nomInput = document.getElementById('nom');

        prenomInput.value = capitalizeFirstLetter(prenomInput.value.toLowerCase());
        nomInput.value = nomInput.value.toUpperCase();

        return true; // Permet l'envoi du formulaire
    }

    function capitalizeFirstLetter(string) {
        return string.charAt(0).toUpperCase() + string.slice(1);
    }

    /* Code pour le changement du texte de l'input range, pour afficher le temps de réservation en fonction du nombre de mois choisis */
    document.addEventListener("DOMContentLoaded", () => {
        const openModalButton = document.querySelector('.open-modal');
        const modal = document.querySelector('.modal');
        const closeModalButton = document.querySelector('.close-modal');
        const dureeInput = document.querySelector('#duree');
        const dureeValue = document.querySelector('#duree-value');
        const dureeText = document.querySelector('#duree-text');

        openModalButton.addEventListener('click', () => {
            modal.classList.add('active');
        });

        closeModalButton.addEventListener('click', () => {
            modal.classList.remove('active');
        });

        dureeInput.addEventListener('input', () => {
            const duree = dureeInput.value;
            let years = Math.floor(duree / 12);
            let months = duree % 12;

            if (years === 0) {
                dureeText.textContent = `${months} mois`;
            } else if (months === 0) {
                dureeText.textContent = `${years} an${years > 1 ? 's' : ''}`;
            } else {
                dureeText.textContent = `${years} an${years > 1 ? 's' : ''} et ${months} mois`;
            }
        })
    });
</script>
</html>
