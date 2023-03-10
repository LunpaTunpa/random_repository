// Função de inico do programa \/
function start() 
{
    console.log ('START'); // Escreva no console a '...'

    var buttonCalc = document.querySelector('#buttonCalcImc'); // Variavel de calculo requerindo o botão no arquivo "imc.html" c/ identificação "buttonCalcImc"
    buttonCalc.addEventListener('click', handleButtinCalc); // Adcione a funcionalidade de QUANDO o botão for clicado (click) execute a função " ... "
}
// Função de ação ao clicar no botão de cálculo do IMC \/
function handleButtinCalc() 
{
    var inW = document.querySelector('#inWeigth'); // Variavel que recebe o identificação do peso do usuario 
    var inH = document.querySelector('#inHeigth'); // Variavel que recebe o identificação da altura do usuario

    var W = Number(inW.value); // Pega a variavel do peso e insere na variavel de controle W, c/ o valor préfixado em numeros decimais
    var H = Number(inH.value); // Pega a variavel da altura e insere na variavel de controle H, c/ o valor préfixado em numeros decimais

    var result = document.querySelector('#imcResult'); // Variavel que recebe o identificação do resultado final do IMC do usuario 

    var imc = W / (H * H); // Variavel que recebe W e H p/ calcular o IMC final do usuario (W = user weigth, H = user heigth)
    result.textContent = imc.toFixed(1).replace('.', ','); // Mostra o valor da var imc fixando 1 casa decimal e substituindo o ponto pela virgula
}

start();