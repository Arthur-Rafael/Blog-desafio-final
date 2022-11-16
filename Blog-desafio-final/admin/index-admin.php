<?php

require '../config-blog.php';
include '../src/Posts-funcoes.php';

$post = new Post($mysql);
$post = $post->exibirTodos();


?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <title>Página administrativa</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../style.css">
</head>

<body>
    <div id="pagina-inicial">
        <h1>Página Administrativa</h1>
        <div>
            <?php foreach ($post as $pst) { ?>
            <div id="artigo-admin">
                <p><?php echo $pst['TITULO_POST']; ?></p>
                <nav>
                    <a class="botao" href="editar-post.php?id=<?php echo $pst['ID_POST']; ?>">Editar</a>
                    <a class="botao" href="excluir-post.php?id=<?php echo $pst['ID_POST']; ?>">Excluir</a>
                </nav>
            </div>
            <?php } ?>
        </div>
        <a class="botao botao-block" href="adicionar-post.php">Adicionar Artigo</a>
        <a class="botao botao-block" href="http://localhost/blog-desafio-final/index.php">Voltar para a página inicial</a>
    </div>
</body>

</html>