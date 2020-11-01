<?php include('./banco-de-dados/conexao.php'); ?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta SQL</title>
</head>
<body>

    <?php 
    
        $sql = "select nome_produto , quantidade_produto , valor_unitario , valor_total , endereço ,  telefone from pedidos";
        
        $result = $conn->query($sql);

    while($row = $result->fetch_assoc()){
        echo "<p> Nome do produto: " .$row['nome_produto']. "<br> Numero de pedidos igual a : " .$row['quantidade_produto']."<br> Preço unitário igual a : ".$row['valor_unitario']."<br>  Valor total igual a : ".$row['valor_total']."<br> Endereço do cliente : ".$row['endereço']."<br> Telefone ".$row['telefone']."</p><hr>";
    }
    

    ?>

    <button><a href="index.php">Pagina Principal</a></button>
    
</body>
</html>