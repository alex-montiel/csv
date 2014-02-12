<?php 

$nomFichier = "/home/alexandre/public_html/csv/Classeur1.csv";
$nomTable = "contact";

$openFic = fopen($nomFichier, "r");
$resulFic = fopen("contact.sql", "w");

$first = true;
$second = false;
$reqBase = "INSERT INTO `contact` (`id_contact`, `civilite`, `nom_contact`, `prenom_contact`, `adresse`, `suite`, `cp`, `ville`, `societe`, `APE`, `pays`, `telephone`, `telephone2`, `telecopie`, `portable`, `site_web`, `email`, `origine`, `observations`, `date_creation`, `prospect`, `demandeur`, `offreur`, `investisseur`, `prescripteur`, `autre`, `confrere`, `date_dernier_contact`, `fonction`, `nom_responsable`, `origine_contact`, `support_publicitaire`, `contact_origine`, `accord_financier_origine`, `notaire`, `syndic`, `forme_juridique`, `agent`, `capital`, `RCS`, `lieu_RCS`, `siege`) VALUES ";

$compteur = 0;
$limit = 1000000;

$chiffres = array('1', '2', '3', '4', '5', '6', '7', '8', '9', '0');

while(!feof($openFic) && $compteur < $limit){
    $ligne = fgets($openFic);
    $column_names = explode(";", $ligne);
    if (in_array($ligne[0], $chiffres)){
        $chiffre = true;
    }else{
        $chiffre = false;
    }
    $compteur = $compteur + 1;
    if ($second && $chiffre == true) {
        
        if (strlen($column_names[0])<4){
            $reqBase=$reqBase . ',';
    }else{
        
    }
            
        
    }
    if(!$first && $chiffre == true){
	//$column_names = explode(";", $ligne);
	$ligne="";
	foreach($column_names as $row){
            //echo 'colonne : '.$column_names[0];
            if (strlen($column_names[0])< 4){
                $taille = true;
                if (!$ligne=="") {
                    $ligne=$ligne.",";

                }
                $row = str_replace('"', '', $row);
                $ligne=$ligne.'"'.$row.'"';
            }
            else{
                $taille = false;
                $ligne = "";
            }        
          
        }   
            
	$ligne = '('.$ligne.')';
        if ($taille == true){
            $reqBase=$reqBase . $ligne;
        }
        else{
            $ligne = "";
        }
        
	$second=true;
    }
    $first = false;
}
$reqBase=$reqBase . ";";
if (fwrite($resulFic, $reqBase)) {
   echo 'ok';
}else{
   echo 'error';
}
fclose($openFic);

?>