<?php

require 'config-blog.php';
require 'src/Posts-funcoes.php';

$obj_post = new Post($mysql);
$post = $obj_post->encontrarPorId($_GET['id']);

?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <title>Meu Blog</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="pagina-inicial">
        <h1>
            <?php echo $post['TITULO_POST']; ?>
        </h1>
        <p>
            <?php echo nl2br($post['CONTEUDO_POST']); ?>
        </p>
       <div>
            <a class="botao botao-block" href="index.php">Voltar</a>
        </div>
    </div>
</body>

</html>

