<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
<head>
	<title> Form 3.1 </title>
    <style type="text/css">
    	td {
    		color:black;
    	}
    </style>
</head>
<body>

	<h1>Posizione ciclista in tappa</h1>
	<form action="3.1_back.php">
	
	<table>
	<tr>
	<td> Codice Ciclista: </td>
	</tr>
	<tr>
	<td>
	<select name="codiceCiclista" class="w3-select">
	<option value=''>Seleziona codice Ciclista</option>
    <?php

        /* Establish DB connection */
        $conn = @mysqli_connect ( 'localhost', 'root', '', 'campionato_ciclistico' );

        if (mysqli_connect_errno()) {
            echo "Failed to connect to MySQL: " . mysqli_connect_error ();
        } 

        /* Query construction */
        $query = "SELECT CodC 
				  FROM Ciclista";
        
        /* Query execution */
        $result = mysqli_query ( $conn, $query );
        if (!$result){
            die ( 'Query error: ' . mysqli_error ( $conn ) );
        }

        /* Check if course found */
        if (mysqli_num_rows ( $result ) > 0) {
            while($row = mysqli_fetch_array($result)) {
                $codiceCiclista = $row["CodC"];
                echo "<option value='$codiceCiclista'>$codiceCiclista</option>";
            }
        }

    ?>
    </select>
	</td>
	</tr>
	
	
	<tr>
	<td> Codice Tappa: </td>
	</tr>
	<tr>
	<td>
    <input type="text" name="codiceTappa" placeholder="1">
	</td>
	</tr>
	</table>
	
	<input type="submit" value="Inserisci">
</form>

</body>
</html>