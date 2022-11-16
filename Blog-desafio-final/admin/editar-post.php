<?php 

require '../config-blog.php';
include '../src/Posts-funcoes.php';
require '../src/redireciona.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $post = new Post($mysql);
    $post->editar($_POST['id'], $_POST['titulo'], $_POST['conteudo']);

    redireciona('/blog-desafio-final/admin/index-admin.php');
}

$post = new Post($mysql);
$pst = $post->encontrarPorId($_GET['id']);


?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <link rel="stylesheet" href="../style.css">
    <meta charset="UTF-8">
    <title>Editar Artigo</title>
</head>

<body>
    <div id="pagina-inicial">
        <h1>Editar Artigo</h1>
        <form action="editar-post.php" method="post">
            <p>
                <label for="titulo">Digite o novo título do post</label>
                <input class="campo-form" type="text" name="titulo" id="TITULO_POST" value="<?php echo $pst['TITULO_POST']; ?>" />
            </p>
            <p>
                <label for="conteudo">Digite o novo conteúdo do post</label>
                <textarea class="campo-form" type="text" name="conteudo" id="CONTEUDO_POST"><?php echo $pst['CONTEUDO_POST']; ?></textarea>
            </p>
            <p>
                <input type="hidden" name="id" value="<?php echo $pst['ID_POST']; ?>" />
            </p>
            <p>
                <button class="botao">Editar Post</button>
            </p>
        </form>
    </div>
</body>

</html>