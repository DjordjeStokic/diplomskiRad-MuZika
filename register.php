<?php
	include("includes/config.php");
	include("includes/classes/Account.php");
	include("includes/classes/Constants.php");

	$account = new Account($con);

	include("includes/handlers/register-handler.php");
	include("includes/handlers/login-handler.php");

	function getInputValue($name) {
		if(isset($_POST[$name])) {
			echo $_POST[$name];
		}
	}
?>

<html>
<head>
	<title>Dobro došli na MuZika!</title>

	<link rel="stylesheet" type="text/css" href="assets/css/register.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="assets/js/register.js"></script>
</head>
<body>
	<?php

	if(isset($_POST['registerButton'])) {
		echo '<script>
				$(document).ready(function() {
					$("#loginForm").hide();
					$("#registerForm").show();
				});
			</script>';
	}
	else {
		echo '<script>
				$(document).ready(function() {
					$("#loginForm").show();
					$("#registerForm").hide();
				});
			</script>';
	}

	?>
	

	<div id="background">

		<div id="loginContainer">

			<div id="inputContainer">
				<form id="loginForm" action="register.php" method="POST">
					<h2>Prijavi se na nalog</h2>
					<p>
						<?php echo $account->getError(Constants::$loginFailed); ?>
						<label for="loginUsername">Korisničko ime</label>
						<input id="loginUsername" name="loginUsername" type="text" placeholder="Petar" value="<?php getInputValue('loginUsername') ?>" required autocomplete="off">
					</p>
					<p>
						<label for="loginPassword">Lozinka</label>
						<input id="loginPassword" name="loginPassword" type="password" placeholder="Vaša lozinka" required>
					</p>

					<button type="submit" name="loginButton">PRIJAVI SE</button>

					<div class="hasAccountText">
						<span id="hideLogin">Nemate nalog? Prijavite se OVDE!</span>
					</div>
					
				</form>



				<form id="registerForm" action="register.php" method="POST">
					<h2>Napravite besplatan nalog</h2>
					<p>
						<?php echo $account->getError(Constants::$usernameCharacters); ?>
						<?php echo $account->getError(Constants::$usernameTaken); ?>
						<label for="username">Korisničko ime</label>
						<input id="username" name="username" type="text" placeholder="Petar98" value="<?php getInputValue('username') ?>" required>
					</p>

					<p>
						<?php echo $account->getError(Constants::$firstNameCharacters); ?>
						<label for="firstName">Ime</label>
						<input id="firstName" name="firstName" type="text" placeholder="Petar" value="<?php getInputValue('firstName') ?>" required>
					</p>

					<p>
						<?php echo $account->getError(Constants::$lastNameCharacters); ?>
						<label for="lastName">Prezime</label>
						<input id="lastName" name="lastName" type="text" placeholder="Peric" value="<?php getInputValue('lastName') ?>" required>
					</p>

					<p>
						<?php echo $account->getError(Constants::$emailsDoNotMatch); ?>
						<?php echo $account->getError(Constants::$emailInvalid); ?>
						<?php echo $account->getError(Constants::$emailTaken); ?>
						<label for="email">Email</label>
						<input id="email" name="email" type="email" placeholder="petarperic@gmail.com" value="<?php getInputValue('email') ?>" required>
					</p>

					<p>
						<label for="email2">Potvrdite email</label>
						<input id="email2" name="email2" type="email" placeholder="petarperic@gmail.com" value="<?php getInputValue('email2') ?>" required>
					</p>

					<p>
						<?php echo $account->getError(Constants::$passwordsDoNoMatch); ?>
						<?php echo $account->getError(Constants::$passwordNotAlphanumeric); ?>
						<?php echo $account->getError(Constants::$passwordCharacters); ?>
						<label for="password">Password</label>
						<input id="password" name="password" type="password" placeholder="Vaša lozinka" required>
					</p>

					<p>
						<label for="password2">Potvrdite lozinku</label>
						<input id="password2" name="password2" type="password" placeholder="Vaša lozinka" required>
					</p>

					<button type="submit" name="registerButton">Registruj se</button>

					<div class="hasAccountText">
						<span id="hideRegister">Već posedujete nalog? Prijavite se OVDE.</span>
					</div>
					
				</form>


			</div>

			<div id="loginText">
				<h1>Dobro došli na MuZiKa!</h1>
				<h2>Sve pesme besplatne obezbedjene od strane umetnika!</h2>
				<ul>
					<li>Ritam!</li>
					<li>Melodija!</li>
					<li>Dodajte vaš ukus!</li>
				</ul>
			</div>

		</div>
	</div>

</body>
</html>