<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
        if(isset($_POST["motcle"])){
            $motcle = $_POST["motcle"];
        
        
            $sql = "SELECT texte, nom, prenom, siecle from  auteurs, citation where citation.id_auteur = auteurs.id_auteur and texte like '%".$motcle."%' OR 'nom_auteur' LIKE '%". $motcle."%'";
        
        
            $requete = $db->query($sql);
        
            $cita = $requete->fetchAll();
        
            foreach ($cita as $citas => $value) {
                echo $value["texte"];
                echo $value["nom"]."</br>";
                }
        
        
        }
    ?>
    
</body>
</html>