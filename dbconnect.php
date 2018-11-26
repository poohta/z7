<?php
    //dane bazy danych
	$dbhost="serwer1856489.home.pl";
	$dbuser="28891702_lab7";
	$dbpassword="xPDZ2kBrV";
	$dbname="28891702_lab7";
    
    //sprawdzanie połączenia
    $polaczenie = mysqli_connect($dbhost, $dbuser, $dbpassword, $dbname);
    if (!$polaczenie) {
        echo "Błąd połączenia z MySQL." . PHP_EOL;
        echo "Errno: " . mysqli_connect_errno() . PHP_EOL;
        echo "Error: " . mysqli_connect_error() . PHP_EOL;
        exit;
    }
?>