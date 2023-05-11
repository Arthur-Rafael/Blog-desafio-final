<?php

class postIncompletoException extends \DomainException
{
    public function __construct()
    {
        $mensagem = "Você não pode publicar um post com informações faltando.";
        parent::__construct($mensagem);
    }
}
?>