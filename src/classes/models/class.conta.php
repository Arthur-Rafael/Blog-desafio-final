<?php

class conta 
{
    private $mysql;

    public function __construct(mysqli $mysql)
    {
        $this->mysql = $mysql;
    }

    public function criarConta(string $nome, string $email, string $senha): void 
    {
        $criarConta = $this->mysql->prepare("INSERT INTO usuarios (NOME_USUARIO, EMAIL_USUARIO, SENHA) VALUES (?,?,?);");
        $criarConta->bind_param('sss', $nome, $email, $senha);
        $criarConta->execute();
    }
}
?>
