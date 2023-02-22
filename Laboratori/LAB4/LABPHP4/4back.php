<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
<body>

<?php

/* Verify parameter course_code */
if (!isset($_REQUEST["cognome"]) || trim($_REQUEST["cognome"]) == ""){
    echo '<p> ERRORE: cognome mancante o vuoto. </p>';
    exit;
}

/* Verify parameter course_code */
if (!isset($_REQUEST["giorno"]) || trim($_REQUEST["giorno"]) == ""){
    echo '<p> ERRORE: Data mancante o vuota. </p>';
    exit;
}

$cognome = $_REQUEST["cognome"];
$giorno = $_REQUEST["giorno"];

/* Establish DB connection */
$conn = @mysqli_connect ( 'localhost', 'root', '', 'palestra' );

if (mysqli_connect_errno()) {
	echo "Failed to connect to MySQL: " . mysqli_connect_error ();
} 

/* String sanification for DB query */
$cognome = utf8_decode( mysqli_real_escape_string($conn, $cognome) ); 
$giorno = utf8_decode( mysqli_real_escape_string($conn, $giorno) ); 

/* Query construction */
$query = "SELECT Giorno as Giorno, 
                    OraInizio as OraInizio, 
                    ADDTIME(OraInizio, SEC_TO_TIME(Durata*60)) as OraFine,
                    Durata as Durata, 
                    C.Nome as NomeCorso, 
                    C.Tipo as TipoCorso, 
                    C.Livello as LivelloCorso
            FROM PROGRAMMA AS P, ISTRUTTORE AS I, CORSI AS C
            WHERE P.CodFisc=I.CodFisc AND C.CodC=P.Codc
                AND I.Cognome = '$cognome' AND P.Giorno = '$giorno'
            ORDER BY C.Livello ASC, C.Nome ASC";

/* Query execution */
$result = mysqli_query ( $conn, $query );
if (!$result){
    die ( 'Query error: ' . mysqli_error ( $conn ) );
}

/* Check if course found */
if (mysqli_num_rows ( $result ) > 0) {
    $giorno_viz = utf8_encode($giorno);
    echo "<h1>Dettagli per $cognome, giorno $giorno_viz</h1>";
    echo "<table class='w3-table-all w3-hoverable'>";

    /* Table header */
    echo "<thead><tr>";
    
    echo "<th>Giorno</th>";
    echo "<th>Ora Inizio</th>";
    echo "<th>Ora Fine</th>";
    echo "<th>Durata</th>";
    echo "<th>Nome Corso</th>";
    echo "<th>Tipo Corso</th>";
    echo "<th>Livello Corso</th>";

    echo "</thead></tr>";
   
    
    /* Table content */
    while($row = mysqli_fetch_array($result)) {
        echo "<tr>";
        $final_time = date_parse($row["OraInizio"]);
        echo "<td>". htmlspecialchars(utf8_encode($row["Giorno"])) . "</td>";
        echo "<td>". htmlspecialchars($row["OraInizio"]) . "</td>";
        echo "<td>". htmlspecialchars($row["OraFine"]) . "</td>";
        echo "<td>". htmlspecialchars($row["Durata"]) . "</td>";
        echo "<td>". htmlspecialchars($row["NomeCorso"]) . "</td>";
        echo "<td>". htmlspecialchars($row["TipoCorso"]) . "</td>";
        echo "<td>". htmlspecialchars($row["LivelloCorso"]) . "</td>";
        
        echo "</tr>";
    }
    echo "</table>";

} else {
    echo "<h1>Nessun risultato trovato.</h1>";
}

?>

</body>
</html>