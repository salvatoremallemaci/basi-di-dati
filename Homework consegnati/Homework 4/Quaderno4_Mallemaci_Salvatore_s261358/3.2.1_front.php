<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
<head>
	<title> Form 3.2.1 </title>
    <style type="text/css">
    	td {
    		color:black;
    	}
    </style>
</head>
<body>
		
	<h1>Inserisci ciclista</h1>
	<form action="3.2.1_back.php">
	
	<table>
	<tr>
	<td> Codice Ciclista: </td>
	</tr>
	<tr>
	<td>
    <input type="text" name="codiceCiclista" placeholder="e.g. 5">
	</td>
	</tr>
	
	
	
	<tr>
	<td> Nome Ciclista: </td>
	</tr>
	<tr>
	<td>
    <input type="text" name="nomeCiclista" placeholder="e.g. Mario">
	</td>
	</tr>
	
	
	
	<tr>
	<td> Cognome Ciclista: </td>
	</tr>
	<tr>
	<td>
    <input type="text" name="cognomeCiclista" placeholder="e.g. Loreni">
	</td>
	</tr>
	
	
	
	<tr>
	<td> Nazionalita Ciclista: </td>
	</tr>
	<tr>
	<td>
    <input type="text" name="nazionalitaCiclista" placeholder="e.g. Italiana">
	</td>
	</tr>
	
	
	
	<tr>
	<td> Codice Squadra: </td>
	</tr>
	<tr>
	<td>
	<select name="codiceSquadra" class="w3-select">
	<option value=''>Seleziona una Squadra</option>
    <?php

        /* Establish DB connection */
        $conn = @mysqli_connect ( 'localhost', 'root', '', 'campionato_ciclistico' );

        if (mysqli_connect_errno()) {
            echo "Failed to connect to MySQL: " . mysqli_connect_error ();
        } 

        /* Query construction */
        $query = "SELECT DISTINCT CodS 
				  FROM Ciclista";
        
        /* Query execution */
        $result = mysqli_query ( $conn, $query );
        if (!$result){
            die ( 'Query error: ' . mysqli_error ( $conn ) );
        }

        /* Check if course found */
        if (mysqli_num_rows ( $result ) > 0) {
            while($row = mysqli_fetch_array($result)) {
                $codiceSquadra = $row["CodS"];
                echo "<option value='$codiceSquadra'>$codiceSquadra</option>";
            }
        }

    ?>
    </select>
	</td>
	</tr>
	
	
	
	<tr>
	<td> Anno di Nascita: </td>
	</tr>
	<tr>
	<td>
    <input type="text" name="annoDiNascitaCiclista" placeholder="e.g. 1980">
	</td>
	</tr>
	</table>
	
	<input type="submit" value="Inserisci">
	
	</form>

</body>
</html>