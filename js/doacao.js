
function a(){
    let nome = document.querySelector("#nome").value;
    let cpf = document.querySelector("#Cpf").value;
    let email = document.querySelector("#Email").value;
    let valor = document.querySelector("#Valor").value;
   
    if(nome == ""){
        alert("Nome não foi preenchido!")
    }else if(cpf == ""){
        alert("Cpf não foi preenchido!")
    }else if(email == ""){
        alert("E-mail não foi preenchido!")
    }else if(valor == ""){
        alert("Valor não foi preenchido!")
    }else{
        alert("Muito Obrigado por doar. Sua doacão foi feita com Sucesso!")
    }
}