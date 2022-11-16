<?php

    include_once('config-blog.php');

    if(isset($_POST['submit']))
    {
        $nome = $_POST['nome'];
        $email = $_POST['email'];
        $senha = $_POST['senha'];

        $result = mysqli_query($mysql, "INSERT INTO usuarios (NOME_USUARIO, EMAIL_USUARIO, SENHA) VALUES ('$nome', '$email', '$senha')");
        
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
            <input type="submit" name=" submit" value="Criar conta" class="botao botao-block">
        </form>
        <a class="botao botao-block" href="login.php">Voltar pra login!</a>
    </div>
</body>
</html>