// Arquivo responsavêl pelo controle e criação dos carros do jogo \/

// Variáveis globais \/
let iCar; // Imagem do carro;
let xCar = [790, 790, 790, 10, 10, 10]; // Posição inicial em X dos carros;
let yCar = [40, 95, 145, 210, 265, 315]; // Posições iniciais em Y dos carros;

// Variáveis randomicas aproximadas das velocidades dos carros \/
let vOne = (Math.ceil(Math.random() * 7));
let vTwo = (Math.ceil(Math.random() * 10));
let vThree = (Math.ceil(Math.random() * 15));
let vFour = (Math.ceil(Math.random() * 15));
let vFive = (Math.ceil(Math.random() * 10));
let vSix = (Math.ceil(Math.random() * 7));

let vCar = [ vOne, vTwo, vThree, vFour, vFive, vSix]; // Velociade padrão dos carros;

// Função para a chamada do carro \/
function car() {
  
  // PARA a variavel de controle i, ENQUANTO i for menor que a quantidade de imagens de carro, FAÇA: Adcione mais 1 em i \/
  for( let i = 0; i < iCar.length; i++) {
    image(iCar[i], xCar[i], yCar[i], 60, 40); // Mostra os carros (Imagem do carro, Posição X, Posição Y, Comprimento, Altura);
    
    xCar[i] -= vCar[i]; // Define a movimentação dos carros em X, subtraindo a posição X pelo valor (pré-definido) da velocidade do carro;
    
    // Retorno do carro \/
    // SE a posição X do carro que vem pela direita for maior que (-200) ou a posição X do carro que vem pela esquerda for maior que (1000) FAÇA: \/
    if (xCar[i] < (-200)) {
      xCar[i] = 790; // Torne a posição X do carro vindo pela direita igual a 790 (Valor inicial);
    }
  }
}