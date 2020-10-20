<?php
	/* Database connection settings */
	$host = 'localhost';
	$user = 'root';
	$pass = '';
	$db = 'anciencci';
	$mysqli = new mysqli($host,$user,$pass,$db) or die($mysqli->error);
//__________________________________________________________________
	//Requêtes avec première table : caracteristiques
//------------------------------------------------------------------
	$data1 = '';
	$data2 = '';


	$sql = "SELECT DISTINCT sexe,COUNT(sexe) AS effectif from `caracteristiques` GROUP BY sexe";

    $result = mysqli_query($mysqli, $sql);

	//loop through the returned data
	while ($row = mysqli_fetch_array($result)) {

		$data1 = $data1 . '"'. $row['sexe'].'",';
		$data2 = $data2 . '"'. $row['effectif'] .'",';
	}

	$data1 = trim($data1,",");
	$data2 = trim($data2,",");

//-----------------------------------------------------------------------

	$data3 = '';
	$data4 = '';

	$sql1 = "SELECT DISTINCT filiere_origine,COUNT(filiere_origine) AS effectif from `caracteristiques` GROUP BY filiere_origine";

    $result1 = mysqli_query($mysqli, $sql1);

	//loop through the returned data
	while ($row1 = mysqli_fetch_array($result1)) {

		$data3 = $data3 . '"'. $row1['filiere_origine'].'",';
		$data4 = $data4 . '"'. $row1['effectif'] .'",';
	}

	$data3 = trim($data3,",");
	$data4 = trim($data4,",");

//-----------------------------------------------------------------------------
	$data5 = '';
	$data6 = '';

	$sql2 = "SELECT DISTINCT bac_obtenu,COUNT(bac_obtenu) AS effectif from `caracteristiques` GROUP BY bac_obtenu";

    $result2 = mysqli_query($mysqli, $sql2);

	//loop through the returned data
	while ($row2 = mysqli_fetch_array($result2)) {

		$data5 = $data5 . '"'. $row2['bac_obtenu'].'",';
		$data6 = $data6 . '"'. $row2['effectif'] .'",';
	}

	$data5 = trim($data5,",");
	$data6 = trim($data6,",");

//----------------------------------------------------------------------------
	$data7 = '';
	$data8 = '';

	$sql3 = "SELECT DISTINCT regime_inscription,COUNT(regime_inscription) AS effectif from `caracteristiques` GROUP BY regime_inscription";

    $result3 = mysqli_query($mysqli, $sql3);

	//loop through the returned data
	while ($row3 = mysqli_fetch_array($result3)) {

		$data7 = $data7 . '"'. $row3['regime_inscription'].'",';
		$data8 = $data8 . '"'. $row3['effectif'] .'",';
	}

	$data7 = trim($data7,",");
	$data8 = trim($data8,",");
//_____________________________________________________________________
	//Requêtes avec 2e table : situation
//---------------------------------------------------------------------

	$data9 = '';
	$data10 = '';

	$sql4 = "SELECT DISTINCT statut,COUNT(statut) AS effectif from `situation` GROUP BY statut";

    $result4 = mysqli_query($mysqli, $sql4);

	//loop through the returned data
	while ($row4 = mysqli_fetch_array($result4)) {

		$data9 = $data9 . '"'. $row4['statut'].'",';
		$data10 = $data10 . '"'. $row4['effectif'] .'",';
	}

	$data9 = trim($data9,",");
	$data10 = trim($data10,",");

//---------------------------------------------------------------------

	$data11 = '';
	$data12 = '';

	$sql5 = "SELECT DISTINCT taux_insertion,COUNT(taux_insertion) AS effectif from `situation` GROUP BY taux_insertion";

    $result5 = mysqli_query($mysqli, $sql5);

	//loop through the returned data
	while ($row5 = mysqli_fetch_array($result5)) {

		$data11 = $data11 . '"'. $row5['taux_insertion'].'",';
		$data12 = $data12 . '"'. $row5['effectif'] .'",';
	}

	$data11 = trim($data11,",");
	$data12 = trim($data12,",");
//---------------------------------------------------------------------

	$data13 = '';
	$data14 = '';

	$sql6 = "SELECT DISTINCT intitule_emploi,COUNT(intitule_emploi) AS effectif from `situation` GROUP BY intitule_emploi";

    $result6 = mysqli_query($mysqli, $sql6);

	//loop through the returned data
	while ($row6 = mysqli_fetch_array($result6)) {

		$data13 = $data13 . '"'. $row6['intitule_emploi'].'",';
		$data14 = $data14 . '"'. $row6['effectif'] .'",';
	}

	$data13 = trim($data13,",");
	$data14 = trim($data14,",");	

//---------------------------------------------------------------------

	$data15 = '';
	$data16 = '';

	$sql7 = "SELECT DISTINCT revenu_net,COUNT(revenu_net) AS effectif from `situation` GROUP BY revenu_net";

    $result7 = mysqli_query($mysqli, $sql7);

	//loop through the returned data
	while ($row7 = mysqli_fetch_array($result7)) {

		$data15 = $data15 . '"'. $row7['revenu_net'].'",';
		$data16 = $data16 . '"'. $row7['effectif'] .'",';
	}

	$data15 = trim($data15,",");
	$data16 = trim($data16,",");

//---------------------------------------------------------------------

	$data17 = '';
	$data18 = '';

	$sql8 = "SELECT DISTINCT type_employeur,COUNT(type_employeur) AS effectif from `situation` GROUP BY type_employeur";

    $result8 = mysqli_query($mysqli, $sql8);

	//loop through the returned data
	while ($row8 = mysqli_fetch_array($result8)) {

		$data17 = $data17 . '"'. $row8['type_employeur'].'",';
		$data18 = $data18 . '"'. $row8['effectif'] .'",';
	}

	$data17 = trim($data17,",");
	$data18 = trim($data18,",");
?>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"></script>
	<title>Statistiques</title>

	<style type="text/css">			
			body{
				font-family: Arial;
			    margin-left: 350px;
			    margin-right: 350px;
			    padding: 0;
			    color: white;
			    text-align: center;
			    background: #fff;
				}

			.container {
				color: white;
				background: #555652;
				border: #555652 1px solid;
				padding: 10px;
			}
			.intro {
				color: black;
				text-align: left;
				margin-left: -330px;
				font-size: large;
				margin-bottom: 50px;
				margin-top: 50px;
			}
		</style>
	</head>

	<body >
<div class="intro">
		<h2 style="text-align:center;text-decoration: underline; ">Que sont devenus nos jeunes diplômés et d'où viennent-ils ? Voici quelques données sur la promotion 2019/2020</h2>
</div>

		<div class="container" style="width: 100%;margin-top: 20px;">	
	    	<h1>Répartition homme/femme</h1>       
			<canvas id="chart" style="width: 100%; height: 55vh; background: #222; border: 1px solid #555652; margin-top: 10px;"></canvas>

			<script>
				var ctx = document.getElementById("chart").getContext('2d');
    			var myChart = new Chart(ctx, {
        		type: 'pie',
		        data: {
		            labels: [<?php echo $data1; ?>],
		            datasets: 
		            [{
		                data: [<?php echo $data2; ?>],
		                backgroundColor: ['rgba(255,99,132)','#16e8f0'],
		                borderColor:['#f5aebe','#aeeaf2'],
		                borderWidth: 3
		            },
					]
		        },
		     
		        options: {
		            scales: {scales:{yAxes: [{beginAtZero: false}], xAxes: [{autoskip: true, maxTicketsLimit: 20}]}},
		            tooltips:{mode: 'index'},
		            legend:{display: true, position: 'top', labels: {fontColor: 'rgb(255,255,255)', fontSize: 16}}
		        }
		    });
			</script>


	    </div>

	    <div class="container" style="width: 100%;margin-top: 20px;">	
	    	<h1>Filières d'origine</h1>       
			<canvas id="chart1" style="width: 100%; height: 55vh; background: #222; border: 1px solid #555652; margin-top: 10px;"></canvas>

			<script>
				var ctx = document.getElementById("chart1").getContext('2d');
    			var myChart = new Chart(ctx, {
        		type: 'bar',
		        data: {
		            labels: [<?php echo $data3; ?>],
		            datasets: 
		            [{
		                label: 'Promo 2019-2020',
		                data: [<?php echo $data4; ?>],
		                backgroundColor: 'transparent',
		                borderColor:['#34eb74','#eb3480','#34d6eb','#e64a32','#6730e6','#8eed2f'],
		                borderWidth: 3
		            },
					]
		        },
		     
		        options: {
		            tooltips:{mode: 'index'},
		            legend:{display: true, position: 'top', labels: {fontColor: 'rgb(255,255,255)', fontSize: 16}},
		            scales: { yAxes: [{ticks: {beginAtZero: true}}]},
		        }
		    });
			</script>
	    </div>

	    <div class="container" style="width: 100%;margin-top: 20px;">	
	    	<h1>Bac obtenu </h1>       
			<canvas id="chart2" style="width: 100%; height: 55vh; background: #222; border: 1px solid #555652; margin-top: 10px;"></canvas>

			<script>
				var ctx = document.getElementById("chart2").getContext('2d');
    			var myChart = new Chart(ctx, {
        		type: 'polarArea',
		        data: {
		            labels: [<?php echo $data5; ?>],
		            datasets: 
		            [{
		                label: '',
		                data: [<?php echo $data6; ?>],
		                backgroundColor: ["#6af05b", "#f52aeb","#f55d62","#464feb"],
		                borderColor:'#fff',
		                borderWidth: 1
		            },

					]
		        },
		     
		        options: {
		            tooltips:{mode: 'index'},
		            legend:{display: true, position: 'top', labels: {fontColor: 'rgb(255,255,255)', fontSize: 16}},
		            scales: { yAxes: [{ticks: {beginAtZero: true}}]},
		            scale: { gridLines: {color: '#b0b5b0'}}
		        }
		    });
			</script>
	    </div>

	    <div class="container" style="width: 100%;margin-top: 20px;">	
	    	<h1>Régime d'inscription </h1>       
			<canvas id="chart3" style="width: 100%; height: 55vh; background: #222; border: 1px solid #555652; margin-top: 10px;"></canvas>

			<script>
				var ctx = document.getElementById("chart3").getContext('2d');
    			var myChart = new Chart(ctx, {
        		type: 'doughnut',
		        data: {
		            labels: [<?php echo $data7; ?>],
		            datasets: 
		            [{
		                label: 'Data 7',
		                data: [<?php echo $data8; ?>],
		                backgroundColor: ['#0cd9f5','#09ed78','#e87b0e'],
		                borderColor:'#fff',
		                borderWidth: 2
		            },

					]
		        },
		     
		        options: {
		            tooltips:{mode: 'index'},
		            legend:{display: true, position: 'top', labels: {fontColor: 'rgb(255,255,255)', fontSize: 16}},
		            scales: { yAxes: [{ticks: {beginAtZero: true}}]},
		        }
		    });
			</script>
	    </div>

	    <div class="container" style="width: 100%;margin-top: 20px;">	
	    	<h1>Taux d'insertion</h1>       
			<canvas id="chart5" style="width: 100%; height: 55vh; background: #222; border: 1px solid #555652; margin-top: 10px;"></canvas>

			<script>
				var ctx = document.getElementById("chart5").getContext('2d');
    			var myChart = new Chart(ctx, {
    			type: 'pie',
		        data: {
		            labels: [<?php echo $data11; ?>],
		            datasets: 
		            [{
		                //label: 'Promo 2019-2020',
		                data: [<?php echo $data12; ?>],
		                backgroundColor: 'transparent',
		                borderColor:'#2d84f7',
		                borderWidth: 2
		            },

					]
		        },
		     
		        options: {
		            tooltips:{mode: 'index'},
		            legend:{display: true, position: 'top', labels: {fontColor: 'rgb(255,255,255)', fontSize: 16}},
		        }
		    });
			</script>
	    </div>

	    <div class="container" style="width: 100%;margin-top: 20px;">	
	    	<h1>Intitulé de l'emploi</h1>       
			<canvas id="chart6" style="width: 100%; height: 55vh; background: #222; border: 1px solid #555652; margin-top: 10px;"></canvas>

			<script>
				var ctx = document.getElementById("chart6").getContext('2d');
    			var myChart = new Chart(ctx, {
    			type: 'horizontalBar',
		        data: {
		            labels: [<?php echo $data13; ?>],
		            datasets: 
		            [{
		                label: 'Promo 2019-2020',
		                data: [<?php echo $data14; ?>],
		                backgroundColor: ['#80e317','#b52bf0','#f70c43'],
		                borderColor: ['#cced7e','#e6a0fa','#eb6e8b'],
		                borderWidth: 3
		            },]
		        },
		     
		        options: {
		            tooltips:{mode: 'index'},
		            legend:{display: true, position: 'top', labels: {fontColor: 'rgb(255,255,255)', fontSize: 16}},
		            scales: { xAxes: [{ticks: {beginAtZero: true}}]},
		        }
		    });
			</script>
	    </div>

	    <div class="container" style="width: 100%;margin-top: 20px;">	
	    	<h1>Revenu net</h1>       
			<canvas id="chart7" style="width: 100%; height: 55vh; background: #222; border: 1px solid #555652; margin-top: 10px;"></canvas>

			<script>
				var ctx = document.getElementById("chart7").getContext('2d');
    			var myChart = new Chart(ctx, {
    			type: 'radar',
		        data: {
		            labels: [<?php echo $data15; ?>],
		            datasets: 
		            [{
		                label: 'Promo 2019-2020',
		                data: [<?php echo $data16; ?>],
		                backgroundColor: 'transparent',
		                borderColor:['#32d12a'],
		                borderWidth: 3,
		                pointHoverBorderColor:'#f50f82',
		                pointHoverBackgoundColor:'#fff'
		            },]
		        },
		     
		        options: {
		            tooltips:{mode: 'index'},
		            legend:{display: true, position: 'top', labels: {fontColor: 'rgb(255,255,255)', fontSize: 16}},
		            scales: { xAxes: [{ticks: {beginAtZero: true}}]},
		            scale: { gridLines: {color: '#b0b5b0'}, angleLines: {color: '#b0b5b0' }},
		        }
		    });
			</script>
	    </div>

	    <div class="container" style="width: 100%;margin-top: 20px;">	
	    	<h1>Type d'employeur</h1>       
			<canvas id="chart8" style="width: 100%; height: 55vh; background: #222; border: 1px solid #555652; margin-top: 10px;"></canvas>

			<script>
				var ctx = document.getElementById("chart8").getContext('2d');
    			var myChart = new Chart(ctx, {
    			type: 'bar',
		        data: {
		            labels: [<?php echo $data17; ?>],
		            datasets: 
		            [{
		                label: 'Promo 2019-2020',
		                data: [<?php echo $data18; ?>],
		                backgroundColor: ['#850ce8','#f7f30c'],
		                borderColor:['#fff','#fff'],
		                borderWidth: 2
		            },]
		        },
		     
		        options: {
		            tooltips:{mode: 'index'},
		            legend:{display: true, position: 'top', labels: {fontColor: 'rgb(255,255,255)', fontSize: 16}},
		            scales: { yAxes: [{ticks: {beginAtZero: true}}]},
		        }
		    });
			</script>
	    </div>

	   <div class="container" style="width: 100%;margin-top: 20px;">	
	    	<h1>Statut ou contrat de travail</h1>       
			<canvas id="chart4" style="width: 100%; height: 55vh; background: #222; border: 1px solid #555652; margin-top: 10px;"></canvas>

			<script>
				var ctx = document.getElementById("chart4").getContext('2d');
    			var myChart = new Chart(ctx, {
    			type: 'doughnut',
		        data: {
		            labels: [<?php echo $data9; ?>],
		            datasets: 
		            [{
		                label: 'Promo 2019-2020',
		                data: [<?php echo $data10; ?>],
		                backgroundColor: ['#21f01a','#f21877'],
		                borderColor:['#9efa9b','#f57fb3'],
		                borderWidth: 3
		            },

					]
		        },
		     
		        options: {
		            tooltips:{mode: 'index'},
		            legend:{display: true, position: 'top', labels: {fontColor: 'rgb(255,255,255)', fontSize: 16}},
		            scales: { yAxes: [{ticks: {beginAtZero: true}}]},
		        }
		    });
			</script>
	    </div>
</body>
</html>