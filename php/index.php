<?php include('./banco-de-dados/conexao.php'); ?>

<!DOCTYPE html>
<html lang="pt-BR">
<?php
    $titulo_pagina = "Hello World"
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $titulo_pagina; ?></title>
</head>

<body>
    <?php echo "<h1>Olá Mundo, let's code!</h1>"; ?>

      <button><a href="consultaSQL.php">Ir para consulta SQL</a></button>  

</body>

</html>