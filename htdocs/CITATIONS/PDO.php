<?php 
    include_once ('header.php');
    define("DBHOST", "localhost");
    define("DBUSER", "root");
    define("DBPASS", "");
    define("DBNAME", "Dico");

    // DSN de connexion
    $dsn = "mysql:dbname=".DBNAME.";host=".DBHOST;

    // ON VA SE CONNECTER A LA BASE
    try{
        // ON INSTANCIE PDO
        $db = new PDO($dsn, DBUSER, DBPASS);
        // echo "on est connecté";

        //  ON S'ASSURE D'ENVOYER LES DONNEES EN UTF8
        $db->exec("SET NAMES utf8");

        // définit le mode de "fetch"
        $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC); 

    }catch(PDOException $e){
        die($e->getMessage());
    }
    //Ici on est connectés a la base
        // On peut récupérer la liste des utilisateurs (users)
        $sql = "SELECT texte, idcit FROM citation ORDER BY RAND() LIMIT 1";

        // On exécute directement la requête 
        $requete = $db->query($sql);
        
        //On récupère les données (fetch ou fetchAll)
        $citation = $requete->fetchAll();

        foreach ($citation as $citations ) {
            //var_dump($citation);
            echo $citations['texte']."<br>";
        }