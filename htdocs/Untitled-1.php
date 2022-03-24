<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!-- <h5>Hello World</h5>
    <h4>Hello World</h4>
    <h3>Hello World</h3>
    <h2>Hello World</h2>
    <h1>Hello World</h1> -->
    <nav>
        <h1>salut salut</h1>
        <?php 
        session_start();
        $_SESSION['pageCount'] = $_SESSION['pageCount']+1;
        echo $_SESSION['pageCount'];
        ?>
    </nav>

    <?php



if(isset($_POST['login']))   // it checks whether the user clicked login button or not 
{
     $user = $_POST['user'];
     $pass = $_POST['pass'];

      if($user == "Ank" && $pass == "1234")  // username is  set to "Ank"  and Password   
         {                                   // is 1234 by default     

          $_SESSION['use']=$user;


         echo '<script type="text/javascript"> window.open("home.php","_self");</script>';            //  On Successful Login redirects to home.php

        }

        else
        {
            echo "invalid UserName or Password";        
        }
}
 ?>






    <?php 
    $phrase = "Hello World !";
    
    for ($i=1; $i < 6; $i++) { 
        echo " <font size=$i><p>$phrase</p></font> ";
        
    }
        
    // foreach ($_SERVER as $parm => $value)  echo "$parm = '$value'\n";
    // setlocale(LC_TIME, ['fr', 'fra', 'fr_FR']);
    //         echo strftime('%A %d %B %Y %I:%M:%S'). '<br>';

    //         echo "<br> <br> <br> <br> <br><br><br>";
   
   
        
       
    // $indicesServer = array('PHP_SELF',
    // 'argv',
    // 'argc',
    // 'GATEWAY_INTERFACE',
    // 'SERVER_ADDR',
    // 'SERVER_NAME',
    // 'SERVER_SOFTWARE',
    // 'SERVER_PROTOCOL',
    // 'REQUEST_METHOD',
    // 'REQUEST_TIME',
    // 'REQUEST_TIME_FLOAT',
    // 'QUERY_STRING',
    // 'DOCUMENT_ROOT',
    // 'HTTP_ACCEPT',
    // 'HTTP_ACCEPT_CHARSET',
    // 'HTTP_ACCEPT_ENCODING',
    // 'HTTP_ACCEPT_LANGUAGE',
    // 'HTTP_CONNECTION',
    // 'HTTP_HOST',
    // 'HTTP_REFERER',
    // 'HTTP_USER_AGENT',
    // 'HTTPS',
    // 'REMOTE_ADDR',
    // 'REMOTE_HOST',
    // 'REMOTE_PORT',
    // 'REMOTE_USER',
    // 'REDIRECT_REMOTE_USER',
    // 'SCRIPT_FILENAME',
    // 'SERVER_ADMIN',
    // 'SERVER_PORT',
    // 'SERVER_SIGNATURE',
    // 'PATH_TRANSLATED',
    // 'SCRIPT_NAME',
    // 'REQUEST_URI',
    // 'PHP_AUTH_DIGEST',
    // 'PHP_AUTH_USER',
    // 'PHP_AUTH_PW',
    // 'AUTH_TYPE',
    // 'PATH_INFO',
    // 'ORIG_PATH_INFO') ;
    
    // echo '<table cellpadding="10" border>' ;
    // foreach ($indicesServer as $arg) {
    //     if (isset($_SERVER[$arg])) {
    //         echo '<tr><td>'.$arg.'</td><td>' . $_SERVER[$arg] . '</td></tr>' ;
    //     }
    //     else {
    //         echo '<tr><td>'.$arg.'</td><td>-</td></tr>' ;
    //     }
    // }
    // echo '</table>' ;
//     $indicesServer = array('MYSQL_HOME','OPENSSL_CONF','PHP_PEAR_SYSCONF_DIR','PHPRC','TMP','HTTP_HOST','HTTP_CONNECTION', 
//     'HTTP_CACHE_CONTROL','HTTP_SEC_CH_UA', 'HTTP_SEC_CH_UA_MOBILE', 'HTTP_SEC_CH_UA_PLATFORM','HTTP_DNT', 'HTTP_UPGRADE_INSECURE_REQUESTS',
//     'HTTP_USER_AGENT', 'HTTP_ACCEPT', 'HTTP_SEC_FETCH_SITE', 'HTTP_SEC_FETCH_MODE','HTTP_SEC_FETCH_USER','HTTP_SEC_FETCH_DEST',
//     'HTTP_ACCEPT_ENCODING', 'HTTP_ACCEPT_LANGUAGE', 'PATH', 'SystemRoot', 'COMSPEC','PATHEXT', 'WINDIR', 'SERVER_SIGNATURE', 'SERVER_SOFTWARE',
//     'SERVER_NAME', 'SERVER_ADDR', 'SERVER_PORT', 'REMOTE_ADDR', 'DOCUMENT_ROOT', 'REQUEST_SCHEME', 'CONTEXT_PREFIX', 'CONTEXT_DOCUMENT_ROOT',
//     'SERVER_ADMIN', 'SCRIPT_FILENAME', 'REMOTE_PORT', 'GATEWAY_INTERFACE', 'SERVER_PROTOCOL', 'REQUEST_METHOD', 'QUERY_STRING',
//     'REQUEST_URI', 'SCRIPT_NAME', 'PHP_SELF', 'REQUEST_TIME_FLOAT', 'REQUEST_TIME'  );

//     echo '<table cellpadding="10" border="10 ">' ;
// foreach ($indicesServer as $arg) {
//     if (isset($_SERVER[$arg])) {
//         echo '<tr><td>'.$arg.'</td><td>' . $_SERVER[$arg] . '</td></tr>' ;
//     }
//     else {
//         echo '<tr><td>'.$arg.'</td><td>-</td></tr>' ;
//     }
// }
// echo '</table>' ;
   
// session_start();









   
    ?>
    


    
</body>
</html>