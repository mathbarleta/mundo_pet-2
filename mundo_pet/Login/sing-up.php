<?php

    if(isset($_POST['submit']))
    {
        include_once('config.php');

        $nome = $_POST['nome'];
        $dataNas = $_POST['dataNas'];
        $email = $_POST['email'];
        $senha = $_POST['senha'];
        $sobrenome = $_POST['sobrenome'];
        $cpf = $_POST['cpf'];

        $result = mysqli_query($conexao, "INSERT INTO tb_client(nome,dataNas,email,senha,sobrenome,cpf) Values('$nome','$dataNas','$email','$senha','$sobrenome','$cpf')");
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CADASTRO</title>
    <link rel="shortcut icon" href="Imagens/logo.ico" type="image/x-icon">
    <link rel="stylesheet" href="singup.css">
    <script src="script.js"></script>
</head>
<body>
    <section id="full-box">
        <div id="img-box">
        </div>
        <div id="content-box">
            <a href="../Produtos/produtos.html"><img src="Imagens/logo.png" alt=""></a>
            <form action="sing-up.php" method="POST" onsubmit="return validarFormulario()">
                <ul>
                    <li>
                        <input type="text" placeholder="NOME:" name="nome" required>
                    </li>
                    <li>
                        <input type="date" placeholder="DATA DE NASCIMENTO:" name="dataNas" required>
                    </li>
                    <li>
                        <input type="email" placeholder="EMAIL:" name="email" required>
                    </li>
                    <li>
                        <input type="password" placeholder="SENHA:" name="senha" required>
                    </li>
                    <li>
                        <input type="text" placeholder="SOBRENOME:" name="sobrenome" required>
                    </li>
                    <li>
                        <input type="text" placeholder="CPF:" name="cpf" required>
                    </li>
                    <li>
                        <input id="confEmail" type="email" placeholder="CONFIRMAR EMAIL:" name="confEmail" required>
                    </li>
                    <li>
                        <input type="password" placeholder="CONFIRMAR SENHA:" required>
                    </li>
                </ul>
                <input type="submit" value="CADASTRAR-SE" name="submit">
            </form>
            <div id="links">
                <p>Já tenho uma conta: <a href="sing-in.php">Entrar</a></p>
            </div>
        </div>
    </section>
</body>
</html>