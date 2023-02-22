<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
<body>


<?php

/* Verify parameter codiceCiclista */
if (!isset($_REQUEST["codiceCiclista"]) || trim($_REQUEST["codiceCiclista"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Codice ciclista mancante o vuoto.</p>
    </div>";
    exit;
}

/* Verify parameter codiceTappa */
if (!isset($_REQUEST["codiceTappa"]) || trim($_REQUEST["codiceTappa"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Livello corso mancante o vuoto.</p>
    </div>";
    exit;
}

$codiceCiclista  = $_REQUEST["codiceCiclista"];
$codiceTappa = $_REQUEST["codiceTappa"];

/* Establish DB connection */
$conn = @mysqli_connect ( 'localhost', 'root', '', 'CAMPIONATO_CICLISTICO' );

if (mysqli_connect_errno()) {
	echo "Failed to connect to MySQL: " . mysqli_connect_error ();
} 

/* String sanification for DB query */
$codiceCiclista =  utf8_decode( mysqli_real_escape_string($conn, $codiceCiclista)  ); 
$codiceTappa = utf8_decode( mysqli_real_escape_string($conn, $codiceTappa) ); 

/* Check Type codiceCiclista */
if (!is_numeric($codiceCiclista)){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Il codice ciclista deve essere un valore numerico.</p>
    </div>";
    exit;
}

/* Check Val codiceCiclista*/
if ($codiceCiclista <=0 ){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Il codice ciclista deve essere intero positivo.</p>
    </div>";
    exit;
}

/* Check Type codiceTappa */
if (!is_numeric($codiceTappa)){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Il codice tappa deve essere un valore numerico.</p>
    </div>";
    exit;
}

/* Check Val codiceTappa*/
if ($codiceTappa <=0 ){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Il codice tappa deve essere intero positivo.</p>
    </div>";
    exit;
}

/* Query construction */
$query = " SELECT CI.Edizione, CI.Posizione
		   FROM CICLISTA C, CLASSIFICA_INDIVIDUALE CI, SQUADRA S
		   WHERE C.CodS = S.CodS AND
				 C.CodC = CI.CodC AND
				 C.CodC = '$codiceCiclista' AND
				 CI.CodT = '$codiceTappa'";
				 
/* Query execution */
$result = mysqli_query ( $conn, $query );
if (!$result){
    die ( 'Query error: ' . mysqli_error ( $conn ) );
}

/* Check if Ciclista found */
if (mysqli_num_rows ( $result ) > 0) {
    echo "<h1>Elenco delle posizioni ottenute dal ciclista nelle varie edizioni</h1>";
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
    echo "<h1>Codice Ciclista: $codiceCiclista o Codice Tappa: $codiceTappa non trovato/i.</h1>";
}

/* Query construction */
$query = " SELECT DISTINCT C.Nome,C.Cognome,S.NomeS
		   FROM CICLISTA C, CLASSIFICA_INDIVIDUALE CI, SQUADRA S
		   WHERE C.CodS = S.CodS AND
				 C.CodC = CI.CodC AND
				 C.CodC = '$codiceCiclista' AND
				 CI.CodT = '$codiceTappa'";
				 
/* Query execution */
$result = mysqli_query ( $conn, $query );
if (!$result){
    die ( 'Query error: ' . mysqli_error ( $conn ) );
}

/* Check if Ciclista found */
if (mysqli_num_rows ( $result ) > 0) {
    echo "<h1>Informazioni</h1>";
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
    echo "<h1>Codice Ciclista: $codiceCiclista o Codice Tappa: $codiceTappa non trovato/i.</h1>";
}

?>

</body>
</html>