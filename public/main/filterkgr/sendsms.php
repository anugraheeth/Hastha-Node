<?php

//$mobileNumber = "9605741902 , 9562272224 , 9400644868 , 9947808238 , 9446217384 , 9447697368";


session_start();


 $query= $_SESSION['query'];
$con=mysqli_connect("localhost","elephant_abhi","Abhi@kidu();") or die("unable to connect");
mysqli_select_db($con,'elephant_cek');

	$result2=mysqli_query($con,"SELECT phone_num FROM ($query) as a");  
	$ids= array();
	while($row2=mysqli_fetch_array($result2))  
	{
		$ids[] = $row2["phone_num"]; 
	}
$mobileNumber='' .implode(' , ', $ids ).'';

echo $mobileNumber;

//echo $mobileNumber;

//$mobileNumber = "9605741902,9562272224";



$senderId = "PNYKGR";

$message = urlencode(" Testing Sucess CEK !  ");

$route = 4;

//Prepare you post parameters
$postData = array(
    'mobiles' => $mobileNumber,
    'message' => $message,
    'sender' => $senderId,
    'route' => $route
);

$url="http://api.msg91.com/api/v2/sendsms";


$curl = curl_init();
curl_setopt_array($curl, array(
    CURLOPT_URL => "$url",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_CUSTOMREQUEST => "POST",
    CURLOPT_POSTFIELDS => $postData,
    CURLOPT_HTTPHEADER => array(
        "authkey: 258870ABmrRU66i5c513423",
        "content-type: multipart/form-data"
    ),
));

$response = curl_exec($curl);

$err = curl_error($curl);

curl_close($curl);

if ($err) {
    echo "cURL Error #:" . $err;
} else {
    echo $response;
}
?>
                        