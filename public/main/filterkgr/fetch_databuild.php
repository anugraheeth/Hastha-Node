
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
		SELECT * FROM res_details  INNER JOIN  res_building_details ON  res_details.uid =  res_building_details.uid WHERE res_build_id>0
	";
	if(isset($_POST["minimum_year"], $_POST["maximum_year"]) && !empty($_POST["minimum_year"]) && !empty($_POST["maximum_year"]))
	{
		$query .= "
		 AND built_year BETWEEN '".$_POST["minimum_year"]."' AND '".$_POST["maximum_year"]."'
		";
	}
	/*if(isset($_POST["brand"]))
	{
		$brand_filter = implode("','", $_POST["brand"]);
		$query .= "
		 AND product_brand IN('".$brand_filter."')
		";
	}*/
	if(isset($_POST["roof"]))
	{
		$roof_filter = implode("','", $_POST["roof"]);
		$query .= "
		 AND roof_type ='".$roof_filter."'
		";
	}
	if(isset($_POST["wall"]))
	{
		$wall_filter = implode("','", $_POST["wall"]);
		$query .= "
		 AND wall_type ='".$wall_filter."'
		";
	}

	if(isset($_POST["basement"]))
	{
		$basement_filter = implode("','", $_POST["basement"]);
		$query .= "
		 AND basement='".$basement_filter."'
		";
	}
	if(isset($_POST["front"]))
	{
		$front_filter = implode("','", $_POST["front"]);
		$query .= "
		 AND frontage='".$front_filter."'
		";
	}
	
	if(isset($_POST["floors"]))
	{
		$floors_filter = implode("','", $_POST["floors"]);
		$query .= "
		 AND marital ='".$floors_filter."'
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
    <th>Name Of Family Head</th>
	<th>House Name</th>
	<th>House Number</th>
    <th>Phone</th>
    </tr>
    </thead>
    <tbody>
  <?php 
	if($total_row > 0)
	{
		foreach($result as $row)
		{
			$output .= '
			
					<tr>
					<td>
					'. $row['name_of_family_head'] .'  </td>
					<td>
					'. $row['house_name'] .'  </td>
					<td>
					'. $row['house_number'] .'  </td>
				
					<td>  '. $row['contac_number_familyhead'] .' </td>
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









