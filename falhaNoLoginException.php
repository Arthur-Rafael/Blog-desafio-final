<?php

class falhaNoLoginException extends \DomainException
{
    public function __construct()
    {
        $mensagem = "Email ou Senha incorretos. Tente novamente mais tarde.";
        parent::__construct($mensagem);
    }
}