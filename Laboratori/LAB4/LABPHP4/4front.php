<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
<head>
	<title>Form 4</title>
    <style type="text/css">
    	td {
    		color:black;
    	}
    </style>
</head>

<body>
	<h1> Ricerca </h1>
	<form action="4back.php" method="get">
	
	<table>
	
	<tr>
	<td> Cognome Istruttore: </td>
	<td>
	<select name="cognome">
	<option value=''>Seleziona istruttore</option>
	<?php

        /* Establish DB connection */
        $conn = @mysqli_connect ( 'localhost', 'root', '', 'palestra' );

        if (mysqli_connect_errno()) {
            echo "Failed to connect to MySQL: " . mysqli_connect_error ();
        } 

        /* Query construction */
        $query = "SELECT cognome
				  FROM Istruttore";
        
        /* Query execution */
        $result = mysqli_query ( $conn, $query );
        if (!$result){
            die ( 'Query error: ' . mysqli_error ( $conn ) );
        }

        /* Check if course found */
        if (mysqli_num_rows ( $result ) > 0) {
            while($row = mysqli_fetch_array($result)) {
                $cognome = $row["cognome"];
                echo "<option value='$cognome'>$cognome</option>";
            }
        }

    ?>
	</select>
	</td>
	</tr>
	
	<tr>
	<td> Giorno: </td>
	<td>
	<select name="giorno">
		<option value=''>Seleziona giorno</option>
		<option value='lunedi'>Lunedi</option>
        <option value='martedi'>Martedi</option>
        <option value='mercoledi'>Mercoledi</option>
        <option value='giovedi'>Giovedi</option>
		<option value='giovedi'>Venerdi</option>
        <option value='sabato'>Sabato</option>
        <option value='domenica'>Domenica</option>
	</select>
	</td>
	</tr>
	
	</table>
	
	<input type="submit" value="Cerca">
	
	</form>
</body>

</html>