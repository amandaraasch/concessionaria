<?php

    require_once("conecta.php");
    $id = $_GET['idCaro'];
    $nomecarro = $_GET['modelo'];

    $comando = $pdo->prepare("SELECT concessionarias.* FROM concessionarias INNER JOIN  
    alocacao ON concessionaria.idconcessrionaria = alocacao.concessionaria_idConcessionaria
    INNER JOIN automoveis ON automoveis.idAutomoveis = alocacao.automoveis_idAutomoveis
    WHERE alocacao.idAutomoveis = :id")

    $comando->bindParam(':id', $id);
    $comando->execute();

    $concessionarias=array();
    while($concessionaria = $comando->fetch(PDO::FETCH_ASSOC)){
        array_push($concessionarias,$c);
    
    }    

    $comandoClientes = $pdo->prepare("SELECT * FROM  cliente");
    $comandoClientes->execute();
    
    $clientes=array();
    while($c = $comandoClientes->fetch(PDO::FETCH_ASSOC)){
        array_push($clientes,$c);
    }
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vender Carro</title>
</head>
<body>
    <h1>Carro <?=$GET['modelo'];?></h1>

    <form action ="venderCarro.php"  method="post">
        <input type="hidden" name="idCarro" value="<?=$id?>">
        <select name="idConcessionaria">
            <?php
            foreach($concessionarias as $c){?>

                <option value="<?$c['nomeconcessionaria']?>"><?$c['nomeconcessionaria']?></option>
                <?php}?>
        </select>

        <select name="cliente">
            <?php
            foreach($concessionarias as $c){?>

                <option value="<?$c['nomecliente']?>"><?$c['nomecliente']?></option>
                <?php}?>
        </select>

        <button type ="submit">vender carros</button>
            </form>



</body>
</html>