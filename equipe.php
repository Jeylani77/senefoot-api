<?php 

 $base = mysqli_connect("localhost", "root", "", "db_senefoot") or die("error !");
	$nomCategorie =$_GET['nomCategorie'];
	 
	 $sql = 'SELECT * FROM categorie c, equipe e where c.idCategorie = e.idCategorie and c.nom="'.$nomCategorie.'"';  

	  
	  $req = mysqli_query($base,$sql);
      $emparray = array();
	 
	 while ($row = mysqli_fetch_array($req)) {
		//$emparray = $row;
	  array_push($emparray,array('idEquipe'=>$row['idEquipe'],'nomEquipe'=>$row['nomEquipe'],'imageEquipe'=>$row['imageEquipe']));
	  }		
	echo json_encode($emparray);
 ?> 
 

 
 
 