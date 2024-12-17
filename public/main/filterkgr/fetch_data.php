
<html>

<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

th{
	font-weight:bold;
	padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #29104E;
  color: white;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}



.dt-buttons {
  display: inline-block !important;
  margin-bottom: 15px !important;
  padding-top: 5px !important;
 
}
.dt-buttons .dt-button {
  background: #1976d2 none repeat scroll 0 0 !important;
  border-radius: 4px !important;
  color: #ffffff !important;
  margin-right: 3px !important;
  padding: 5px 15px !important;
}
.dt-buttons .dt-button:hover {
  background: #2f3d4a none repeat scroll 0 0 !important;
}

</style>

<?php
session_start();
//fetch_data.php







include('database_connection.php');



   /* Get total number of records */
         $sqle = "SELECT count(id) FROM per_details ";
         
         
         
         
         

if(isset($_POST["action"]))
{
	$query = "
		SELECT * FROM per_details INNER JOIN res_details ON per_details.uid = res_details.uid WHERE per_details.id>0
	";
	if(isset($_POST["minimum_age"], $_POST["maximum_age"]) && !empty($_POST["minimum_age"]) && !empty($_POST["maximum_age"]))
	{
		$query .= "
		 AND (DATEDIFF( SYSDATE(), `dob` )/365) BETWEEN '".$_POST["minimum_age"]."' AND '".$_POST["maximum_age"]."'
		";
	}
	/*if(isset($_POST["brand"]))
	{
		$brand_filter = implode("','", $_POST["brand"]);
		$query .= "
		 AND product_brand IN('".$brand_filter."')
		";
	}*/
	if(isset($_POST["gender"]))
	{
		$sex_filter = implode("','", $_POST["gender"]);
		$query .= "
		 AND gender ='".$sex_filter."'
		";
	}
	if(isset($_POST["head"]))
	{
		$head_filter = implode("','", $_POST["head"]);
		$query .= "
		 AND rel_fam_head ='".$head_filter."'
		";
	}

	if(isset($_POST["income_belo"]))
	{
		$income_belo_filter = implode("','", $_POST["income_belo"]);
		$query .= "
		 AND per_details.income<'".$income_belo_filter."'
		";
	}
	if(isset($_POST["income_abov"]))
	{
		$income_abov_filter = implode("','", $_POST["income_abov"]);
		$query .= "
		 AND per_details.income>'".$income_abov_filter."'
		";
	}
	if(isset($_POST["income_betw"]))
	{
		$query .= "
		 AND 100000 < per_details.income AND per_details.income < 500000
		";
	}
	if(isset($_POST["income_betw2"]))
	{
		$query .= "
		 AND 500000 < per_details.income AND per_details.income < 1000000
		";
	}
	if(isset($_POST["marital"]))
	{
		$marital_filter = implode("','", $_POST["marital"]);
		$query .= "
		 AND marital ='".$marital_filter."'
		";
	}
	if(isset($_POST["education"]))
	{
		$edu_filter = implode("','", $_POST["education"]);
		$query .= "
		 AND education ='".$edu_filter."'
		";
	}
	if(isset($_POST["sector"]))
	{
		$sector_filter = implode("','", $_POST["sector"]);
		$query .= "
		 AND job_sec ='".$sector_filter."'
		";
	}
	if(isset($_POST["blood"]))
	{
		$blood_filter = implode("','", $_POST["blood"]);
		$query .= "
		 AND blood_group ='".$blood_filter."'
		";
	}
	
	if(isset($_POST["x_ser"]))
	{
		$x_ser_filter = implode("','", $_POST["x_ser"]);
		$query .= "
		 AND ex_serv ='".$x_ser_filter."'
		";
	}

	if(isset($_POST["bp"]))
	{
		$bp_filter = implode("','", $_POST["bp"]);
		$query .= "
		 AND bp ='".$bp_filter."'
		";
	}

	if(isset($_POST["sugar"]))
	{
		$sugar_filter = implode("','", $_POST["sugar"]);
		$query .= "
		 AND sugar ='".$sugar_filter."'
		";
	}

	if(isset($_POST["bedridden"]))
	{
		$bedridden_filter = implode("','", $_POST["bedridden"]);
		$query .= "
		 AND bedridden ='".$bedridden_filter."'
		";
	}

	if(isset($_POST["cancer"]))
	{
		$cancer_filter = implode("','", $_POST["cancer"]);
		$query .= "
		 AND cancer ='".$cancer_filter."'
		";
	}

	if(isset($_POST["pension"]))
	{
		$pension_filter = implode("','", $_POST["pension"]);
		$query .= "
		 AND pension_avl ='".$pension_filter."'
		";
	}


	$statement = $connect->prepare($query);
	$statement->execute();
	$result = $statement->fetchAll();
	$total_row = $statement->rowCount();
	$output = '';
	
	$_SESSION['query'] = $query;
	
	

	?>

	
	<div class="card-body">	<form action="e/index.php">
		<input type="submit" value="Send SMS" class="dt-buttons" />
	</form>
	
<div class="card-body">
	<table id="example23" class="display nowrap table table-hover table-striped table-bordered " cellspacing="0" width="100%" > 
<thead>
	<tr>
    <th>Name </th>
	<th>House Name</th>
	<th>Date Of Birth</th>
    <th>Gender</th>
    <th>Phone</th>
    </tr>
    </thead>
    <tbody>
  <?php 
	if($total_row > 0)
	{
		foreach($result as $row)
		{$timestamp = strtotime($row['dob']);
			$output .= '
			
					<tr>
					<td>
					<a href="../details.php?id='.$row['uid'].'">'. $row['f_name'] .'</a>'.'  </td>
					<td>
					<a href="../details.php?id='.$row['uid'].'">'. $row['house_name'] .'</a>'.'  </td>
					<td>
					<a href="../details.php?id='.$row['uid'].'">'. date('d/m/Y', $timestamp).'</a>' .'  </td>
					
					<td> <a href="../details.php?id='.$row['uid'].'">'. $row['gender'].'</a>'.'   </td>
					<td>  <a href="../details.php?id='.$row['uid'].'">'. $row['phone_num'] .'</a>'.' </td>
					</tr>
				
			';
		}
	}
	else
	{
		$output = '<h3>No Data Found</h3>';
	}
	echo $output;?>
	</tbody>

	</table>
	
		<form action="e/index.php">
		<input type="submit" value="Send SMS" class="button button1" />
	</form>
	</div>
	


<?php } ?>




</body>
</html>









