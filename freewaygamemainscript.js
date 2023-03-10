// Função de pré-carregamento dos códigos \/
function preload() {
    // Associação das imagens as suas respectivas variaveis \/
    iHighway = loadImage("07_IMAGE/estrada.png"); // Plano de fundo
    iCar = [
      loadImage("07_IMAGE/carro-1.png"),
      loadImage("07_IMAGE/carro-2.png"),
      loadImage("07_IMAGE/carro-3.png"),
      loadImage("07_IMAGE/carro-1.png"),
      loadImage("07_IMAGE/carro-2.png"),
      loadImage("07_IMAGE/carro-3.png"),
    ]; // Carro , Carro 2, Carro 3
    iPlayer = loadImage("07_IMAGE/ator-1.png"); // Jogador
    sounds = [
      loadSound("08_SONG/colidiu.mp3"),
      loadSound("08_SONG/pontos.wav"),
      loadSound("08_SONG/trilha.mp3"),
    ]; // Som 1 (Colisão), Som 2 (Pontuação), Som 3 (Trilha sonora);
  }
  // Função geral \/
  function setup() {
    createCanvas(800, 400); // Define as proporções da tela
    sounds[2].loop(); // Chama a trilha sonora associada a lista em modo de loop;
    sounds[2].setVolume(0.1); // Define volume;
  }
  // Função da tela do jogo \/
  function draw() {
    background(iHighway); // Pinta a tela de fundo com a imagem do estrada
  
    // Chamada das funções \/
    car();
    player();
    viwerScore();
    scoreCounter();
  }
  