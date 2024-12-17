<?php 

session_start();
include('fetch_data.php');

 $query= $_SESSION['query'];
$con=mysqli_connect("localhost","elephant_abhi","Abhi@kidu();") or die("unable to connect");
mysqli_select_db($con,'elephant_cek');

	$result2=mysqli_query($con,"SELECT phone_num FROM ($query) as a");  
	$ids= array();
	while($row2=mysqli_fetch_array($result2))  
	{
		$ids[] = $row2["phone_num"]; 
	}
	echo implode(',', $ids );

?>