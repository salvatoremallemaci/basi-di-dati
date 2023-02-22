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

/* Verify parameter nomeCiclista */
if (!isset($_REQUEST["nomeCiclista"]) || trim($_REQUEST["nomeCiclista"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Nome ciclista mancante o vuoto.</p>
    </div>";
    exit;
}

/* Verify parameter cognomeCiclista */
if (!isset($_REQUEST["cognomeCiclista"]) || trim($_REQUEST["cognomeCiclista"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Cognome ciclista mancante o vuoto.</p>
    </div>";
    exit;
}

/* Verify parameter nazionalitaCiclista */
if (!isset($_REQUEST["nazionalitaCiclista"]) || trim($_REQUEST["nazionalitaCiclista"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Nazionalita ciclista mancante o vuoto.</p>
    </div>";
    exit;
}

/* Verify parameter codiceSquadra */
if (!isset($_REQUEST["codiceSquadra"]) || trim($_REQUEST["codiceSquadra"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Codice squadra mancante o vuoto.</p>
    </div>";
    exit;
}

/* Verify parameter annoDiNascitaCiclista */
if (!isset($_REQUEST["annoDiNascitaCiclista"]) || trim($_REQUEST["annoDiNascitaCiclista"]) == ""){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Anno di nascita ciclista mancante o vuoto.</p>
    </div>";
    exit;
}

$codiceCiclista  = $_REQUEST["codiceCiclista"];
$nomeCiclista = $_REQUEST["nomeCiclista"];
$cognomeCiclista = $_REQUEST["cognomeCiclista"];
$nazionalitaCiclista = $_REQUEST["nazionalitaCiclista"];
$codiceSquadra = $_REQUEST["codiceSquadra"];
$annoDiNascitaCiclista = $_REQUEST["annoDiNascitaCiclista"];

/* Establish DB connection */
$conn = @mysqli_connect ( 'localhost', 'root', '', 'CAMPIONATO_CICLISTICO' );

if (mysqli_connect_errno()) {
	echo "Failed to connect to MySQL: " . mysqli_connect_error ();
} 

/* String sanification for DB query */
$codiceCiclista =  utf8_decode( mysqli_real_escape_string($conn, $codiceCiclista)  ); 
$nomeCiclista =  utf8_decode( mysqli_real_escape_string($conn, $nomeCiclista)  );
$cognomeCiclista =  utf8_decode( mysqli_real_escape_string($conn, $cognomeCiclista)  );
$nazionalitaCiclista =  utf8_decode( mysqli_real_escape_string($conn, $nazionalitaCiclista)  );
$codiceSquadra =  utf8_decode( mysqli_real_escape_string($conn, $codiceSquadra)  );
$annoDiNascitaCiclista =  utf8_decode( mysqli_real_escape_string($conn, $annoDiNascitaCiclista)  );

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

/* Check Type codiceSquadra */
if (!is_numeric($codiceSquadra)){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Il codice squadra deve essere un valore numerico.</p>
    </div>";
    exit;
}

/* Check Val codiceSquadra*/
if ($codiceSquadra <=0 ){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Il codice squadra deve essere intero positivo.</p>
    </div>";
    exit;
}

/* Check Type annoDiNascitaCiclista */
if (!is_numeric($annoDiNascitaCiclista)){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>L'anno di nascita del ciclista deve essere un valore numerico.</p>
    </div>";
    exit;
}

/* Check Val annoDiNascitaCiclista*/
if ($annoDiNascitaCiclista <=0 ){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>L'anno di nascita del ciclista deve essere intero positivo.</p>
    </div>";
    exit;
}
/* Verifica esistenza squadra per la quale si richiede l'inserimento nella base dati */
/* Query construction */
$query = "SELECT * 
		  FROM SQUADRA 
		  WHERE CodS=$codiceSquadra";
$result = mysqli_query ( $conn, $query );

/* Query execution */
if (mysqli_num_rows ( $result ) <= 0) {
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>La squadra per la quale si richiede l'inserimento è inesistente nella base dati.</p>
    </div>";
    exit;
}

/* Verifica pre-esistenza del ciclista */
/* Query construction */
$query = "SELECT * 
		  FROM CICLISTA 
		  WHERE CodC=$codiceCiclista";
$result = mysqli_query ( $conn, $query );

/* Query execution */
if (!$result){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Inserimento del ciclista con codice $codiceCiclista non riuscito! ". mysqli_error ( $conn ) ." </p>
    </div>";
    exit;
} elseif (mysqli_num_rows ( $result ) > 0) {
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Inserimento del ciclista con codice $codiceCiclista non riuscito in quanto già presente nel DB.</p>
    </div>";
    exit;
}
    
/* Inserimento del ciclista in base dati */
/* Query construction */
$query = " INSERT INTO CICLISTA(CodC,Nome,Cognome,Nazionalita,CodS,AnnoNascita)
VALUES ('$codiceCiclista','$nomeCiclista','$cognomeCiclista','$nazionalitaCiclista',$codiceSquadra,'$annoDiNascitaCiclista') ";

/* Query execution */
$result = mysqli_query ( $conn, $query );
if (!$result){
    echo "<div class='w3-panel w3-red'>
        <h3>Errore!</h3>
        <p>Inserimento del ciclista con codice $codiceCiclista non riuscito! ". mysqli_error ( $conn ) ." </p>
    </div>";
    exit;
} else {
    echo "<div class='w3-panel w3-green'>
        <h3>Congratulazioni!</h3>
        <p>Inserimento del ciclista con codice $codiceCiclista riuscito.</p>
    </div>  ";
    exit;
}


?>

</body>
</html>