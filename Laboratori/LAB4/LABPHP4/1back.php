<?php

/* Verifico inserimento parametro "nome" */
if (!isset($_REQUEST["nome"]) || trim($_REQUEST["nome"]) == ""){
    echo '<p> ERRORE: parametro nome mancante o vuoto. </p>';
    exit;
}

/* Verifico inserimento parametro "cognome" */
if (!isset($_REQUEST["cognome"]) || trim($_REQUEST["cognome"]) == ""){
    echo '<p> ERRORE: parametro cognome mancante o vuoto. </p>';
    exit;
}

$nome = $_REQUEST["nome"];
$cognome = $_REQUEST["cognome"];

echo '<p>' . $nome . ' ' . $cognome . ' è un istruttore.</p>';


?>