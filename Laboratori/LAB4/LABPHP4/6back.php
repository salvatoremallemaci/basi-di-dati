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

/* Verify parameter codiceIstruttore */
if (!isset($_REQUEST["codiceIstruttore"]) || trim($_REQUEST["codiceIstruttore"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Codice fiscale istruttore mancante o vuoto.</p>
    </div>";
    exit;
}

/* Verify parameter giorno */
if (!isset($_REQUEST["giorno"]) || trim($_REQUEST["giorno"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Giorno mancante o vuoto.</p>
    </div>";
    exit;
}

/* Verify parameter tempoInizio */
if (!isset($_REQUEST["tempoInizio"]) || trim($_REQUEST["tempoInizio"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Ora di inizio mancante o campo vuoto.</p>
    </div>";
    exit;
}

/* Verify parameter durata */
if (!isset($_REQUEST["durata"]) || trim($_REQUEST["durata"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Durata corso mancante o campo vuoto.</p>
    </div>";
    exit;
}

/* Verify parameter sala */
if (!isset($_REQUEST["sala"]) || trim($_REQUEST["sala"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Sala mancante o campo vuoto.</p>
    </div>";
    exit;
}
$codiceCorso    = $_REQUEST["codiceCorso"];
$codiceIstruttore = $_REQUEST["codiceIstruttore"];
$giorno            = $_REQUEST["giorno"];
$tempoInizio  = $_REQUEST["tempoInizio"];
$durata       = $_REQUEST["durata"];
$sala           = $_REQUEST["sala"];

/* Establish DB connection */
$conn = @mysqli_connect ( 'localhost', 'root', '', 'PALESTRA' );

if (mysqli_connect_errno()) {
	echo "Failed to connect to MySQL: " . mysqli_connect_error ();
} 

/* String sanification for DB query */
$codiceCorso    = utf8_encode(utf8_decode( mysqli_real_escape_string($conn, $codiceCorso) )); 
$codiceIstruttore = utf8_encode(utf8_decode( mysqli_real_escape_string($conn, $codiceIstruttore) )); 
$giorno            = utf8_encode(utf8_decode( mysqli_real_escape_string($conn, $giorno) )); 
$giorno_sql        = utf8_decode( mysqli_real_escape_string($conn, $giorno) ); 
$tempoInizio  = utf8_encode(utf8_decode( mysqli_real_escape_string($conn, $tempoInizio) )); 
$durata       = utf8_encode(utf8_decode( mysqli_real_escape_string($conn, $durata) )); 
$sala           = utf8_encode(utf8_decode( mysqli_real_escape_string($conn, $sala) )); 

/* Check durata */
if (!is_numeric($durata)){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>La durata deve essere un valore numerico.</p>
    </div>";
    exit;
}

/* Check giorno */
$week_array = ["Lunedi", "Martedi", "Mercoledi", "Giovedi", "Venerdi"];
if (!in_array($giorno, $week_array)){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Il giorno della settimana inserito non è corretto. </p>
    </div>";
    exit;
}


/* Check durata */
if (!is_numeric($durata)){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>La durata deve essere un valore numerico.</p>
    </div>";
    exit;
}

$time = strtotime($tempoInizio);
$end_time = date("H:i", strtotime('+'.$durata.' minutes', $time));

/* Query construction */
$query = "SELECT * 
          FROM PROGRAMMA 
          WHERE Giorno='$giorno_sql' AND
                (TIME(OraInizio) BETWEEN '$tempoInizio' AND '$end_time' OR 
                TIME(ADDTIME(OraInizio, SEC_TO_TIME(Durata*60))) BETWEEN '$tempoInizio' AND '$end_time') AND
                (SALA = '$sala' OR CodFisc = '$codiceIstruttore')
            ";

$result = mysqli_query ( $conn, $query );

/* Query execution */
if (!$result){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Inserimento non riuscito! ". mysqli_error ( $conn ) ." </p>
    </div>";
    exit;
} elseif (mysqli_num_rows ( $result ) > 0) {
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Inserimento non riuscito in quanto sovrapposto ad altri corsi.</p>
    </div>";
    exit;
}
    
/* Query construction */
$query = "INSERT INTO PROGRAMMA (CodFisc, Giorno, OraInizio, Durata, Sala, CodC) 
          VALUES ('$codiceIstruttore', '$giorno_sql', '$tempoInizio', $durata, '$sala', '$codiceCorso')";

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