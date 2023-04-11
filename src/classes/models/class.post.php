<?php

class Post
{
    private $mysql;

    public function __construct(mysqli $mysql)
    {
        $this->mysql = $mysql;
    }

    public function adicionar(string $titulo, string $conteudo, string $data) : void
    {
        $inserePost = $this->mysql->prepare('INSERT INTO post (TITULO_POST, CONTEUDO_POST, DATA_DE_PUBLICACAO) VALUES(?,?,?);');
        $inserePost->bind_param('sss', $titulo, $conteudo, $data);
        $inserePost->execute();
    }

    public function remover(string $id): void
    {
        $removerPost = $this->mysql->prepare('DELETE FROM post WHERE ID_POST = ?');
        $removerPost->bind_param('s', $id);
        $removerPost->execute();
    }

    public function exibirTodos(): array
    {

        $resultado = $this->mysql->query('SELECT ID_POST, TITULO_POST, CONTEUDO_POST, DATA_DE_PUBLICACAO FROM post');
        $post = $resultado->fetch_all(MYSQLI_ASSOC);

        return $post;
    }

    public function encontrarPorId(string $id): array
    {
        $selecionaPost = $this->mysql->prepare("SELECT ID_POST, TITULO_POST, CONTEUDO_POST FROM post WHERE ID_POST = ?");
        $selecionaPost->bind_param('s', $id);
        $selecionaPost->execute();
        $post = $selecionaPost->get_result()->fetch_assoc();
        return $post;
    }

    public function editar(string $id, string $titulo, string $conteudo): void
    {
        $editaPost = $this->mysql->prepare('UPDATE post SET TITULO_POST = ?, CONTEUDO_POST = ? WHERE ID_POST = ?');
        $editaPost->bind_param('sss', $titulo, $conteudo, $id);
        $editaPost->execute();
    }
}
?>