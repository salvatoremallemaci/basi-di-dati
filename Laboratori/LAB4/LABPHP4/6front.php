<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
	<title>Form 6</title>
    <style type="text/css">
    	td {
    		color:black;
    	}
    </style>
</head>

<body>
	<h1>Inserisci Programmazione</h1>
	<form action="6back.php">	
    
	<table>
	<tr>
	<td> Codice istruttore: </td>
	</tr>
	<tr>
	<td>
	<select name="codiceIstruttore" class="w3-select">
	<option value=''>Seleziona istruttore</option>
    <?php

        /* Establish DB connection */
        $conn = @mysqli_connect ( 'localhost', 'root', '', 'palestra' );

        if (mysqli_connect_errno()) {
            echo "Failed to connect to MySQL: " . mysqli_connect_error ();
        } 

        /* Query construction */
        $query = "SELECT CodFisc 
				  FROM ISTRUTTORE";
        
        /* Query execution */
        $result = mysqli_query ( $conn, $query );
        if (!$result){
            die ( 'Query error: ' . mysqli_error ( $conn ) );
        }

        /* Check if course found */
        if (mysqli_num_rows ( $result ) > 0) {
            while($row = mysqli_fetch_array($result)) {
                $codiceIstruttore = $row["CodFisc"];
                echo "<option value='$codiceIstruttore'>$codiceIstruttore</option>";
            }
        }

    ?>
    </select>
	</td>
	</tr>
	</table> 
	
	<table>
	<tr>
	<td> Codice corso: </td>
	</tr>
	<tr>
	<td>
	<select name="codiceCorso" class="w3-select">
	<option value=''>Seleziona corso</option>
    <?php

        /* Establish DB connection */
        $conn = @mysqli_connect ( 'localhost', 'root', '', 'palestra' );

        if (mysqli_connect_errno()) {
            echo "Failed to connect to MySQL: " . mysqli_connect_error ();
        } 

        /* Query construction */
        $query = "SELECT CodC FROM CORSI";
        
        /* Query execution */
        $result = mysqli_query ( $conn, $query );
        if (!$result){
            die ( 'Query error: ' . mysqli_error ( $conn ) );
        }

        /* Check if course found */
        if (mysqli_num_rows ( $result ) > 0) {
            while($row = mysqli_fetch_array($result)) {
                $codiceCorso = $row["CodC"];
                echo "<option value='$codiceCorso'>$codiceCorso</option>";
            }
        }

    ?>
    </select>
	</td>
	</tr>
	</table> 
	
	<table>
    <tr>
	<td> Giorno: </td>
	</tr>
	<tr>
	<td>
	<select name="giorno">
		<option value=''>Seleziona giorno</option>
		<option value='Lunedi'>Lunedi</option>
        <option value='Martedi'>Martedi</option>
        <option value='Mercoledi'>Mercoledi</option>
        <option value='Giovedi'>Giovedi</option>
		<option value='Venerdi'>Venerdi</option>
        <option value='Sabato'>Sabato</option>
        <option value='Domenica'>Domenica</option>
	</select>
	</td>
	</tr>
	</table> 

	<table>
	<tr>
	<td> Ora di inizio: </td>	
	<td>
    <input type="time" name="tempoInizio">
	</td>
	</tr>
	</table>
	
	<table>
	<tr>
	<td> Durata: </td>	
	<td>
    <input type="number" name="durata" min="1">
	</td>
	</tr>
	</table> 
	
	<table>
	<tr>
	<td> Sala: </td>	
	<td>
    <input type="text" name="sala">
	</td>
	</tr>
	
	</table> 

    <input type="submit" value="Inserisci">
</form> 


</body>
</html>
