<?php 

 $base = mysqli_connect("localhost", "root", "", "db_senefoot") or die("error !");
	$statut =$_GET['statut'];


	   
	  //$chaine='oui'; 	
	 
	 $sql = 'SELECT * FROM rencontre where rencontre.statut="'.$statut.'"';  

	  
	  $req = mysqli_query($base,$sql);
      $emparray = array();
	 
	 while ($row = mysqli_fetch_array($req)) {
		//$emparray = $row;
	  array_push($emparray,array('idRencontre'=>$row['idRencontre'],'lieu'=>$row['lieu'],'prixTicket'=>$row['prixTicket'],
								  'nomEquipeDomicile'=>$row['nomEquipeDomicile'],'nomEquipeExterieur'=>$row['nomEquipeExterieur'],
								  'scoreEquipeDomicile'=>$row['scoreEquipeDomicile'],'scoreEquipeExterieur'=>$row['scoreEquipeExterieur']));
	  }		
	echo json_encode($emparray);
 ?> 

 
 
 