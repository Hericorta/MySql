<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert</title>
</head>
<body>
    <?php
        $host = "localhost";
        $port = 3306;
        $user = "root";
        $pass = "";
        $dbname = "celke";
        $conn = NEW PDO("mysql:host=$host;port=$port;dbname=".$dbname, $user, $pass);
        
        $selecionar = "SELECT * FROM aula__14_usuarios WHERE niveis_acesso = 1 OR sits_usuario = 1";
        $selecionado = $conn->prepare($selecionar);
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
        
        // $inserir = "INSERT INTO aula__14_usuarios(nome,email,sits_usuario,niveis_acesso,created) VALUES ('Rps', 'Rps@gmail.com',2,1,NOW())";
        // $cadastro = $conn->prepare($inserir);
        // $cadastro->execute();

        // $nome = "Ros";
        // $email ="ros@gmail.com";
        // $sits_usuarios = 1;
        // $niveis_acesso = 2;
        // $inserir = "INSERT INTO aula__14_usuarios(nome,email,sits_usuario,niveis_acesso,created) VALUES (:nome,:email,:sits_usuario,:niveis_acesso,NOW())";
        // $cadastro = $conn->prepare($inserir);
        // $cadastro->bindParam(':nome',$nome, PDO::PARAM_STR);
        // $cadastro->bindParam(':email',$email, PDO::PARAM_STR); 
        // $cadastro->bindParam(':sits_usuario',$sits_usuarios, PDO::PARAM_INT); 
        // $cadastro->bindParam(':niveis_acesso',$niveis_acesso, PDO::PARAM_INT); 
        // $cadastro->execute();
        // if($cadastro->rowCount()){
        //     echo"Cadastro feito com sucesso<br>";
        // }else{
        //     echo"Error";
        // }

        //para faze 100 cadastros
        $x=0;
        while($x<=100){
            $nome = "user$x";
            $email ="user$x@gmail.com";
            $sits_usuarios = 1;
            $niveis_acesso = 2;
            $inserir = "INSERT INTO aula__14_usuarios(nome,email,sits_usuario,niveis_acesso,created) VALUES (:nome,:email,:sits_usuario,:niveis_acesso,NOW())";
            $cadastro = $conn->prepare($inserir);
            $cadastro->bindParam(':nome',$nome, PDO::PARAM_STR);
            $cadastro->bindParam(':email',$email, PDO::PARAM_STR); 
            $cadastro->bindParam(':sits_usuario',$sits_usuarios, PDO::PARAM_INT); 
            $cadastro->bindParam(':niveis_acesso',$niveis_acesso, PDO::PARAM_INT); 
            $cadastro->execute();
            $x++; 
        }
    ?>
</body>
</html>