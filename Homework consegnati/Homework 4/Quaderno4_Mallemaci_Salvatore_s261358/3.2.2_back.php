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
        <p>Codice tappa mancante o vuoto.</p>
    </div>";
    exit;
}

/* Verify parameter edizione */
if (!isset($_REQUEST["edizione"]) || trim($_REQUEST["edizione"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Edizione mancante o vuoto.</p>
    </div>";
    exit;
}

/* Verify parameter posizioneCiclista */
if (!isset($_REQUEST["posizioneCiclista"]) || trim($_REQUEST["posizioneCiclista"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Posizione ciclista mancante o vuoto.</p>
    </div>";
    exit;
}

$codiceCiclista  = $_REQUEST["codiceCiclista"];
$codiceTappa = $_REQUEST["codiceTappa"];
$edizione = $_REQUEST["edizione"];
$posizioneCiclista = $_REQUEST["posizioneCiclista"];

/* Establish DB connection */
$conn = @mysqli_connect ( 'localhost', 'root', '', 'CAMPIONATO_CICLISTICO' );

if (mysqli_connect_errno()) {
	echo "Failed to connect to MySQL: " . mysqli_connect_error ();
} 

/* String sanification for DB query */
$codiceCiclista =  utf8_decode( mysqli_real_escape_string($conn, $codiceCiclista)  ); 
$codiceTappa =  utf8_decode( mysqli_real_escape_string($conn, $codiceTappa)  );
$edizione =  utf8_decode( mysqli_real_escape_string($conn, $edizione)  );
$posizioneCiclista =  utf8_decode( mysqli_real_escape_string($conn, $posizioneCiclista)  );

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

/* Check Type edizione */
if (!is_numeric($edizione)){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>L'edizione deve essere un valore numerico.</p>
    </div>";
    exit;
}

/* Check Val edizione*/
if ($edizione <=0 ){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>L'edizione deve essere intero positivo.</p>
    </div>";
    exit;
}

/* Check Type posizioneCiclista */
if (!is_numeric($posizioneCiclista)){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>La posizione del ciclista deve essere un valore numerico.</p>
    </div>";
    exit;
}

/* Check Val posizioneCiclista*/
if ($posizioneCiclista <=0 ){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>a posizione del ciclista deve essere intero positivo.</p>
    </div>";
    exit;
}

/* Verifica esistenza ciclista con codice selezionato */
/* Query construction */
$query = "SELECT * 
		  FROM CICLISTA 
		  WHERE CodC=$codiceCiclista";
$result = mysqli_query ( $conn, $query );

/* Query execution */
if (mysqli_num_rows ( $result ) <= 0) {
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Il ciclista col codice selezionato è inesistente nella base dati.</p>
    </div>";
    exit;
}

/* Verifica esistenza tappa con codice selezionato */
/* Query construction */
$query = "SELECT * 
		  FROM TAPPA 
		  WHERE CodT=$codiceTappa";
$result = mysqli_query ( $conn, $query );

/* Query execution */
if (mysqli_num_rows ( $result ) <= 0) {
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>La tappa col codice selezionato è inesistente nella base dati.</p>
    </div>";
    exit;
}

/* Verifica esistenza edizione selezionata */
/* Query construction */
$query = "SELECT * 
		  FROM TAPPA 
		  WHERE Edizione=$edizione";
$result = mysqli_query ( $conn, $query );

/* Query execution */
if (mysqli_num_rows ( $result ) <= 0) {
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>L'edizione selezionata è inesistente nella base dati.</p>
    </div>";
    exit;
}

/* Verifica pre-esistenza della posizione per il ciclista nella tappa selezionata */
/* Query construction */
$query = "SELECT * 
		  FROM CLASSIFICA_INDIVIDUALE CI
		  WHERE CodC=$codiceCiclista AND
				CodT=$codiceTappa AND
				Edizione=$edizione";
$result = mysqli_query ( $conn, $query );

/* Query execution */
if (!$result){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Inserimento della posizione per il ciclista nella tappa selezionata non riuscito! ". mysqli_error ( $conn ) ." </p>
    </div>";
    exit;
} elseif (mysqli_num_rows ( $result ) > 0) {
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>della posizione per il ciclista nella tappa selezionata non riuscito in quanto già presente nel DB.</p>
    </div>";
    exit;
}

/* Inserimento della posizione per il ciclista nella tappa selezionata */
/* Query construction */
$query = " INSERT INTO CLASSIFICA_INDIVIDUALE(CodC,CodT,Edizione,Posizione)
VALUES ($codiceCiclista,$codiceTappa,$edizione,$posizioneCiclista) ";

/* Query execution */
$result = mysqli_query ( $conn, $query );
if (!$result){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Inserimento della posizione per il ciclista nella tappa selezionata non riuscito! ". mysqli_error ( $conn ) ." </p>
    </div>";
    exit;
} else {
    echo "<div class='w3-panel w3-green'>
        <h3>Congratulazioni!</h3>
        <p>Inserimento della posizione per il ciclista nella tappa selezionata riuscito.</p>
    </div>  ";
    exit;
}

?>

</body>
</html>