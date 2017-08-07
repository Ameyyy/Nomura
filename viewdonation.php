<html>
<body>
					<h1>View Donations</h1>
					<table width='100%' border='3' style="font-size:120%">
						<th style="text-align:center">Donor</th>
						<th style="text-align:center">Amount</th>
						<th style="text-align:center">Mode</th>
						<th style="text-align:center">Time Stamp</th>
						
					<?php
					require ("connect.php");
					$ngo="abc"; //query add email
					$email="abc@gmail.com";
					$sql = mysqli_query($conn,"Select * from donation where ngo_email='$email'");
					while($row = mysqli_fetch_array($sql)){
					?>
					<tr>
				
						<td><?php echo $row['donor']?></td>
						<td><?php echo $row['amount']?></td>
						<td><?php echo $row['mode']?></td>
						<td><?php echo $row['donation_ts']?></td>

					</tr>
					<?php 
					}
					?>
					</table>
		</body>
		</html>