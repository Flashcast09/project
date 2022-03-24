<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Style.css" rel="stylesheet">
    <title>Document</title>
</head>
<body>
<form action="saisiecit.php" method="post">
<fieldset>
<legend><b>Formulaire de saisie des citations</b></legend>
<table>
<tbody>
<tr>
	<td>Nom de l'auteur :</td>
	<td> <input type="text" name="nom" size="40" maxlength="256"><br /></td>
</tr>
<tr> 
<td>Prénom de l'auteur : </td>
<td> <input type="text" name="prenom" size="40" maxlength="256"><br />
 </td>
</tr>
<tr> 
<td>Siècle :  </td>
<input type="search" name="s" placeholder="motcle" autocomplete="off">
<td>
<select name="siecle" size="1">
	<option value="16"> XVIe siècle</option>
  	<option value="17"> XVIIe siècle</option>
  	<option value="18"> XVIIIe siècle</option>
  	<option value="19"> XIXe siècle</option>
  	<option value="20"> XXe siècle</option>
    <option value="21"> XXIème siècle</option>
	<option value="null"> Autres</option>
</select>
</td>
</tr>
<tr> 
  <td colspan="2"> Ecrivez votre citation ici: <br />
  <textarea name="texte" cols="70" rows="7"></textarea> </td>
</tr>
<tr> 
<td colspan="2">  
<input type="reset" value="Effacer">&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Enregistrer">
 </td>
</tr>
 </tbody>
</table>
</fieldset>
</form>
        <?php
            include_once ('PDO.php');
        ?>
        <!-- // recherche mot clé -->
        
        

        

        <!-- // $motcle= $_POST["motcle"]; 
        // $auteur= $_POST["auteur"]; 
        // $siecle= $_POST["siecle"]; 
        // $tri= $_POST["tri"];

        // $query = "SELECT nom,prenom,texte,siecle FROM dico.auteurs  AS A, dico.citation AS C WHERE ";

        // if($motcle){
        //     $query .="texte LIKE '%$motcle%' ";
        // }else{
        //     $query .= " 1 " ; 
        // }

        // if($auteur !="tous"){
        //     $query .= "AND nom= '$auteur' ";
        // }else{
        //     $query .= ""; 
        // }

        // if($siecle){
        //     $query .= " AND siecle =  '$siecle' ";
        // }

        // $query .= " AND A.idauteur= C.idauteur"; 
        // $query.=" ORDER BY $tri ASC"; 

        // $result = mysql_query($query,$idcom)or die("ERREUR RESULTAT"); -->

        <!-- // if(!$result) echo "<h2> Pas de réponse </h2>";

        // else{
        //     echo "<h2> Liste des citations : $motcle</h2> <hr>";
        //     while($tab = mysql_fetch_assoc($result))
        //     {
        //         echo "<h4>",nl2br($tab["texte"]),"<br />";
        //         echo "<cite>",$tab["prenom"]," ", $tab["nom"] ,"
        //         ( ", $tab["siecle"]," siècle) </cite></h4><hr />";
        //     }
        // }

        // echo"<pre>";
        // var_dump($citation);
        // echo"<pre>"; -->

        <!-- // //Sélection de tous les identifiants des citations
        // $requete = "SELECT idcit FROM citation";
        // $result = mysql_query($requete,$idcom); 


        // $queryaut = "SELECT idauteur,siecle FROM auteurs WHERE nom='$nom'";   
        // $result = mysql_query($queryaut,$idcom)or die("ERREUR RESULTAT");   
        // $tabid = mysql_fetch_row($result); 

        // if($tabid){
        //     $idauteur= $tabid[0];
        //     $siecle= $tabid[1];
        // //echo "IL Y A UNE REPONSE idauteur : $idauteur , $siecle,$texte ";
        //     $query = "INSERT INTO citation (texte,idauteur) VALUES
        //     ('$texte','$idauteur')";
        //     mysql_query($query,$idcom)or die("ERREUR D'INSERTION".$nom);
        // }
        // //si l'auteur n'existe pas encore
        // else
        // {
        // $queryins="INSERT INTO auteurs (nom,prenom,siecle) VALUES
        // ('$nom','$prenom',$siecle) ";

        // mysql_query($queryins,$idcom)or die("ERREUR D'INSERTION
        // auteurs");
        // $idauteur= mysql_insert_id();
        // $query = "INSERT INTO citation (texte,idauteur) VALUES
        // ('$texte',$idauteur) ";
        // mysql_query($query,$idcom)or die("ERREUR D'INSERTION
        // citation");
        // }
        
        // include_once('footer.php');       

        // $data = mysql_fetch_array($sql);
        // echo $data['nom']." ".$data['prenom']." ".$data['siecle'] ;
        // mysql_close();  
     
     -->
    
    
        <!-- // appel fonction affichage random à chaque connexion-->
    
    <!-- <form action="saisiecit.php" method="post">
        recherche d'une citation : <input></input> <br>
        recherche par auteur : <input></input> <br>
        siècle d'appartenance : <input type="radio">XVI</input>
                                <input type="radio">XVII</input>
                                <input type="radio">XVIII</input>
                                <input type="radio">XIX</input>
                                <input type="radio">XX</input>
                                <input type="radio">XXI</input>
    <button type="submit">sub</button>
    <button type="reset">clear</button>
    </form> -->
</body>
</html>