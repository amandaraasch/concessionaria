<?php

require_once("conecta.php");

$id=$POST['id'];
$comando = $pdo->prepare("SELECT * FROM alocacao WHERE area = :id AND quantidae > 0" )
$comando->bindParam(':id,$id');
$comando->execute();
$linhas = $comando->rowCount();


//$comando = "SELECT * FROM alocacao WHERE area =" .$id." AND quantidade > 0 ";

//$resultado = mysqli_query ($conecta,$comando);
//$linhas = mysqli_num_rows ($resultado);

echo $linhas;
?>