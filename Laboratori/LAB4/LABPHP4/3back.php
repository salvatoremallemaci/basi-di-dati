<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<?php

/* Verifica parametro codiceCorso */
if (!isset($_REQUEST["codiceCorso"]) || trim($_REQUEST["codiceCorso"]) == ""){
    echo '<p> ERRORE: Codice corso mancante o vuoto. </p>';
    exit;
}

$codiceCorso = $_REQUEST["codiceCorso"];

/* Establish DB connection */
$conn = @mysqli_connect ( 'localhost', 'root', '', 'palestra' );

if (mysqli_connect_errno()) {
	echo "Failed to connect to MySQL: " . mysqli_connect_error ();
} 

/* String sanification for DB query */
$codiceCorso = mysqli_real_escape_string($conn, $codiceCorso); 

/* Query construction */
$query = " SELECT *
		   FROM Corsi
		   WHERE CodC = '$codiceCorso'";

/* Query execution */
$result = mysqli_query ( $conn, $query );
if (!$result){
    die ( 'Query error: ' . mysqli_error ( $conn ) );
}

/* Check if course found */
if (mysqli_num_rows ( $result ) > 0) {
    echo "<h1>Dettagli corso $codiceCorso</h1>";
    echo "<table class='w3-table-all w3-hoverable'>";

    /* Table header */
    echo "<thead><tr>";
    $i = 0;
    $field_names = [];
    while($i<mysqli_num_fields($result)) { 
        $meta=mysqli_fetch_field($result); 
        echo "<th>".$meta->name."</th>"; 
        array_push($field_names, $meta->name);
        $i++; 
    } 
    echo "</thead></tr>";
    
	echo '<p>' . ' Risultato della ricerca : '. '</p>';
	
    /* Table content */
    while($row = mysqli_fetch_array($result)) {
        echo "<tr>";
        foreach ($field_names as $field){
            /* String sanification for HTML */
            $safe_html = htmlspecialchars($row[$field], ENT_QUOTES | ENT_SUBSTITUTE, 'utf-8');
            echo "<td>" . $safe_html . "</td>";
        }
        echo "</tr>";
    }
    echo "</table>";

} else {
    echo "<h1>Corso $codiceCorso non trovato.</h1>";
}
?>
</body>
</html>