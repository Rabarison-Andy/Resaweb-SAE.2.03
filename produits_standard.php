<?php
include("connexion.php");

$stmt = $db->prepare("SELECT *
       FROM `pc_portables`, `categories_pc_portables`
       WHERE `id_categorie` = `ext_id_catégorie`
       AND `id_categorie` = 1");

$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="styles.css" type="text/css">
    <title>RentMyPC</title>
    <link rel="icon" href="img/favicon.ico">
</head>
<body>
<header>
<?php include('header.php'); ?>
</header>  
    <div class="product-filtre">
        <div class="filtre-box">
            <div class="filtre">
                <label for="tri-produits">Trier par :</label>
                <select id="tri-produits" onchange="triProduits(this.value)">
                    <option value="nom">Ordre alphabétique</option>
                    <option value="prix">Ordre par prix</option>
                </select>
            </div>
        </div>
        <div class="produits">
            <?php if (count($result) > 0) {
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
            <?php } ?>
        </div>
    </div>
    </body>
<footer>
    <?php include('footer.php'); ?>
</footer>
<script>
        function triProduits(tri) {
            // Récupérer la liste des produits
            const produitsContainer = document.querySelector('.produits');
            const produits = Array.from(produitsContainer.children);

            // Trier les produits en fonction du critère de tri
            if (tri === 'nom') {
                produits.sort((a, b) => {
                    const nomA = a.querySelector('.nom-produit h2').textContent.toLowerCase();
                    const nomB = b.querySelector('.nom-produit h2').textContent.toLowerCase();
                    return nomA.localeCompare(nomB);
                });
            } else if (tri === 'prix') {
                produits.sort((a, b) => {
                    const prixA = parseFloat(a.querySelector('.prix-produit h4').textContent);
                    const prixB = parseFloat(b.querySelector('.prix-produit h4').textContent);
                    return prixA - prixB;
                });
            }

            // Mettre à jour l'ordre des produits dans l'affichage
            produitsContainer.innerHTML = '';
            produits.forEach((produit) => {
                produitsContainer.appendChild(produit);
            });
        }
    </script>
</html>
