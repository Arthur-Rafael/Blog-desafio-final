<?php

include_once('src/classes/models/class.conta.php');
include ('src/classes/models/class.post.php.');
include_once('src/redireciona.php');
include_once ('config-blog.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nome = ($_POST['nome']);
    $email = ($_POST['email']);
    $senha = ($_POST['senha']);
    

    $conta = new conta($mysql);
    $conta->criarConta($_POST['nome'], $_POST['email'], $_POST['senha']);

    redireciona('/blog-desafio-final/login.php');
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width-device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Criar Conta</title>
<head>
<body class="criar-conta">
    <div class="tela-login">
        <h1>Crie sua conta!</h1>
        <form class="formulario" action="criar-conta.php" method="POST">  
            <input type="text" name="nome" placeholder="nome" required>
            <br><br>
            <input type="text" name="email" placeholder="email" required>
            <br><br>
            <input type="password" name="senha" placeholder="senha" required>
            <br><br>
            <input type="submit" name="submit" value="Criar conta" class="botao botao-block">
        </form>
        <a class="botao botao-block" href="login.php">Voltar pra login!</a>
    </div>
</body>
</html>