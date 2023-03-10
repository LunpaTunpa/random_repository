// Variaveis globais/principais do jogo \/
// Sons \/
let sMusic; // Trilha sonora de fundo

// Variaveis globais das raquetes \/
// Posição inicial da raquete do jogador \/
let xpRacket = -3; // Em X 
let ypRacket = 170; // Em Y
// Posição inicial da raquete do oponente \/
let xoRacket = 590; // Em X
let yoRacket = 170; // Em Y
// Proporções das raquetes \/
let cRacket = 13; // Comprimento da raquete
let aRacket = 70; // Altura da raquete
// Velocidade de movimentação das raquetes \/
let vpRacket = 7; // Raquete do jogador
let voRacket = 0; // Raquete do oponente
// Sons das raquetes \/
let sRacket; // Ao rebater a bola

// Variaveis globais da bola \/
// Posição inicial da bola \/
let xBall = 300;// Eixo X
let yBall = 200;// Eixo Y
// Dimensões da bola \/
let dBall = 20; // Diametro
let rBall = (dBall / 2); // Raio
// Velocidade da bola \/
let vxBall = 7;// Em X
let vyBall = 7;// Em Y

// Variaveis principais da biblioteca importada p5.collide2d \/
// Variavel de verificação se a bola colidio com a raquete do jogador \/
let collisionBall = false

// Variaveis globais de funcionalidades do jogo \/
// Placar de pontos \/
let pScore = 0; // Pontos do jogador
let oScore = 0; // Pontos do oponente
// Chance de erro no movimento do oponente\/
let eoRacket = 0; 
// Sons do placar \/
let sScore; // Ao fazer ponto

// Função de pré-carregamento do jogo
function preload() {
  
  // Associação das variaveis a os arquivos de som, do jogo, quando convocados \/
  sRacket = loadSound("S01 raquetada.mp3"); // Ao rebater a bola
  sMusic = loadSound("S02 trilha.mp3"); // Trilha sonora de fundo
  sScore = loadSound("S03 ponto.mp3"); // Ao fazer ponto
}

// Função geral \/
function setup() {
  createCanvas(600, 400); // Cria a tela de fundo
  
  sMusic.loop(); // Poem a variavel sonora da trilha em repetição
  
}
// Função da tela do jogo \/
function draw() {
  
  background(005); // Coloração do fundo
  
  line(300, 400, 300, 0); // Marcação central (X de cima, Limite da linha em Y, X em baixo, Ponto de origem da linha em Y)
  line(0, 0, 600, 0); // Marcação de cima
  line(0, 400, 600, 400); // Marcação de baixo
    stroke(150); // Adiciona um contorno semibranco a todas as formas
  
  ball(); // Chamada da função ball
  racket(xpRacket,ypRacket); // Chamada da função racket atribuindo as posições X e Y da raquete do jogador
  racket(xoRacket,yoRacket); // Chamada da função racket atribuindo as posições X e Y da raquete do oponente
  score ();

}
// Função do comportamento da bola \/
function ball() {

  // Desenho da bola de acordo com as variaveis \/
  circle(xBall, yBall, dBall);
  
    // Movimentação da bola apartir da soma, constante, da posição com a velocidade \/
    xBall += vxBall; // Em X
    yBall += vyBall; // Em Y

    // Colisão da bola com a borada \/
    // SE a posição X da bola, somada com o raio, for maior que o limite(maximo horizontal) da tela: inverta a velocidade em X. OU SE a posição X da bola, subitraida com o raio, for menor que o limite(minimo horizontal) da tela: inverta a velocidade em X \/
    if (((xBall + rBall) > width) || ((xBall - rBall) < 0)) {
      vxBall *= -1;
    }
    // SE a posição Y da bola, somada com o raio, for maior que o limite(maximo vertical) da tela: inverta a velocidade em y. OU SE a posição y da bola, subitraida com o raio, for menor que o limite(minimo vertical) da tela: inverta a velocidade em Y \/
    if (((yBall + rBall) > height) || ((yBall - rBall) < 0)) {
      vyBall *= -1;
    }
  
    // Colisão da bola com a raquete do jogador \/
    // SE a a posição X da bola subtraida com seu raio, for MENOR que a posição X da raquete do jogador somada com seu comprimeto; E a posição Y da bola subtraida com seu raio, for MENOR que a posisão Y da raquete do jogador somada com sua altura; E a posição Y da bola somada com seu raio, for MAIOR que a posição Y da raquete, FAÇA: inverta a velocidade da bola em X \/
    //> if (((xBall - rBall) < (xpRacket + cRacket)) && ((yBall - rBall) < (yRacket + aRacket)) && ((yBall + rBall) > (yRacket))) {
      //> vxBall *= -1; // Inverta a velocidade no eixo X da bola
    //> }
  
    collision_ball_racket(xpRacket,ypRacket); // Chama a função collision_ball_pracket, atribuindo as posições X e Y da raquete da raquete dp jogador
    collision_ball_racket(xoRacket,yoRacket); // Chama a função collision_ball_pracket, atribuindo as posições X e Y da raquete do oponente
  
    // Parametros para a bola não travar atrás das raquetes \/
    // SE xBall for menor que 0, e vá travar na raquete do jogador, FAÇA:
    if (xBall < 0) {
      xBall += 23; // Some 23 a posição X da bola
    }
    // SE xBall for maior que 600, e vá travar na raquete do oponente, FAÇA:
    if (xBall > 600) {
      xBall -= 23; // Subtraia 23 da posição X da bola
    }
}

// Função do comportamento das raquetes \/
function racket(X,Y) {
  
  // Desenha a raquete do jogador e do oponente(retangulo) de acordo com as variaveis \/
  rect(X, Y, cRacket, aRacket); // X para atribuição ao chamar, Y para atribuição ao chamar, Comprimento, Altura
  
    // Movimento da raquete do oponente \/
    voRacket = yBall - yoRacket - (cRacket / 2) - eoRacket;
      yoRacket += voRacket;
      // Calculo da chance para o oponenete errar \/
      // SE os pontos do oponete forem maiores que os pontos do jogador, FAÇA:
      if (oScore > pScore) {
        eoRacket = 70; // Determine a chance de erro do oponente como 70 (valor base)
      }
      // SE os pontos do oponete forem menor que os pontos do jogador E menor que o valor base da chance de erro do oponente, FAÇA
      if (oScore < pScore && eoRacket) {
        eoRacket -= 5; // Subtraia 5 da chance de erro do oponente
      }

      
    // Movimentação da raquete do jogador \/
    if(keyIsDown(87)) { // SE a tecla W estiver precionada
      ypRacket -= vpRacket // Subtração da posição Y, da raquete, em 10
    }
    if(keyIsDown(83)) { // SE a tecla S estiver precionada
      ypRacket += vpRacket // Soma da posição Y, da raquete, em 10
    }
}
// Função de colisão da bola com a raquete do jogador c/ a biblioteca p5.collide2d \/
function collision_ball_racket(Xr,Yr) {
  
  // Atribuição da variavel responsavel pela verificação da colisão da bola, a o resultado que essa função é a raquete do jogador e a bola \/
  collisionBall = collideRectCircle(Xr, Yr, cRacket, aRacket, xBall, yBall, dBall); // Os 4 primeros parametro referênciam as caracteristicas da raquete do jogador (X, Y, COMPRIMENTO, ALTURA), já os 3 ultimos fazem referência as carct. da bola (X, Y, DIAMETRO)
  
    // SE a variavel responsavel pela verificação da colisão da bola, for verdadeira FAÇA:
    if (collisionBall) {
      vxBall *= -1; // Inverta a velocidade no eixo X da bola
      sRacket.play(); // Som de colisão da bola com as raquetes
    }
  
}
// Função do placar do jogo e seus comportamentos
function score() {
  
  // Mostra o placar no topo da tela
  textSize (21); // Altera a proporção do texto
  textAlign (CENTER); // Centraliza o texto em relção a ele mesmo
  fill (20); // Altera a coloração para próxima de preto
    rect (125, 6, 50, 23); // Cria um retangulo na tela
  fill (255); // Altera a coloração para branco
    text (pScore, 150, 25); // Posiciona e atribue o placar do jogador
  fill (20); // Altera a coloração para próxima de preto
    rect (425, 6, 50, 23); // Cria um retangulo na tela (X, Y, Comprimento, Altura)
  fill (255); // Altera a coloração para branco
    text (oScore, 450, 25); // Posiciona e atribue o placar do jogador
  
  // Marcador de pontuação caso passe das raquetes \/
    // SE a posição X da bola for menor que 7, acrecente 1 ponto ao placar do oponente \/
    if (xBall < 7) {
      oScore += 1;
      sScore.play(); // Som da marcação do ponto do oponente
    }
    // SE a posição X da bola for maior que 593, acrescente 1 ponto ao placar do jogador \/
    if (xBall > 593) {
      pScore += 1;
      sScore.play(); // Som da marcação do ponto do jogador
    }
}
