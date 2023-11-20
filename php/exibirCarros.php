<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exibir Carros</title>
</head>
<body>
    <h1>Carros da área <?=$_GET['id']?></h1>

<table>
<?php
    require_once("conecta.php");
    $id= $_GET['id'];

    $comando = $pdo->prepare("SELECT  automoveis * FROM automoveis INNER JOIN
    alocacao ON automoveis.idAutomoveis = alocacao.automoveis_idAutomoveis WHERE 
    alocacao.area = :id AND alocacao.quantidade>0 ")

    $comando->bindparam(':id', $id);
    $comando->execute();

    $carros = array();

    while ($cadaCarro = $comando->fetch(PDO::FETCH_ASSOC)) {
        array_push($carros, $cadaCarro);
    }

    foreach($carros as $c){?>
        <tr>
            <td>Modelo: <?= $c['modelo']?> </td>
            <td>Preço: <?= $c['preco']?> </td>
            <td><form action= venderCarrosForm.php method = "get">
                <input type='hiden' name='idCarro' value='<?$c['idAutomoveis']?>'>
                <input type='hiden' name='modelo' value='<?$c['modelo']?>'>
                <button type='submit' >Vender</button></form></td>

    </tr>  
    <?php }?>
    </table>
    ?>     
    

      
</body>
</html>
