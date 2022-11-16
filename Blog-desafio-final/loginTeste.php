<?php
session_start();

if(isset($_POST['submit']) && !empty($_POST["EMAIL_USUARIO"]) && !empty($_POST["SENHA"]))
{
    include_once("config-blog.php");
    $email = $_POST['EMAIL_USUARIO'];
    $senha = $_POST['SENHA'];

    $sql = "SELECT * FROM USUARIOS WHERE EMAIL_USUARIO = '$email' and SENHA = '$senha'";
    $result = $mysql->query($sql);

    if(mysqli_num_rows($result) < 1)
    {
        unset($_SESSION ['EMAIL_USUARIO']);
        unset($_SESSION ['SENHA']);
        header('Location: login.php');
    }
    else
    {
        $_SESSION ['EMAIL_USUARIO'] = $email;
        $_SESSION ['SENHA'] = $senha;
        header('Location: admin/index-admin.php');
    }
}
else
{
    header('Location: login.php');
}
?>