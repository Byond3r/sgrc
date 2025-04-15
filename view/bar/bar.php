<?php
if (!isset($_SESSION)) {
	session_start();
}

if ($_SESSION["role"] == "bar") {

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
				
<!-- bouton refresh -->
<div class='btn_switch'>
    <br>
    <p class="refresh">Actualiser l'affichage  <span style="font-weight: bold;" id="reloadStatus">ON</span>
</p>
    <label class="switch">
        <input type="checkbox" id="switchBtn" onclick="toggleReload()" />
        <span class="slider round"></span>
    </label>
</div>


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
						foreach ($ticketsBar as $ticketBar) {
						?>
							<div class="ticket" class="load_ticket">
								<table>
								<caption style="font-size: 13px; font-weight: bold;">
										<?php
										echo "Table n° :" . "\n" . $ticketBar['numero_table'] . '<br/>';
										echo "N° Ticket : #";
										$numTicket = $ticketBar['id_ticket'];
										while (strlen($numTicket) < 3) {
											$numTicket = '0' . $numTicket;
										}
										echo $numTicket . '<br>';
										$status = "";
										if ($ticketBar['statut'] == 'PAY') {
											$status = "<p class='success'>PAY</p>";
										} elseif ($ticketBar['statut'] == 'VAL') {
											$status = "<p class='warning'>VALIDE</p>";
										} else {
											$status = "<p class='danger'>SAISIE</p>";
										}
										echo "statut : " . $status;
										?>
									</caption>
									<thead>
										<tr>
											<th>Quantite</th>
											<th>Nom Boissons</th>
											<th>Commentaires</th>
											<th>Etat</th>
											<th>Modifier</th>
										</tr>
									</thead>

									<?php
									$u = $ticketBar['id_ticket'];
									$statmt17->execute();
									$commandes = $statmt17->fetchAll();
									$typePrecedent = -1 ;
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
												<td style="color: grey;">
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
												<td style="color: grey;">
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
												<td style="color: grey;">
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
												<td style="color: grey;">
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
												<td style="color: grey;">
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
																<input type="hidden" name="action" value="etatEncours">
																<input type="hidden" name="id_ticket" value="</?php echo $commande['id_ticket']; ?>">
																<input type="hidden" name="id_plat" value="</?php echo $commande['id_plat']; ?>">
																<input type="hidden" name="commentaire" value="</?php echo $commande['commentaire'] ?>">
																<input type="hidden" name="etat" value="</?php echo $commande['Etat']; ?>">
																<input type="submit" value="En cours">
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
																	<input type="submit" value="Dress&eacute">
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
															<td style="color: grey;">
																Fini
															<td >
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
			<div class="profil">
			<div class="info">
					<p style="text-transform: uppercase;"><b>
                    <p>Bonjour,  <?php echo $_SESSION['login']; ?></p> </b> 
							<?php //echo $_SESSION['role']; ?>
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
	<script>
		
		var reload=true;
		// Appeler la fonction toutes les 2 secondes
		setInterval(load_ticket, 2000);
		function bloquer(){
                reload=false;  
        };

        function debloquer(){
                reload=true;   
        };
        

		function load_ticket() {
            if(reload){
                location.reload();
            }
			
		};
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