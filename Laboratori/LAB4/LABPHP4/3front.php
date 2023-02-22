<html>
<head>
	<title>Form 3</title>
    <style type="text/css">
    	td {
    		color:black;
    	}
    </style>
</head>

<body>

<h1> Ricerca corso </h1>
<form action="3back.php" method="get">
	<td> Ricerca corso: </td>
	<select id="codiceCorso" name="codiceCorso" class="w3-select">
 
	<?php

        /* Establish DB connection */
        $conn = @mysqli_connect ( 'localhost', 'root', '', 'palestra' );

        if (mysqli_connect_errno()) {
            echo "Failed to connect to MySQL: " . mysqli_connect_error ();
        } 

        /* Query construction */
        $query = "SELECT CodC
				  FROM Corsi";
        
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

<input type="submit" value="Cerca">

</form>

</body>
</html>