<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WHERE</title>
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
        $selecionar = "SELECT * FROM aula_6_usuario WHERE sits_usuario_id=1";
        $selecionado = $conn->prepare($selecionar);   
        $selecionado->execute();
        while ($linha = $selecionado->fetch(PDO::FETCH_ASSOC)){
            $id = $linha["id"];
            $nome = $linha["nome"];
            $email = $linha["email"];
            $sits_user = $linha["sits_usuario_id"];
            $nivel_acesso = $linha["niveis_acesso_id"];
            $created = date("d/m/Y H:i:s", strtotime($linha["created"]));
            if ($sits_user==1){
                $sits_user = "Ativo";
            }elseif($sits_user == 2){
                $sits_user = "Inativo";
            }else{
                $sits_user = "Aguardando confiramção";
            }
            if ($nivel_acesso==1){
                $nivel_acesso = "Super administrador";
            }elseif($nivel_acesso==2){
                $nivel_acesso = "administradors";
            }else{
                $nivel_acesso = "Aluno";
            }
            
            echo "ID: $id <br>";
            echo "Nome: $nome <br>";
            echo"E-mail: $email <br>";
            echo "Situação do usuário: $sits_user <br>";
            echo "Nivel de acesso do usuário: $nivel_acesso <br>";
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

    ?>    
</body>
</html>