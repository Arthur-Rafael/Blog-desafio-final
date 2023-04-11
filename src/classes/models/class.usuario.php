<?php

include_once('falhaNoLoginException.php');

class Usuario
{
    private $mysql;

    public function __construct(mysqli $mysql)
    {
        $this->mysql = $mysql;
    }

    public function validaLogin(string $email, string $senha): void
    {
        $sql = "SELECT * FROM USUARIOS WHERE EMAIL_USUARIO = '$email' and SENHA = '$senha'";
        $result = $this->mysql->query($sql);
        $row_cnt = $result->num_rows;

        if ($row_cnt === 0) {
            throw new falhaNoLoginException();
        } 
    }
}

?>