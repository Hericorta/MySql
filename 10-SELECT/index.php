<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SELECT</title>
</head>
<body>
    <?php
    //inicio da conexão com banco de dados
        $host = "localhost";
        $user = "root";
        $pass = "";
        $dbname = "celke";
        $port = 3306;       
        $conn = new PDO("mysql:host=$host;port=$port;dbname=" . $dbname, $user, $pass);
    //Fim da conexão com banco de dados
    
    // Inicio do SELECT
        echo"<h2>Listar usuarios</h2>";
        $selecionar = "SELECT * FROM aula_8_usuarios";
        $selecionado = $conn->prepare($selecionar);   
        $selecionado->execute();

        while($linha = $selecionado->fetch(PDO::FETCH_ASSOC)){
            $id = $linha["id"];
            $nome = $linha["nome"];
            $email = $linha["email"];
            $sits_user = $linha["sits_usuario"];
            $created = date("d/m/Y H:i:s", strtotime($linha["created"]));
            echo "ID: $id <br>";
            echo "Nome: $nome <br>";
            echo"E-mail: $email <br>";
            echo "Situação do usuário: $sits_user <br>";
            echo"Quando foi criado: $created <br>";
            $modificado = $linha["modified"];
            if ($modificado == ""){
                echo "Quando foi modificado: Nunca foi modificado <br>";
            }else{
                $modified = date("d/m/Y H:i:s", strtotime($linha["modified"]));
                echo"Quando foi modificado: $modified <br>";
            }
            echo"<hr>";
        }
         
    //Fim do SELECT
       
       
    ?>
</body>
</html>