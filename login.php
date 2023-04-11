<?php

include_once('config-blog.php');
include_once('src/classes/models/class.usuario.php');
include_once('src/classes/session/class.session.php');
include_once('falhaNoLoginException.php');
include_once('src/redireciona.php');

if($_SERVER['REQUEST_METHOD'] === 'POST') {
    $usuario = new Usuario($mysql);
    $controladorDeSessao = new ControladorDeSessao();

    try {
        $usuario->validaLogin($_POST['EMAIL_USUARIO'], $_POST['SENHA']);
        $controladorDeSessao->login($_POST['EMAIL_USUARIO'], $_POST['SENHA']);
        header('Location: admin/index-admin.php'); exit; 
    } catch (falhaNoLoginException $excecao) {
        echo "<script>alert('Email ou Senha incorreta. Tente Novamente.')</script>";
    }
}

?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width-device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Login</title>
<head>
<body>
    <form class="formulario" method="POST">
        <input type="text" name="EMAIL_USUARIO" placeholder="E-mail" autofocus required>
        <br><br>
        <input type="password" name="SENHA" placeholder="Senha" autofocus required>
        <br><br>
        <input class='botao botao-block' type="submit" name="submit" value="Acessar">
    </form>
    <p>Não possui conta?<a href="criar-conta.php">Crie uma aqui!</a></p>
    <a class="botao botao-block" href="index.php">Voltar para a pagina inicial</a>
<body>
</html>