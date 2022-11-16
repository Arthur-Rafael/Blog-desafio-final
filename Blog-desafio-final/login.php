<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width-device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Login</title>
<head>
<body>
    <form class="formulario" action="loginTeste.php" method="POST">
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