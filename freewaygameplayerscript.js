// Arquivo responsavêl pelo controle e criação do jogador \/

// Variáveis globais \/
let iPlayer; // Imagem do jogador;
let xPlayer = 265; // Posição X do jogador;
let yPlayer = 367; // Posição Y do jogador;
let vPlayer = 3; // Velocidade do jogador;
let hit = false; // Colisão do jogador c/ a biblioteca P52D;
let score = 0; // Pontos do jogador;

// Função para a chamada do jogador e seus comportamentos \/
function player() {
  
  image(iPlayer, xPlayer, yPlayer, 30, 30); // Mostra o jogador (Imagem do jogador, Posição X, Posição Y, Comprimento, Altura)
  
  // Limitação da "árena" do jogador \/
  // SE a posição X do jogador for menor que 0, FAÇA: \/
  if(xPlayer < 0)
  {
    xPlayer = 1; // Retorne a posição X do jogador = 1;
  }
  // SE NÃO for, mas SE a posição X do jogador for maior que 770, FAÇA: \/
  else if(xPlayer > 770)
  {
    xPlayer = 769; // Retorne a posição X do jogador = 769;
  }
  // SE NÃO for, mas SE a posição Y do jogador for maior que 368, FAÇA: \/
  else if(yPlayer > 368) 
  {
    yPlayer = 367; // Retorne a posição Y do jogador = 367;
  }
  // SE NÃO for, FAÇA: \/
  else
  {
    // Nada;
  }
    
  // Movimentação do jogador \/
  // Em X \/
    if(keyIsDown(65)) { // SE a tecla A (ESQUERDA) estiver precionada faça:
      xPlayer -= vPlayer // Subtração da posição X com a velocidade (pré-definida) do jogador
    }
    if(keyIsDown(68)) { // SE a tecla D (DIREITA) estiver precionada faça:
      xPlayer += vPlayer // Soma da posição YXcom a velocidade (pré-definida) do jogador
    }
  // Em Y \/
    if(keyIsDown(87)) { // SE a tecla W (CIMA) estiver precionada faça:
      yPlayer -= vPlayer // Subtração da posição Y com a velocidade (pré-definida) do jogador
    }
    if(keyIsDown(83)) { // SE a tecla S (BAIXO) estiver precionada faça:
      yPlayer += vPlayer // Soma da posição Y com a velocidade (pré-definida) do jogador
    }
}
// Função p/ exibição dos pontos do jogador
function viwerScore() {
  
  // Visualização dos pontos: \/
  fill(255,255,255); // Preenche o texto com a cor Hexdecimal
  textAlign(CENTER); // Alinha o centro do texto ao centro de seu movimento;
  textSize(25); // Muda o tamanho do texto;
  text(score, width /3, 27); // Exibe o texto N na cordenada X e Y;
}
// Função responsavel pelo controle dos pontos e colisões que os controlam \/
function scoreCounter()
{
    
  // Marcação dos pontos: \/
  // SE a posição Y do jogador for menor que 5 FAÇA: \/
  if(yPlayer < 5) 
  {
    score += 1; // Adcione 1 ao valor da variavel;
    yPlayer = 367; // Torne a posição Y do jogador no valor padrão;
    sounds[1].play(); // Chama o som do ganho de ponto associada a lista em modo de toque unico;
  }
  // PARA a variável de controle i igual a 0, ENQUANTO i for menor que o numero de imagens de carro, Adcione mais 1 a i e FAÇA: \/
  for( let i = 0; i < iCar.length; i++)
    {
    // SENDO a variavel igual a (Posição X dos carros, Posição Y dos carros, comprimento do carro, largura do carro, Posição X dos do jogador, Posição Y do jogador, dimetro do jogador);
    hit = collideRectCircle(xCar[i], yCar[i], 60, 35, xPlayer, yPlayer, 25); 
        // SE hit for verdadeiro FAÇA: \/
      if(hit)
      {
        yPlayer = 367; // Torne a posição Y do jogador em seu valor padão;
        sounds[0].play(); // Chama o som da colisão associada a lista em modo de toque unico;
        // ENQUANTO a quantidade de pontos do jogador for maior que zero, FAÇA: \/
        if(score > 0)
        {
          score -= 1; // Diminua 1 do valor dos pontos;
        }
      }
   }
}