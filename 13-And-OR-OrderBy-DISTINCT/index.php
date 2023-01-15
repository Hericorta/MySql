<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AND/OR/Order by/DISTINCT</title>
</head>
<body>
    <?php
        $host = "localhost";
        $user = "root";
        $pass = "";
        $dbname = "celke";
        $port = 3306;
        $conection = NEW PDO("mysql:host=$host;port=$port;dbname=".$dbname,$user, $pass);

        //A tag "OR" indica que tem que ter um dos dois atribudos
        echo"<h2>TAG OR</h2> <br>";
        $selecionar = "SELECT * FROM aula__13_usuarios WHERE niveis_acesso = 1 OR sits_usuario = 1";
        $selecionado = $conection->prepare($selecionar);
        $selecionado->execute();
        while($linha = $selecionado->fetch(PDO::FETCH_ASSOC)){
            $id = $linha["id"];
            $nome = $linha["nome"];
            $email = $linha["email"];
            $sits_user = $linha["sits_usuario"];
            $nivel_acesso = $linha["niveis_acesso"];
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
        echo"<h2>TAG AND</h2><br>";
        //A tag "AND" indica que só vai selecionar se tiver as duas condições verdadeiras
        $selecionar = "SELECT * FROM aula__13_usuarios WHERE niveis_acesso = 2 AND sits_usuario = 2";


        $selecionado = $conection->prepare($selecionar);
        $selecionado->execute();
        while($linha = $selecionado->fetch(PDO::FETCH_ASSOC)){
            $id = $linha["id"];
            $nome = $linha["nome"];
            $email = $linha["email"];
            $sits_user = $linha["sits_usuario"];
            $nivel_acesso = $linha["niveis_acesso"];
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
        echo"<h2>Order By</h2><br>";
        //A tag "ORDER BY" indica a ordem que será apresentado os dados
        $selecionar = "SELECT * FROM aula__13_usuarios WHERE id >= 1 OR sits_usuario >= 2 ORDER BY nome DESC";


        $selecionado = $conection->prepare($selecionar);
        $selecionado->execute();
        while($linha = $selecionado->fetch(PDO::FETCH_ASSOC)){
            $id = $linha["id"];
            $nome = $linha["nome"];
            $email = $linha["email"];
            $sits_user = $linha["sits_usuario"];
            $nivel_acesso = $linha["niveis_acesso"];
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
        echo"<h2>Distinct</h2><br>";
        //A tag "DISTINCT" indica que se existir um valor repetido ele somente o mostrará uma vez
        $selecionar = "SELECT DISTINCT nome,email FROM aula__13_usuarios WHERE id >= 1 OR sits_usuario >= 2 ORDER BY id ASC";


        $selecionado = $conection->prepare($selecionar);
        $selecionado->execute();
        while($linha = $selecionado->fetch(PDO::FETCH_ASSOC)){
            // $id = $linha["id"];
            $nome = $linha["nome"];
            $email = $linha["email"];
            // $sits_user = $linha["sits_usuario"];
            // $nivel_acesso = $linha["niveis_acesso"];
            // $created = date("d/m/Y H:i:s", strtotime($linha["created"]));
            // if ($sits_user==1){
            //     $sits_user = "Ativo";
            // }elseif($sits_user == 2){
            //     $sits_user = "Inativo";
            // }else{
            //     $sits_user = "Aguardando confiramção";
            // }
            // if ($nivel_acesso==1){
            //     $nivel_acesso = "Super administrador";
            // }elseif($nivel_acesso==2){
            //     $nivel_acesso = "administradors";
            // }else{
            //     $nivel_acesso = "Aluno";
            // }
            // echo "ID: $id <br>";
            echo "Nome: $nome <br>";
            echo"E-mail: $email <br>";
            // echo "Situação do usuário: $sits_user <br>";
            // echo "Nivel de acesso do usuário: $nivel_acesso <br>";
            // echo"Quando foi criado: $created <br>";
            // $modificado = $linha["modified"];
            // if ($modificado == ""){
            //     echo "Quando foi modificado: Nunca foi modificado <br>";
            // }else{
            //     $modified = date("d/m/Y H:i:s", strtotime($linha["modified"]));
            //     echo"Quando foi modificado: $modified <br>";
            // }
            echo"<hr>";
        }
    ?>
</body>
</html>