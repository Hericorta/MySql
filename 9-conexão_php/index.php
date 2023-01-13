<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conexão com o php</title>
</head>
<body>
    <?php
       $host = "localhost";
       $user = "root";
       $pass = "";
       $dbname = "celke";
       $port = 3306;
       
       try{
           //Conexão com a porta
           $conn = new PDO("mysql:host=$host;port=$port;dbname=" . $dbname, $user, $pass);
           
           //Conexão sem a porta
           //$conn = new PDO("mysql:host=$host;dbname=" . $dbname, $user, $pass);
           echo "Conexão com banco de dados realizado com sucesso.";
       }catch(PDOException $err){
           echo "Erro: Conexão com banco de dados não realizado com sucesso. Erro gerado " . $err->getMessage();
       }
       
       
    ?>
</body>
</html>