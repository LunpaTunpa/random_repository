// Variavel com os objetos pricipais \/
var state = {board:[], currentGame:[], saveGames:[]};
// Função de inico do programa \/
function start() 
{
    readLocalStorage();
    render(); // Chama a função;
    newToGame(); // Chama a função;

}
// Função responsavel pela associação dos jogos salvos em cache \/
function  readLocalStorage()
{
    // SE o navegador NÃO possuir arquivos cache (Local Storage) FAÇA: \/ 
    if(!window.localStorage)
    {
        return; // Retorne nulo;
    }
    else
    {
        var localStorageSG = window.localStorage.getItem('sg'); // Associação da variavel ao item salvo em cache na chave sg;
        // SE for um valor associado a varivel FAÇA: \/
        if(localStorageSG)
        {
            state.saveGames = JSON.parse(localStorageSG); // Torne a variavel um valor legivel em string;
        }
    }
}
// Função responsavel pela marcação dos jogos salvos em cache \/
function  writeLocalStorage()
{
    window.localStorage.setItem('sg', JSON.stringify(state.saveGames)); // Escreva (adcione) no cache do navegador o jogo salvo na cahve;
}
// Função de renderização da UI do jogo \/
function render()
{
    createToBoard(); // Chama a função; 
    renderToBoard(); // Chama a função;
    renderToButtons(); // Chama a função;
    renderToSaveGames(); // Chama a função;
}
// Função responsavel pela rederização do quadro do jogo \/
function renderToBoard() 
{
    var divBoard = document.querySelector('#msBoardNumbers'); // Variavel de associação a identificação div no HTML;
    divBoard.innerHTML = ''; // Torna null o valor da variavel;

    var ulNum = document.createElement('ul'); // Variavel de criação do elemnto ul no HTML;
    ulNum.classList.add('nums'); // Adcione a classe gráfica ... no CSS a liNum;
    // PARA i igual a 0, ENQUANTO i for menor que o tamnho maximo do quadro, ADICIONE 1 em i e FAÇA: \/
    for( var i = 0; i < state.board.length; i++)
    {
        var currentNum = state.board[i]; // Variavel de associação do valor ATUAL de i;
        var liNum = document.createElement('li'); // Variavel de criação do elemento li no HTML;
        liNum.classList.add('num'); // Adcione a classe gráfica ... no CSS a liNum;
        liNum.textContent = currentNum; // Associação como texto entre as variaveis liNum e currentNum;
        liNum.addEventListener('click', handNumClick); // Adição do evento de clique associado a função handnNumClick;
        // SE o numero na coleção já estiver em jogo no estado atual do numero FAÇA:
        if(thisNumCheck(currentNum))
        {
            liNum.classList.add('selected-num'); // Adcione a classe gráfica ... no CSS a liNum;
        }
        ulNum.appendChild(liNum); // Adicione um "filho" a variavel ulNum;
    }

    divBoard.appendChild(ulNum); // Adicione um "filho" a variavel divBoard;

    // "filho" corresponde de certo modo a associação de variaveis em sub-classes.
}
// Função responsavel pela rederização das coleções salvas em jogo \/
function renderToSaveGames() 
{
    var divSaveGames = document.querySelector('#msSaveGames'); // Variavel de associação a identificação div no HTML;
    divSaveGames.innerHTML = ''; // Torna null o valor da variavel;
    // SE o estado atual dos jogos salvos corresponder ao valor 0 FAÇA: \/
    if(state.saveGames.length === 0)
    {
        divSaveGames.innerHTML = '<p>Não há jogos salvos!</p>' // Escreve em paragrafo ...
    }
    else
    {
        var ulSaveGame = document.createElement('ul'); // Variavel de criação do elemnto ul no HTML;
        // PARA i igual a 0, ENQUANTO i for menor que o tamnho maximo de jogos salvos, ADICIONE 1 em i e FAÇA: \/
        for( var i = 0; i < state.saveGames.length; i++)
    {
        var currentNum = state.saveGames[i]; // Variavel de associação do valor ATUAL de i;
        var liSaveGame = document.createElement('li'); // Variavel de criação do elemento li no HTML;
        liSaveGame.textContent = currentNum.join(' | '); // Associação como texto entre as variaveis liSaveGame e currentNum tendo antes ", ";

        ulSaveGame.appendChild(liSaveGame); // Adicione um "filho" a variavel ulSaveGame;
    }

    divSaveGames.appendChild(ulSaveGame); // Adicione um "filho" a variavel divBoard;
    }
}
// Função responsavel pela rederização dos botões do jogo \/
function renderToButtons()
{
    var divButtons = document.querySelector('#msButtons'); // Variavel de associação a identificação div no HTML;
    divButtons.innerHTML = ''; // Torna null o valor da variavel;

    var buttonNewGame = createButtonNG(); // Associação da variavel com a função do botão de novo jogo;
    var buttonRandomGame = createButtonRG(); // Associação da variavel com a função do botão de jogo aleatório;
    var buttonSaveGame = createButtonSG(); // Associação da variavel com a função do botão de salvar o jogo;

    divButtons.appendChild(buttonNewGame); // Adicione um "filho" a variavel divButtons;
    divButtons.appendChild(buttonRandomGame); // Adicione um "filho" a variavel divButtons;
    divButtons.appendChild(buttonSaveGame); // Adicione um "filho" a variavel divButtons;
}
// Função responsavel pela criação do botão de novo jogo \/
function createButtonNG()
{
    var button = document.createElement('button'); // Variavel de criação do elemento button no HTML;
    button.textContent = 'Novo Jogo'; // Associação como texto da variavel button com a frase "Novo Jogo";

    button.addEventListener('click', newToGame); // Adição do evento de clique associado a função newToGame;

    return button; // Retorne o valor da variavel;
}
// Função responsavel pela criação do botão de jogo aleatório \/
function createButtonRG()
{
    var button = document.createElement('button'); // Variavel de criação do elemento button no HTML;
    button.textContent = 'Jogo Aleatório'; // Associação como texto da variavel button com a frase "Novo Jogo";

    button.addEventListener('click', randomToGame); // Adição do evento de clique associado a função newToGame;

    return button; // Retorne o valor da variavel;
}
// Função responsavel pela criação do botão de salvar o jogo \/
function createButtonSG()
{
    var button = document.createElement('button'); // Variavel de criação do elemento button no HTML;
    button.textContent = 'Salvar Jogo Atual'; // Associação como texto da variavel button com a frase "Novo Jogo";
    button.disabled = !thisGameCheck(); // Desabilita o botão de SaveGame quando NÃO for completo o jogo;

    button.addEventListener('click', saveToGame); // Adição do evento de clique associado a função newToGame;

    return button; // Retorne o valor da variavel;
}
// Função responsavel pela ação de clicar no quadro do jogo \/
function handNumClick(event)
{
    var value = Number(event.currentTarget.textContent); // Associação da variavel a conversão p/ valor numérico do evento de clique que identifica o num clicado no conteudo exibido;
    // SE o numero clicado e associado a value, estiver em jogo FAÇA: \/
    if(thisNumCheck(value))
    {
        removeNumToGame(value); // Chama a função atribuindo-a value;
    }
    // SE NÃO FAÇA:
    else
    {
        addNumToGame(value); // Chama a função atribuindo-a value;
    }

    render(); // Chama a função p/ associação gráfica;
}
// Função de base p/ a montagem da UI do jogo \/
function createToBoard()
{
    state.board = []; // Torne o valor do quadro vazio (null);

    // PARA i igual a zero, ENQUANTO for menor ou igual a 60, ADICIONE mais um em i e FAÇA: \/
    for(var i = 1; i <= 60; i++)
    {
        state.board.push(i); // Adicione 1 na UI;
    }

    // Dica, sempre faça a máquina trabalhar para ti, nunca o contratio.
}
// Função de inserção e controle dos numeros do jogo\/
function addNumToGame(num) 
{
    // SE o os numeros do jogo inseridos forém MENOR que 1 ou MAIOR que 60 FAÇA: 
    if (num < 1 || num > 60) 
    {
        console.error('Invalid number', num); // Mostre a mensagem de erro " ... " no console;
        return; // Remova-o (SAIR DA FUNÇÂO)
    }
    // SE o tamanho do jogo for DIFERENTE de 6 FAÇA: \/
    if (state.currentGame.length >= 6) 
    {
        console.error('Invalid game size! Number removed:', num); // Mostre a mensagem de erro " ... " no console;
        return; // Remova-o (SAIR DA FUNÇÂO) 
    }
    // SE o os numeros do jogo inseridos se reptir alguma hora FAÇA: \/
    if (thisNumCheck(num)) 
    {
        console.error('Number', num, 'is already in play'); // Mostre a mensagem de erro " ... " no console;
        return; // Remova-o (SAIR DA FUNÇÂO);
    }
    state.currentGame.push(num); // Adcione o valor dado ao numero do jogo
}
// Função de remoção e controle dos numeros do jogo \/
function removeNumToGame(numRemove) 
{


    var newGame = []; // Variavel de controle de uma nova coleção de numeros em jogo;

    // ENQUANTO i for igual a 0 e menor que o tamanho maximo do jogo, adcione ao jogo: \/
    for (var i = 0; i < state.currentGame.length; i++) 
    {
        var cNum = state.currentGame[i]; // Variavel correspondente aos numeros em jogo;
        // SE for cNunm igual a numero removido FAÇA: \/
        if (cNum === numRemove) 
        {
            continue; // Continue o programa;
        }
        // SE NÃO ... FAÇA: \/
        else
        {
            newGame.push(cNum); // Adicone em cNum o numero;
        }
    }

    state.currentGame = newGame;
}
// Função que cria um novo jogo, tornando seu valor 0 \/
function newToGame()
{
    resetToGame(); // Chama a função;
    render(); // Chama a função;
}
// Função que cria um jogo aleatório \/
function randomToGame()
{
    resetToGame(); // Chamada da função;
    // ENQUANTO a coleção do jogo NÃO estiver completa FAÇA: \/
    while(!thisGameCheck())
    {
        var randomNum = Math.ceil(Math.random() * 60); // Associação da varivel de numeros aleatórios a operação da geração de um numoro entre 0 e 1 multiplicado por 60 e arredondado p/ cima; assim se mantendo entre os valores 1 e 60;
        addNumToGame(randomNum); // Associação da função a varivel local do numero aleatório;
    }

    render(); // Chama a função p/ associação gráfica;
}
// Função que guarda a coleção de numeros do jogo \/
function saveToGame()
{
    // SE for, coleção de numeros do jogo, NÃO completa FAÇA: \/
    if(!thisGameCheck())
    {
        console.error('This game is not completed!'); // Mostre a mensagem de erro " ... " no console;
        return; // Remova-o (SAIR DA FUNÇÂO);
    }
    // SE NÃO ... FAÇA: \/
    else
    {
        state.saveGames.push(state.currentGame); // Adcione uma coleção de numeros do jogo a os jogos salvos;
    }
    writeLocalStorage(); // Chamada da função;
    newToGame(); // Chamada da função;
}
// Função que apaga a coleções de numeros em jogo \/
function resetToGame()
{
    state.currentGame = []; // TORNE a lista vazia...
}
// Função de checagem dos numeros em jogo \/
function thisNumCheck (numCheck) 
{
    return state.currentGame.includes(numCheck); // QUANDO o numero já estiver na lista (true) FAÇA... QUANDO não estiver (false), NÃO FAÇA NADA
}
// Função de checagem das coleções de numeros em jogo \/
function thisGameCheck ()
{
    return state.currentGame.length === 6; // QUANDO a lista já estiver com tamanho 6 FAÇA...
}

start();