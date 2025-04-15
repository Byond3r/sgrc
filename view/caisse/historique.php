<?php
// Vérification de la session
if (!isset($_SESSION)) {
    session_start();
}

// Vérification du rôle
if ($_SESSION["role"] == "caisse") {
    ini_set('display_errors', 'off'); // Bloque les erreurs PHP
    include "../../include/secu.php";

    // Récupération du prix du menu
    $dateDuJour = date("Y-m-d");
    $requetePrixMenuHistorique = $pdo->prepare("SELECT PU FROM menu WHERE date_menu = :dateDuJour;");
    $requetePrixMenuHistorique->bindParam(':dateDuJour', $dateDuJour);
    $requetePrixMenuHistorique->execute();
    $prixMenuHistorique = $requetePrixMenuHistorique->fetch(PDO::FETCH_ASSOC);
    ?>

    <!DOCTYPE html>
    <html lang="fr">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Commande</title>
        <!-- Lien CSS -->
        <link rel="stylesheet" href="/SGRC/css/style_admin/tableau_de_bord/tableau_de_bord.css" />
        <link rel="stylesheet" href="/SGRC/css/style_bar/bar.css">
        <link rel="stylesheet" href="/SGRC/css/common.css" />
        <!-- Ajoutez ici vos autres balises head existantes -->
    </head>

    <body>
        <div class="container">
            <aside>
                <!-- MENU (logo & titre & bouton fermer) -->
                <div class="top">
                    <div class="logo">
                        <img src="/SGRC/image/img/source/logo.png" alt="logo du site" />
                        <h2>La table <span class="primary">d'Hélène</span></h2>
                    </div>
                    <div class="close" id="close-btn">
                        <img class="icon_size_sidebar" src="image\icone\xmark.svg" alt="Icone X Mark">
                    </div>
                </div>
                <div class="sidebar">
                    <!-- Ticket -->
                    <a href="?page=encours" class="">
                        <img class="icon_size_sidebar" src="image\icone\basket.svg" alt="Icone Commande">
                        <h3>Commande en cour</h3>
                    </a>
                    <a href="?page=historique" class="active">
                        <img class="icon_size_sidebar" src="image\icone\history.svg" alt="Icone History">
                        <h3>Historique</h3>
                    </a>
                    <!-- Deconnexion-->
                    <a href="/SGRC/php/deconnexion.php">
                        <img class="icon_size_sidebar" src="image\icone\logout.svg" alt="Icone Logout">
                        <h3>Déconnexion</h3>
                    </a>
                </div>
            </aside>

            <main>
                <h1>Historique de commande</h1>

                <div class="card_ticket">
                    <?php
                    // Boucle pour chaque ticket historique
                    foreach ($ticketsBar2 as $ticketBar2) {
                        // Requête pour récupérer la date du ticket
                        $idticket_caisse = $ticketBar2['id_ticket'];
                        $requeteDateTicket = $pdo->prepare("SELECT date_c FROM ticket WHERE id_ticket = :id_ticket");
                        $requeteDateTicket->bindParam(':id_ticket', $idticket_caisse);
                        $requeteDateTicket->execute();
                        $dateTicket = $requeteDateTicket->fetch(PDO::FETCH_ASSOC);
                    ?>
                        <div class="ticket">
                            <table>
                                <caption style="font-size: 13px; font-weight: bold;">
                                    <?php
                                    echo "Table n° :" . "\n" . $ticketBar2['numero_table'] . '<br/>';
                                    echo "N° Ticket : #";
                                    $numTicket = $ticketBar2['id_ticket'];
                                    while (strlen($numTicket) < 3) {
                                        $numTicket = '0' . $numTicket;
                                    }
                                    echo $numTicket;
                                    ?>
                                </caption>
                                <thead>
                                    <tr>
                                        <th>Quantité</th>
                                        <th>Nom</th>
                                        <th>Prix</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    // Récupération des commandes pour ce ticket historique
                                    $statmt17->execute();
                                    $commandes = $statmt17->fetchAll();
                                    $statmt20->execute();
                                    $prixTT = $statmt20->fetch(PDO::FETCH_ASSOC);
                                    foreach ($commandes as $commande) {
                                    ?>
                                        <tr>
                                            <td><?php echo $commande['quantite']; ?> </td>
                                            <td><?php echo $commande['nom_plat']; ?> </td>
                                            <td><?php echo number_format($commande['prix'], 2); ?>€</td>
                                        </tr>
                                    <?php
                                    }
                                    ?>
                                    <tr>
                                        <td><?php echo $ticketBar2['nb_couvert']; ?> </td>
                                        <td><?php echo 'Menu'; ?> </td>
                                        <td><?php echo number_format($prixMenuHistorique['PU'] * $ticketBar2['nb_couvert'], 2); ?>€</td>
                                    </tr>
                                </tbody>
                            </table>
                            <p>Prix Total : <?php echo number_format($prixTT['TT'] + $prixMenuHistorique['PU'] * $ticketBar2['nb_couvert'], 2); ?>€</p>
                            <!-- MISE A JOUR 14/10/2024 : Affichage de la date de la creation du ticket dans l'historique  -->
                            <p>Date du Ticket : <?php echo $dateTicket['date_c']; ?></p>
                        </div>
                    <?php
                    }
                    ?>
                </div>
            </main>

            <div class="right">
                <div class="top">
                    <button id="menu-btn">
                        <i><img class="icon_size" src="image\icone\bar.svg" alt="Icone Bars"></i>
                    </button>
                    <div class="theme-toggler" id="theme-toggler">
                        <!-- Dark and Light -->
                        <i><img class="icon_darkmode" src="image\icone\darkmode.svg" alt="Icone Dark Mode"></i>
                    </div>
                    <div class="profil">
                        <div class="info">
                            <p style="text-transform: uppercase;"><b><?php echo $_SESSION['role'] ?></b></p>
                        </div>
                        <div class="profil-photot">
                            <img src="/SGRC/php/image/profils/<?php echo $row['image']; ?>" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Script Dark Mode -->
        <script src="/SGRC/js/source/dark_mode.js"></script>
        <!-- Script Menu -->
        <script src="/SGRC/js/source/menu.js"></script>
        <!-- SCRIPT FONT AWESOME -->
        <script src="https://kit.fontawesome.com/438cd94e6c.js" crossorigin="anonymous"></script>
    </body>

    </html>

    <?php
} else {
    echo ("Vous n'avez pas le droit d'être là");
    header("Location:../../../index.php");
    exit();
}
?>
