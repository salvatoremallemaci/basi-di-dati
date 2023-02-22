<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
<body>

<?php

/* Verify parameter codiceCorso */
if (!isset($_REQUEST["codiceCorso"]) || trim($_REQUEST["codiceCorso"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Codice corso mancante o vuoto.</p>
    </div>";
    exit;
}

/* Verify parameter nomeCorso */
if (!isset($_REQUEST["nomeCorso"]) || trim($_REQUEST["nomeCorso"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Nome corso mancante o vuoto.</p>
    </div>";
    exit;
}

/* Verify parameter tipoCorso */
if (!isset($_REQUEST["tipoCorso"]) || trim($_REQUEST["tipoCorso"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Tipo corso mancante o vuoto.</p>
    </div>";
    exit;
}

/* Verify parameter livelloCorso */
if (!isset($_REQUEST["livelloCorso"]) || trim($_REQUEST["livelloCorso"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Livello corso mancante o vuoto.</p>
    </div>";
    exit;
}

$codiceCorso  = $_REQUEST["codiceCorso"];
$nomeCorso  = $_REQUEST["nomeCorso"];
$tipoCorso  = $_REQUEST["tipoCorso"];
$livelloCorso = $_REQUEST["livelloCorso"];

/* Establish DB connection */
$conn = @mysqli_connect ( 'localhost', 'root', '', 'PALESTRA' );

if (mysqli_connect_errno()) {
	echo "Failed to connect to MySQL: " . mysqli_connect_error ();
} 

/* String sanification for DB query */
$codiceCorso =  utf8_decode( mysqli_real_escape_string($conn, $codiceCorso)  ); 
$nomeCorso =  utf8_decode( mysqli_real_escape_string($conn, $nomeCorso)  ); 
$tipoCorso =  utf8_decode( mysqli_real_escape_string($conn, $tipoCorso)  ); 
$livelloCorso = utf8_decode( mysqli_real_escape_string($conn, $livelloCorso) ); 

/* Check Type */
if (!is_numeric($livelloCorso)){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Il Livello del corso deve essere un valore numerico.</p>
    </div>";
    exit;
}

/* Check Type */
if ($livelloCorso < 1 || $livelloCorso > 4){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Il Livello del corso deve essere compreso tra 3 e 4.</p>
    </div>";
    exit;
}

/* Query construction */
$query = "SELECT * 
		  FROM CICLISTA 
		  WHERE CodC='$codiceCorso'";
$result = mysqli_query ( $conn, $query );

/* Query execution */
if (!$result){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Inserimento $codiceCorso non riuscito! ". mysqli_error ( $conn ) ." </p>
    </div>";
    exit;
} elseif (mysqli_num_rows ( $result ) > 0) {
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Inserimento $codiceCorso non riuscito in quanto già presente nel DB.</p>
    </div>";
    exit;
}
    
    
/* Query construction */
$query = "INSERT INTO CORSI (CodC, Nome, Tipo, Livello) VALUES ('$codiceCorso', '$nomeCorso', '$nomeCorso', $livelloCorso)";

/* Query execution */
$result = mysqli_query ( $conn, $query );
if (!$result){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Inserimento $codiceCorso non riuscito! ". mysqli_error ( $conn ) ." </p>
    </div>";
    exit;
} else {
    echo "<div class='w3-panel w3-green'>
        <h3>Congratulazioni!</h3>
        <p>Inserimento del corso $codiceCorso riuscito.</p>
    </div>  ";
    exit;
}
?>

</body>
</html>