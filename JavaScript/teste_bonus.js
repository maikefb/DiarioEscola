async function a() {
    b();
    await c();
    await d();
    alertUser("a")
}

a();

function b(){
    return;
    alertUser("b");
}

function c() {
    return new Promise((resolve) => {
        resolve();
        alertUser("c")
    })
}

function d() {
    return new Promise((resolve) => {
      alertUser("d");
    });
}

function alertUser(message){
    console.log("A função é: " + message);
}


// Qual a ordem dos prints no console?
// Primeiro ele printa o "c" e depois o "d"

// Existe algum erro nesse código? Se sim, comente sobre?
// Na function b, tem um ";" depois do return, assim não executando a linha de baixo onde deveria printar o "b"
// Na function d() não foi chamado o "resolve()" do promise, assim não executando o resto do codigo