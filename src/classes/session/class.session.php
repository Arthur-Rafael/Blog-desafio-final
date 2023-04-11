<?php

class ControladorDeSessao
{
    public function login(string $email, string $senha): void
    {
        $_SESSION['EMAIL_USUARIO'] = $email;
        $_SESSION['SENHA'] = $senha;
    }

    public function logout(): void
    {
        unset($_SESSION ['EMAIL_USUARIO']);
        unset($_SESSION ['SENHA']);
    }
}

?>