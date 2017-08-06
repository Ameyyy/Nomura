
<?php
if(isset($_POST['submit'])){
//to run PHP script on submit
	$arr=$_POST['check_list'];
if(!empty($_POST['check_list'])){
// Loop to store and display values of individual checked checkbox.
echo implode(", ",$arr);
}
}
?>
