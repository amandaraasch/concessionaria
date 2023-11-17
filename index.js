function exibirArea(id){
    console.log(id);
    $.ajax({
        type:'POST',
        url:'php/verificarArea.php',
        data:{id:id},
        sucess: function(quantidade){
            alert("Quantidade recebida" + quantidade);
            if(quantidade >0){
                window.location.href='php/exibirCarros.php?id=' +id
            }else{
                alert("Essa página não possui carros!");
            }
        }
    })

}
