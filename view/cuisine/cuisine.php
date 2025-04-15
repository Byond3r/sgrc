<?php
if ($_SESSION["role"] == "cuisine") {

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
		<link rel="stylesheet" href="/SGRC/css/style_cuisine/cuisine.css">
		<link rel="stylesheet" href="/SGRC/css/common.css" />
		<!-- Solution pour les sintillements lors du rafraichissement de la page a mettre a la fin de la balise -->
	</head>
		<script>
            // Récupération du thème stocké ou utilisation du thème clair par défaut
            const theme = localStorage.getItem('theme') || 'light';
            document.documentElement.dataset.theme = theme;
            // Application immédiate du style pour éviter le flash
            document.documentElement.style.display = 'none';
            window.addEventListener('DOMContentLoaded', () => {
            document.documentElement.style.display = '';
            });
        </script>
	</head>

	<body>
		<!-- Conteneur -->
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
					<a href="#" class="active">
						<img class="icon_size_sidebar" src="image\icone\ticket.svg" alt="Icone Ticket">
						<h3>Ticket</h3>
					</a>
					<!-- Deconnexion-->
					<a href="/SGRC/php/deconnexion.php">
						<img class="icon_size_sidebar" src="image\icone\logout.svg" alt="Icone Logout">
						<h3>Déconnexion</h3>
					</a>
				</div>
			</aside>
			<!-------------Fin ASIDE  ----------------->
			<main>



				<h1>Voir les commande passées</h1>
				<br>
								
<!-- ----------------------------------------------------------------------------------------------------------- -->
<!-- bouton refresh -->
<!-- <div class='btn_switch'>
    <br>
    <p class="refresh">Actualiser l'affichage  <span style="font-weight: bold;" id="reloadStatus">ON</span>
</p>
    <label class="switch">
        <input type="checkbox" id="switchBtn" onclick="toggleReload()" />
        <span class="slider round"></span>
    </label>
</div> -->


<script>
   var reload = true;

function toggleReload() {
  reload = !reload;
  updateReloadStatus();
}

function load_ticket() {
  if (reload) {
    location.reload();
  }
}

function updateReloadStatus() {
  var reloadStatusElement = document.getElementById("reloadStatus");
  if (reload) {
    reloadStatusElement.textContent = "ON";
  } else {
    reloadStatusElement.textContent = "OFF";
  }
}
</script>
<!-- bouton refresh -->

<!-- ----------------------------------------------------------------------------------------------------------- -->


				<div class="commander">
					<div class="card_ticket">
						<?php
						foreach ($tickets as $ticket) {
						?>
							<div class="ticket" id="load_ticket">


								<table>
								<caption style="font-size: 13px; font-weight: bold;">
										<?php
										echo "Table n° :" . "\n" . $ticket['numero_table'] . '<br/>';
										echo "N° Ticket : #";
										$numTicket = $ticket['id_ticket'];
										while (strlen($numTicket) < 3) {
											$numTicket = '0' . $numTicket;
										}
										echo $numTicket . '<br>';
										$status = "";
										if ($ticket['statut'] == 'PAY') {
											$status = "<p class='success'>PAY</p>";
										} elseif ($ticket['statut'] == 'VAL') {
											$status = "<p class='warning'>VALIDE</p>";
										} else {
											$status = "<p class='danger'>SAISIE</p>";
										}
										echo "statut : " . $status;
										
										?>
									</caption>
									<thead>
										<tr>
											<th>Quantit&eacute;</th>
											<th>Nom du Plat</th>
											<th>Commentaires</th>
											<th>Etat</th>
											<th>Action</th>
										</tr>
									</thead>

									<?php
									$u = $ticket['id_ticket'];
									$statmt17->execute();
									$commandes = $statmt17->fetchAll();
									$typePrecedent = -1 ;
									
									//var_dump($commandes);
									foreach ($commandes as $commande) {
									?>
										<tbody>
											<?php 
											if ($typePrecedent != $commande['id_sous_cat']) {
												$typePrecedent = $commande['id_sous_cat'];
												?>
											<tr class="first"> 
												<?php 
											} else{
												?>
												<tr >
												<?php 
											}
												
												if ($commande['Etat'] != "Servi") {?>
												<td bgcolor= '<?php echo $commande['couleur']; ?>'>
												<?php 
											} else{
												?>
												<td>
												<?php 
											} ?>
													<?php echo $commande['quantite']; ?>
												</td>
												<?php 
												if ($commande['Etat'] != "Servi") {?>
												<td bgcolor= '<?php echo $commande['couleur']; ?>'>
												<?php 
											} else{
												?>
												<td>
												<?php 
											} ?>
													<?php echo $commande['nom_plat']; ?>
												</td>
												<?php 
												if ($commande['Etat'] != "Servi") {?>
												<td bgcolor= '<?php echo $commande['couleur']; ?>'>
												<?php 
											} else{
												?>
												<td>
												<?php 
											} ?>
													<?php echo $commande['commentaire']; ?>
												</td>
												<?php 
												if ($commande['Etat'] != "Servi") {?>
												<td bgcolor= '<?php echo $commande['couleur']; ?>'>
												<?php 
											} else{
												?>
												<td>
												<?php 
											} ?>
													<?php echo $commande['Etat']; ?>
												</td>
												<?php
												if ($commande['Etat'] == "En saisie") {
												?>
													<?php 
												if ($commande['Etat'] != "Servi") {?>
												<td bgcolor= '<?php echo $commande['couleur']; ?>'>
												<?php 
											} else{
												?>
												<td>
												<?php 
											} ?>
														En Attente de Validation
													</td>
													<?php
												} else {

													if ($commande['Etat'] == "Demande") { ?>
														<?php 
												if ($commande['Etat'] != "Servi") {?>
												<td bgcolor= '<?php echo $commande['couleur']; ?>'>
												<?php 
											} else{
												?>
												<td>
												<?php 
											} ?>
															<form method="POST">
																<input type="hidden" name="action" value="etatEnCours">
																<input type="hidden" name="id_ticket" value="<?php echo $commande['id_ticket']; ?>">
																<input type="hidden" name="id_plat" value="<?php echo $commande['id_plat']; ?>">
																<input type="hidden" name="commentaire" value="<?php echo $commande['commentaire'] ?>">
																<input type="hidden" name="etat" value="<?php echo $commande['Etat']; ?>">
																<input type="submit" value="A servir">
															</form>
														</td>
														<?php } else {
														if ($commande['Etat'] == "En cours") { ?>
															<?php 
												if ($commande['Etat'] != "Servi") {?>
												<td bgcolor= '<?php echo $commande['couleur']; ?>'>
												<?php 
											} else{
												?>
												<td>
												<?php 
											} ?>
																<form method="POST">
																	<input type="hidden" name="action" value="etatPret">
																	<input type="hidden" name="id_ticket" value="<?php echo $commande['id_ticket']; ?>">
																	<input type="hidden" name="id_plat" value="<?php echo $commande['id_plat']; ?>">
																	<input type="hidden" name="commentaire" value="<?php echo $commande['commentaire']; ?>">
																	<input type="hidden" name="etat" value="<?php echo $commande['Etat']; ?>">
																	<input type="submit" value="Pret">
																</form>
															</td>
														<?php } else { ?><?php
															if ($commande['Etat'] == "Pret") { ?>
															<?php 
												if ($commande['Etat'] != "Servi") {?>
												<td bgcolor= '<?php echo $commande['couleur']; ?>'>
												<?php 
											} else{
												?>
												<td>
												<?php 
											} ?>
																<p>A servir</p>
															</td>
														<?php } else { ?>
															<td >
																Fini
															<td>
													<?php }
													}
												}
											}?>
											</tr>
										</tbody>
									<?php
									}
									?>
								</table>
							</div>
						<?php
						}
						?>
					</div>

				</div>

	</body>
	</div>
	</div>
	</main>
	<!-- Fin du  main -->
	<div class="right">
		<div class="top">
			<button id="menu-btn">
				<i><img class="icon_size" src="image\icone\bar.svg" alt="Icone Bars"></i>
			</button>
			<div class="theme-toggler" id="theme-toggler">
				<!-- Dark and Light -->
				<i><img class="icon_darkmode" src="image\icone\darkmode.svg" alt="Icone Dark Mode"></i>
			</div>

			<div class='btn_switch'>
    <br>
    <b><p class="refresh">Actualiser l'affichage  <span style="font-weight: bold;" id="reloadStatus">ON</span></b>
</p>
    <label class="switch">
        <input type="checkbox" id="switchBtn" onclick="toggleReload()" />
        <span class="slider round"></span>
    </label>
</div>

			<div class="profil">
			<div class="info">
			<p style="text-transform: uppercase;"><b>
                    <p>Bonjour, MR <?php echo $_SESSION['login']; ?></p> </b> 
							<?php //echo $_SESSION['role'] ?>
						</p>
				</div>
				<?php
				$sql = mysqli_query($link, "SELECT * FROM user WHERE id_user = {$_SESSION['id_user']}");
				if (mysqli_num_rows($sql) > 0) {
					$row = mysqli_fetch_assoc($sql);
				}
				?>
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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

	<script>
		

		var reload=true;
		// Appeler la fonction toutes les 2 secondes
		setInterval(load_ticket2, 2000);

		function bloquer(){
                reload=false;  
        };

        function debloquer(){
                reload=true;   
        };
        

		function load_ticket2() {
            if(reload){
                location.reload();
            }
			
		};

// -------------------------------------------------------------------------------------------------------------
// permet la transition de la navbar
$(document).ready(function() {
  // Lorsque la page est défilée
  $(window).scroll(function() {
    // Vérifiez si la position de défilement est supérieure à une certaine valeur (par exemple, 100px)
    if ($(this).scrollTop() > 100) {
      // Ajoutez la classe 'scrolled' à la barre de navigation
      $('.right .top').addClass('scrolled');
    } else {
      // Supprimez la classe 'scrolled' si la position de défilement est inférieure à la valeur spécifiée
      $('.right .top').removeClass('scrolled');
    }
  });
});
// -------------------------------------------------------------------------------------------------------------

	</script>

	
	</body>

	</html>


<?php

} else {
	echo ("vous n'avez pas le droit d'être là");
	header("Location:../../../index.php");
	exit();
}
?>