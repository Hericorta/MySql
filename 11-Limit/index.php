<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Limit</title>
</head>
<body>
    <?php
        $host = "localhost";
        $user = "root";
        $pass = "";
        $dbname = "celke";
        $port = 3306;
        //Limit define um limit de linhas
        //OFFSET define de onde começa
        $conn = new PDO("mysql:host=$host;port=$port;dbname=" . $dbname, $user, $pass);
        $selecionar = "SELECT * FROM aula__11_limit LIMIT 15 OFFSET 7";
        $selecionado = $conn->prepare($selecionar);   
        $selecionado->execute();

        while($linha = $selecionado->fetch(PDO::FETCH_ASSOC)){
            $id = $linha["id"];
            $letra = $linha["letra"];
            echo $id .": ".$letra ."<br>";
        }

    ?>  
    
</body>
</html>