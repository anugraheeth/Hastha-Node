<?php

//$mobileNumber = "9605741902 , 9562272224 , 9400644868 , 9947808238 , 9446217384 , 9447697368";


session_start();


 $query= $_SESSION['query'];

//echo $query;

//SELECT phone_num from per_details WHERE   per_details.id>0 AND gender ='Male' AND per_details.income<'100000' AND job_sec ='government'
//SELECT * FROM per_details WHERE per_details.id>0 AND gender ='Male' AND per_details.income<'100000' AND job_sec ='government'







$eh=str_replace('SELECT * FROM per_details INNER JOIN res_details ON per_details.uid = res_details.uid WHERE', '', $query);

//echo $eh;


$sqlq = "SELECT phone_num FROM per_details where $eh ";

//echo $sqlq; 



if (!empty($_POST['message'])){


 
$con=mysqli_connect("localhost","elephant_abhi","Abhi@kidu();") or die("unable to connect");

mysqli_select_db($con,'elephant_cek');



$result2=mysqli_query($con,"SELECT phone_num FROM per_details where $eh");
 
 




	
	
	

	
	
	$ids= array();
	while($row2=mysqli_fetch_array($result2))  
	{
		$ids[] = $row2["phone_num"]; 
	}
$mobileNumber='' .implode(' , ', $ids ).'';



//echo $mobileNumber;

//$mobileNumber = "9605741902,9562272224";



$senderId = "PNYKGR";

$text=$_POST['message'];

$message = urlencode($text);

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
    //echo $response;
    
                    echo "<script> alert('Message sent ') </script>";
    
    		  		echo "<script> location.replace('../filterAdv.php') </script>";

    
}


}




//echo "<script>alert('$mobileNumber')</script>";?>
                        


<html lang="en">
<head>
	<title>Hastha-dhi - SMS</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

 <style>
.bu {
  display: inline-block;
  border-radius: 6px;
  background-color: #1976d2;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 16px;
  padding: 10px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  float: right;
  
  
  overflow: auto;
  white-space: nowrap;
  margin:0px auto;
  
}

.bu span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.bu span:after {
  content: '\00ab';
  position: absolute;
  opacity: 0;
  top: 0;
  left: -20px;
  transition: 0.5s;
}

.bu:hover span {
  padding-left: 25px;
}

.bu:hover span:after {
  opacity: 1;
  left: 0;
}
</style>
</head>
<body>

	<div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic js-tilt" data-tilt>
				<img src="images/img-01.png" alt="IMG">
		 <button class="bu" onclick="location.href='../../';" style="vertical-align:middle"><span>Back to Dashboard</span></button>
		 


			</div>

			<form class="contact1-form validate-form" action="index.php" method="post"  onsubmit="return confirm('Do you really want to submit the form?');">
				<span class="contact1-form-title">
					SMS Portal
					
				</span>

				<div class="wrap-input1 validate-input" data-validate = "Message is required">
					<textarea class="input1" name="message" placeholder="Message" required></textarea>
					<span class="shadow-input1"></span>
				</div>

				<div class="container-contact1-form-btn">
					<button class="contact1-form-btn" onClick ="alert" type="Submit"> 
						<span>
							Send SMS
							<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>




<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>

<!-- Global site tag (gtag.js) - Google Analytics -->

<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>


?>
