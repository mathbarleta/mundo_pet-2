<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <link rel="shortcut icon" href="Imagens/logo.ico" type="image/x-icon">
    <link rel="stylesheet" href="singin.css">
</head>
<body>
    <section id="full-box">
        <div id="img-box">
        </div>
        <div id="content-box">
            <a href="../Produtos/produtos.html"><img src="Imagens/logo.png" alt=""></a>
            <form action="testLogin.php" method="POST">
                <ul>
                    <li>
                        <input type="email" name="email" placeholder="EMAIL:">
                    </li>
                    <li>
                        <input type="password" name="senha" placeholder="SENHA:">
                    </li>
                </ul>
                <p>Lembre de mim <input type="checkbox"></p>
                <input type="submit" name="submit" value="LOGIN">
            </form>
            <div id="links">
                <p>Esqueci minha senha: <a href="recover.html">Recuperar Senha</a></p>
                <p>Ainda não tenho uma conta: <a href="sing-up.php">Cadastrar</a></p>
            </div>
        </div>
    </section>
</body>
</html>