<?php
	require("connect.php");
	
$ngo2 = "Swatch";


$sql1 = "CREATE TABLE "."$ngo2"." ( t_id INT NOT NULL AUTO_INCREMENT , amount_received INT NULL , amount_spent INT NULL , total_amount INT NOT NULL , cause VARCHAR(100) NOT NULL , date DATE NOT NULL , PRIMARY KEY (t_id))";

	if ($conn->query($sql1) === TRUE) {
		 echo "Table successful";
} else {
    echo "unsuccessful";
}

?>
