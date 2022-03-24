<?php                         
             define("DBHOST", "localhost");
             define("DBUSER", "root");
             define("DBPASS", "");
             define("DBNAME", "bdd_blog_culinaire");
            
            $dsn = 'mysql:host='.DBHOST.';dbname='.DBNAME;

             try {
                 $db = new PDO($dsn, DBUSER, DBPASS);
                 $db->exec("SET NAMES utf8");
                 $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
             } catch (PDOException $e) {
                 die("Erreur ! : " . $e->getMessage()) ;
             }