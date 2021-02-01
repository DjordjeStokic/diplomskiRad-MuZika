<?php 

function procistiFormPassword($inputText) {
	$inputText = strip_tags($inputText);
	return $inputText;
}

function pročistiFormUsername($inputText) {
	$inputText = strip_tags($inputText);
	$inputText = str_replace(" ", "", $inputText);
	return $inputText;
}

function procistiFormu($inputText) {
	$inputText = strip_tags($inputText);
	$inputText = str_replace(" ", "", $inputText);
	$inputText = ucfirst(strtolower($inputText));
	return $inputText;
}


if(isset($_POST['registerButton'])) {
	//Dugme za registraciju pretisnuto
	$username = pročistiFormUsername($_POST['username']);
	$firstName = procistiFormu($_POST['firstName']);
	$lastName = procistiFormu($_POST['lastName']);
	$email = procistiFormu($_POST['email']);
	$email2 = procistiFormu($_POST['email2']);
	$password = procistiFormPassword($_POST['password']);
	$password2 = procistiFormPassword($_POST['password2']);

	$wasSuccessful = $account->register($username, $firstName, $lastName, $email, $email2, $password, $password2);

	if($wasSuccessful == true) {
		$_SESSION['userLoggedIn'] = $username;
		header("Location: index.php");
	}

}


?>