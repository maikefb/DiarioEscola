var clientes = [
    {
        id: 1,
        nome : "Luis Santos Silveira",
        idade: 18
    },
    {
        id: 2,
        nome: "Ricardo Lopes Alves",
        idade: 30
    },
    {
        id: 3,
        nome: "Gustavo Silva Junior",
        idade: 26
    }
];

var numero = "5(1)9-876-543-21";

var clienteNomes = [];

clientes.forEach(cliente => {
    var clienteAux = cliente.nome.split(" ");
    clienteNomes.push(clienteAux[2] + ", " + clienteAux[0]);
});

clienteNomes.forEach(nomes => console.log(nomes));


var numeroAux = numero.replace(/[^0-9]/g, "");
var numeroFormatado =
  "(" +
  numeroAux.slice(0, 2) +
  ")" +
  "_" +
  numeroAux.slice(2, 3) +
  "_" +
  numeroAux.slice(3, 7) +
  "-" +
  numeroAux.slice(7); 

console.log(numeroFormatado);