<?php 

$nomFichier = "C:\wamp\www\csv\Classeur1.csv";
$nomTable = "contact";

$openFic = fopen($nomFichier, "r");
$resulFic = fopen("C:\wamp\www\csv\contact.sql", "w");

$first = true;
$second = false;
$reqBase = "INSERT INTO `contact` (`id_contact`, `civilite`, `nom_contact`, `prenom_contact`, `adresse`, `suite`, `cp`, `ville`, `societe`, `APE`, `pays`, `telephone`, `telephone2`, `telecopie`, `portable`, `site_web`, `email`, `origine`, `observations`, `date_creation`, `prospect`, `demandeur`, `offreur`, `investisseur`, `prescripteur`, `autre`, `confrere`, `date_dernier_contact`, `fonction`, `nom_responsable`, `origine_contact`, `support_publicitaire`, `contact_origine`, `accord_financier_origine`, `notaire`, `syndic`, `forme_juridique`, `agent`, `capital`, `RCS`, `lieu_RCS`, `siege`) VALUES ";

$compteur = 0;
$limit = 25;

while(!feof($openFic) && $compteur < $limit){
  $ligne = fgets($openFic);
	$compteur = $compteur + 1;
	//echo "ligne : ".$ligne;
	if ($second) {
    $reqBase=$reqBase . ',';
	}
  if(!$first){
		$column_names = explode(";", $ligne);
		$ligne="";
		foreach($column_names as $row){
		    //echo "row : ".$row;		
		  if (!$ligne=="") {
			  $ligne=$ligne.",";
			}
						$ligne=$ligne.'"'.$row.'"';
		}

	  //$ligne = str_replace(';', ',', $ligne2);
	  $ligne = '('.$ligne.')';
    $reqBase=$reqBase . $ligne;
		$second=true;
  }
  $first = false;
}
$reqBase=$reqBase . ";";
//echo "reqBase : ".$reqBase;
if (fwrite($resulFic, $reqBase)) {
	echo 'ok';
}else{
	echo 'error';
}

fclose($openFic);

?>