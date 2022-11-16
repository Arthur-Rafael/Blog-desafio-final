<?php

require 'config-blog.php';
include 'src/Posts-funcoes.php';

$post = new Post($mysql);
$post = $post->exibirTodos();

?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <title>Blog desafio final</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="pagina-inicial">
        <h1>Blog desafio final</h1>
        <?php foreach ($post as $pst) : ?>
        <h2>
            <a href="post.php?id=<?php echo $pst['ID_POST']; ?>">
                <?php echo $pst['TITULO_POST']; ?>
            </a>
        </h2>
        <?php endforeach; ?>
        <div>
           <a class="botao botao-block" href="login.php">Página Administrativa</a>
        </div>
    </div>
</body>