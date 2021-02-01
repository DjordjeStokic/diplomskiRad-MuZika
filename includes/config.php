<?php
	ob_start(); //šalje podatke u buffer
	session_start(); //pokretanje sesije kada se korisnik uloguje ili registruje

	$timezone = date_default_timezone_set("Europe/Belgrade");

//povezivanje sa bazom
	$con = mysqli_connect("localhost", "root", "", "muzika");

	if(mysqli_connect_errno()) {
		echo "Ne uspešno povezivanje sa:  " . mysqli_connect_errno();
	}
?>