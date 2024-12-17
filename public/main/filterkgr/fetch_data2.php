
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







include('database_connection2.php');



   /* Get total number of records */
         $sqle = "SELECT count(nid) FROM commerical_building ";
         
         
         
                        
         

if(isset($_POST["action"]))
{
	$query = "
		SELECT * FROM commerical_building INNER JOIN non_res ON commerical_building.nid = non_res.nid  WHERE id>0
	";
	if(isset($_POST["minimum_age"], $_POST["maximum_age"]) && !empty($_POST["minimum_age"]) && !empty($_POST["maximum_age"]))
	{
		$query .= "
		 AND year_started BETWEEN '".$_POST["minimum_age"]."' AND '".$_POST["maximum_age"]."'
		";
	}
	/*if(isset($_POST["brand"]))
	{
		$brand_filter = implode("','", $_POST["brand"]);
		$query .= "
		 AND product_brand IN('".$brand_filter."')
		";
	}*/
	if(isset($_POST["type"]))
	{
		$type_filter = implode("','", $_POST["type"]);                                      
		$query .= "
		 AND type_of_businnes ='".$type_filter."'
		";
	}
	if(isset($_POST["license"]))
	{
		$license_filter = implode("','", $_POST["license"]);
		$query .= "
		 AND liscense ='".$license_filter."'
		";
	}

	if(isset($_POST["cctv"]))
	{
		$cctv_filter = implode("','", $_POST["cctv"]);
		$query .= "
		 AND cctv_avl='".$cctv_filter."'
		";
	}
	if(isset($_POST["emergency"]))
	{
		$emergency_filter = implode("','", $_POST["emergency"]);
		$query .= "
		 AND emergency_ss='".$emergency_filter."'
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
    <th>Building number </th>
	<th>Name Of Business</th>
	<th>Type Of Business </th>
    <th>Business Owner</th>
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
					<a href="../comdetails.php?id='.$row['nid'].'">'. $row['building_number'].'</a>' .'  </td>
					<td>
					<a href="../comdetails.php?id='.$row['nid'].'">'. $row['name_of_businness'].'</a>' .'  </td>
					<td>
					<a href="../comdetails.php?id='.$row['nid'].'">'. $row['type_of_businnes'].'</a>' .'  </td>
					
					<td> <a href="../comdetails.php?id='.$row['nid'].'">'. $row['name_of_business_owner'].'</a>'.'   </td>
					<td>  <a href="../comdetails.php?id='.$row['nid'].'">'. $row['phone'] .'</a>'.' </td>
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









