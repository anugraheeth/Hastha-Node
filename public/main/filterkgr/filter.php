<?php 

//index.php

include('database_connection.php');

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">


    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="mega-dropdown-master/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="mega-dropdown-master/css/style.css"> <!-- Resource style -->
	<script src="mega-dropdown-master/js/modernizr.js"></script> <!-- Modernizr -->
  	


    <title>DK-10 | College Of Engineering Kidangoor </title>

    <script src="mega-dropdown-master/js/jquery-2.1.1.js"></script>
    <script src="mega-dropdown-master/js/jquery.menu-aim.js"></script> <!-- menu aim -->
    <script src="mega-dropdown-master/js/main.js"></script> <!-- Resource jQuery -->

    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href = "css/jquery-ui.css" rel = "stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Page Content -->
    <div class="container">
        <div class="row">
         <br />
         <h2>DK - 10 | Filter System </h2> 
         <br />
         <!---->
            <div class="col-md-2">                    
                <div class="list-group">
                <h3>Age</h3>
                    <input type="hidden" id="hidden_minimum_age" value="0" />
                    <input type="hidden" id="hidden_maximum_age" value="100" />
                    <p id="age_show">1 - 100</p>
                    <div id="age_range"></div>
                </div>    
                

                <div class="cd-dropdown-wrapper">
			        <a class="cd-dropdown-trigger" href="#0">Filter</a>
			            <nav class="cd-dropdown">
				        <h2>Title</h2>
				        <a href="#0" class="cd-close">Close</a>
				        <ul class="cd-dropdown-content">
					
					<li class="has-children">
						<a href="#">Sex</a>

						<ul class="cd-secondary-dropdown is-hidden">
						<?php

                        $query = "
                        SELECT DISTINCT(gender) FROM per_details  
                        ";
                        $statement = $connect->prepare($query);
                        $statement->execute();
                        $result = $statement->fetchAll();
                        foreach($result as $row)
                        {
                        ?>
                        <div class="list-group-item checkbox">
                        <label><input type="checkbox" class="common_selector gender" value="<?php echo $row['gender']; ?>" > <?php echo $row['gender']; ?> </label>
                        </div>
                        <?php    
                        }
                        ?>
						</ul> <!-- .cd-secondary-dropdown -->
				    </li> <!-- .has-children -->

					<li class="has-children">
						<a href="#">Income</a>

						<ul class="cd-dropdown-gallery is-hidden">
						<div class="list-group-item checkbox">
                        <label><input type="checkbox" class="common_selector income_belo" value="100000"  > below 100000</label>  
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector income_betw"   > between 100000 and 500000</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector income_abov" value="500000"  > above 500000</label> 
                        </div>	


						</ul> <!-- .cd-dropdown-gallery -->
					</li> <!-- .has-children -->

					<li class="has-children">
						<a href="#">Job Sector</a>
						<ul class="cd-dropdown-icons is-hidden">
                        
                        <div class="list-group-item checkbox">
                        <label><input type="checkbox" class="common_selector sector" value="government"  > government</label>  
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector sector" value="private sector"  > private sector</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector sector" value="anything else"  > anything else</label> 
                        </div>


						</ul> <!-- .cd-dropdown-icons -->
					</li> <!-- .has-children -->

					<li class="has-children">
						<a href="#">Marital</a>
						<ul class="cd-dropdown-icons is-hidden">
                        
                        <div class="list-group-item checkbox">
                        <label><input type="checkbox" class="common_selector marital" value="single"  > single</label>  
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector marital" value="married"  > married</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector marital" value="widow"  > widow</label> 
                        </div>


						</ul> <!-- .cd-dropdown-icons -->
					</li> <!-- .has-children -->

					<li class="has-children">
						<a href="#">Education</a>
						<ul class="cd-dropdown-icons is-hidden">

                        <div class="list-group-item checkbox">
                        <label><input type="checkbox" class="common_selector education" value="SSLC"  > SSLC</label>  
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector education" value="plus two"  > plus two</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector education" value="VHSE"  > VHSE</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector education" value="ITI"  > ITI</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector education" value="polytechnic"  > polytechnic</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector education" value="UG degree"  > UG degree</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector education" value="PG Degree"  > PG Degree</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector education" value="PHD"  > PHD</label> 
                        </div>	


						</ul> <!-- .cd-dropdown-icons -->
					</li> <!-- .has-children -->

					<li class="has-children">
						<a href="#">Blood group</a>
						<ul class="cd-dropdown-icons is-hidden">

                        <div class="list-group-item checkbox">
                        <label><input type="checkbox" class="common_selector blood" value="A+"  > A+</label>  
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector blood" value="A-"  > A-</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector blood" value="B+"  > B+</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector blood" value="B-"  > B-</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector blood" value="O+"  > O+</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector blood" value="O-"  > O-</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector blood" value="AB+"  > AB+</label> 
                        </div>
                        <div class="list-group-item checkbox">   <label><input type="checkbox" class="common_selector blood" value="AB-"  > AB-</label> 
                        </div>		


						</ul> <!-- .cd-dropdown-icons -->
					</li> <!-- .has-children -->

					<li class="has-children">
						<a href="#">Services</a>
						<ul class="cd-dropdown-icons is-hidden">
							


						</ul> <!-- .cd-dropdown-icons -->
					</li> <!-- .has-children -->

					<li class="has-children">
						<a href="#">Services</a>
						<ul class="cd-dropdown-icons is-hidden">
							


						</ul> <!-- .cd-dropdown-icons -->
					</li> <!-- .has-children -->

					<li class="has-children">
						<a href="#">Services</a>
						<ul class="cd-dropdown-icons is-hidden">
							


						</ul> <!-- .cd-dropdown-icons -->
					</li> <!-- .has-children -->

				
				    </ul> <!-- .cd-dropdown-content -->
			        </nav> <!-- .cd-dropdown -->
		        </div> <!-- .cd-dropdown-wrapper -->
               
               
                
            </div>
            
            <input type='button' value="clear" onClick="window.location.reload()"  />

            <div class="col-md-10">
             <br />
                <div class="row filter_data">

                </div>
            </div>

              
        </div>
    
    </div>
<style>
#loading
{
 text-align:center; 
 background: url('loader.gif') no-repeat center; 
 height: 150px;
}
</style>

<script>
$(document).ready(function(){

    filter_data();

    function filter_data()
    {
        $('.filter_data').html('<div id="loading" style="" ></div>');
        var action = 'fetch_data';
        var minimum_age = $('#hidden_minimum_age').val();
        var maximum_age = $('#hidden_maximum_age').val();
        var brand = get_filter('brand');
        var gender = get_filter('gender');
        var income_belo = get_filter('income_belo');
        var income_betw = get_filter('income_betw');
        var income_abov = get_filter('income_abov');
        var marital = get_filter('marital');
        var education = get_filter('education');
        var sector = get_filter('sector');
        var blood = get_filter('blood');
        $.ajax({
            url:"fetch_data.php",
            method:"POST",
            data:{action:action, minimum_age:minimum_age, maximum_age:maximum_age, brand:brand, gender:gender, income_belo:income_belo, income_betw:income_betw, income_abov:income_abov, marital:marital, education:education, sector:sector,blood:blood},
            success:function(data){
                $('.filter_data').html(data);
            }
        });
    }

    function get_filter(class_name)
    {
        var filter = [];
        $('.'+class_name+':checked').each(function(){
            filter.push($(this).val());
        });
        return filter;
    }

    $('.common_selector').click(function(){
        filter_data();
    });

    $('#age_range').slider({
        range:true,
        min:1,
        max:110,
        values:[1, 110],
        step:1,
        stop:function(event, ui)
        {
            $('#age_show').html(ui.values[0] + ' - ' + ui.values[1]);
            $('#hidden_minimum_age').val(ui.values[0]);
            $('#hidden_maximum_age').val(ui.values[1]);
            filter_data();
        }
    });

});

function uncheckAll() 
    {
        $("input[type='checkbox']:checked").prop("checked", false)
    }
    $(':button').on('click', uncheckAll)
</script>

</body>

</html>