<?php
include("includes/includedFiles.php");
?>

<div class="userDetails">

	<div class="container borderBottom">
		<h2>EMAIL</h2>
		<input type="text" class="email" name="email" placeholder="Email adresa..." value="<?php echo $userLoggedIn->getEmail(); ?>">
		<span class="message"></span>
		<button class="button" onclick="updateEmail('email')">SAČUVAJ</button>
	</div>

	<div class="container">
		<h2>LOZINKA</h2>
		<input type="password" class="oldPassword" name="oldPassword" placeholder="Trenutna lozinka">
		<input type="password" class="newPassword1" name="newPassword1" placeholder="Nova lozinka">
		<input type="password" class="newPassword2" name="newPassword2" placeholder="Potvrdi lozinku">
		<span class="message"></span>
		<button class="button" onclick="updatePassword('oldPassword', 'newPassword1', 'newPassword2')">SAČUVAJ</button>
	</div>

</div>