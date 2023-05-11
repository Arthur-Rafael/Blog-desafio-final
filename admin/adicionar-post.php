<?php

require ('postIncompletoException.php');
require ('../config-blog.php');
require ('../src/classes/models/class.post.php');
require ('../src/redireciona.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $titulo = ($_POST['titulo']); 
    $conteudo = ($_POST['conteudo']);
    $dataDeHoje = ($_POST['data']);

    try {
        if($titulo == '' || $conteudo == '' || $dataDeHoje = '')  
        {
            throw new postIncompletoException;
        }
            $post = new Post($mysql);
                $post->adicionar($_POST['titulo'], $_POST['conteudo'], $_POST['data']);
                redireciona('/blog-desafio-final/admin/index-admin.php');
            } catch (postIncompletoException $excecao) {
                echo "<script>alert('Você não pode publicar um post com informações faltando.')</script>";
        }
    }
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <link rel="stylesheet" href="../style.css">
    <meta charset="UTF-8">
    <title>Adicionar Post</title>
</head>

<body>
    <div id="pagina-inicial">
        <h1>Adicionar Post</h1>
        <form action="adicionar-post.php" method="post">
            <p>
                <label for="">Digite o título do post</label>
                <input class="campo-form" type="text" name="titulo" id="TITULO-POST" />
            </p>
            <p>
                <label for="">Digite o conteúdo do Post</label>
                <textarea class="campo-form" type="text" name="conteudo" id="CONTEUDO_POST"></textarea>
            </p>
            <p>
                <label for="">Digite a data de publicação</label>
                <textarea class="campo-form" type="text" name="data" id="DATA-DO-POST"></textarea>
            </p>
            <p>
                <button class="botao">Criar Post</button>
            </p>
        </form>
    </div>
</body>

</html>