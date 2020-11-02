<?php include('./banco-de-dados/conexao.php'); ?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <title>Cadastro de Pedido</title>
</head>


<body>

        <center><h2>Cadastro de Produtos</h2></center>
   <form method="post" class="w-25  " style="margin:20px auto;width:300px; border: 1px solid gray; padding:15px ">
    <div class="form-group">
      <label for="nome_produto">Nome do Produto</label>
      <input type="text" name="nome_produto" id="nome_produto" class="form-control" placeholder="Digite aqui o produto desejado"> 
    </div>

    <div class="form-group">
      <label for="quantidade_produto">Número de Produtos</label>
      <input type="number" name="quantidade_produto" id="quantidade_produto" class="form-control" placeholder="Quantidade" min="0"> 
    </div>

    <div class="form-group">
      <label for="valor_unitario">Valor Unitário</label>
      <input type="number" name="valor_unitario" id="valor_unitario" class="form-control"  min="0" step="0.01"> 
    </div>

    <div class="form-group">
      <label for="valor_total">Valor Total</label>
      <input type="number" name="valor_total" id="valor_total" class="form-control"  min="0" step="0.01"> 
    </div>

    <div class="form-group">
      <label for="endereço">Endereço</label>
      <input type="text" name="endereço" id="endereço" class="form-control" placeholder="Rua, Avenida , etc..."> 
    </div>

    <div class="form-group">
      <label for="telefone">Telefone</label>
      <input type="text" name="telefone" id="telefone" class="form-control" placeholder="(21)99999-9999"> 
    </div>    

    <input class="btn btn-primary" type="submit" value="Enviar">
    <button class="btn btn-danger"><a href=consultaSQL.php>Pagina de Consulta</a></button>
   </form>

   <?php 
   
    if(isset($_POST['nome_produto']) && isset($_POST['quantidade_produto']) && isset($_POST['valor_unitario']) && isset($_POST['valor_total']) && isset($_POST['endereço']) && isset($_POST['telefone'])){

      echo '<script>alert("Os dados foram recebidos com sucesso")</script>';

      $nome_produto        = $_POST['nome_produto'];
      $quantidade_produto  = $_POST['quantidade_produto'];
      $valor_unitario      = $_POST['valor_unitario'];
      $valor_total         = $_POST['valor_total'];
      $endereço            = $_POST['endereço'];
      $telefone            = $_POST['telefone'];

      $sql = "insert into pedidos (nome_produto , quantidade_produto , valor_unitario , valor_total , endereço , telefone) values ('$nome_produto' , '$quantidade_produto','$valor_unitario','$valor_total','$endereço','$telefone')";

      $result = $conn->query($sql);

        if($result){
          echo '<script>alert("Cadastro realizado com sucesso")</script>';
          
        }
        else {
          echo '<script>alert("Não foi possivel realizar o cadastro")</script>';
        }

        }
      ?>

    

</body>
</html>