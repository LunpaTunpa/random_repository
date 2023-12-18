/*
Elabore um algoritmo que oriente o usu�rio e execute as
seguintes opera��es entre dois n�meros reais, de acordo com a escolha
selecionada: (1) soma (2) subtra��o (3) multiplica��o (4) divis�o (5) potencia��o (6)
finalizar. O programa deve garantir que o usu�rio n�o insira op��es inv�lidas. O
resultado dever� ser apresentado na tela com precis�o de 3 casas decimais.
*/
#include<stdio.h>
#include<stdlib.h> //usado para controle de processos como no "Exit"
#include <math.h>// Usado para a opera�ao "pow" em potencia�ao
int main(void){
    float x=0, y=0, resultado=0;
    int op=0;
    do{
        printf("\n::::::Menu:::::\n");
    	printf("\n\t1 - SOMA\n\t2 - SUBTRACAO\n\t3 - MULTIPLICACAO\n\t4 - DIVISAO\n\t5 - POTENCIACAO\n\t6 - SAIR\n");
    	printf("\nDigite o primeiro numero: ");
    	scanf("%f", &x); //recebendo so usuario o primeiro numero para a opera�ao
    	printf("\nDigite o segundo numero: ");
    	scanf("%f", &y); // recebendo do usuario o segundo numero para as opera�oes
    	printf("\nDigite o numero da operacao a ser feita: ");
    	scanf("\n %i", &op); //recebendo do usuario a op�ao do Menu
        switch(op){ //switch case dando as op�oes
        case 1:
            resultado = x+y;
            break;
        case 2:
            resultado = x-y;
            break;
        case 3:
            resultado = x*y;
            break;
        case 4: 
            resultado = x/y;
            break;
        case 5: 
            resultado = pow(x, y);
            break;
        case 6: 
        	printf("Encerrando o Programa");
            return 0;
        default:
            printf("\n Digite uma opcao valida\n");
            break;
        }
        printf("\n\t O resultado e: %0.3f", resultado);
        printf("\n");

    }while(op!=6);
    return 0;
}
