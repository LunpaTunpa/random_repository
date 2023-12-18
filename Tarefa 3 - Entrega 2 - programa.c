
/*
Tarefa 3 (6,0 pontos): Desenvolva um sistema para controlar o estoque de
mercadorias da empresa Omega.
? Na parte inicial da tela deve-se constar o “nome do sistema”.
? O programa deverá indicar ao usuário que o estoque será cadastrado.
Deverá permitir o preenchimento de dois vetores, com no mínimo 5
(cinco) posições cada, onde o primeiro corresponde ao código do
produto e o segundo, ao total deste produto em estoque.
? Após o cadastro (produtos e suas quantidades), o conteúdo de ambos
os vetores deverá ser exibido na tela, cujo título é “produtos em
estoque”.
? Na sequência, outro título deverá ser exibido: “pedido do cliente”.
Nesta parte, o código do cliente (não há restrições) deverá ser
informado. No código do cliente, exibir também a opção “0”, que caso
seja digitada, o programa será finalizado. Caso isto ocorra, exibir a
mensagem “programa encerrado”.
? A seguir, o código do produto que o cliente deseja adquirir e a
quantidade deste produto deverão ser lidos pelo sistema.
? O pedido feito por um cliente só pode ser atendido integralmente, isto
é, o programa deve checar a disponibilidade do produto e escrever a
mensagem: “pedido atendido, obrigado!”.
? Efetuar a atualização do estoque somente se o pedido for atendido de
forma integral.
? Caso não exista quantidade suficiente do produto selecionado, escrever
a mensagem: “estoque insuficiente do produto (código)”.
? Após a operação, o programa deverá exibir novamente os conteúdos
dos vetores (códigos dos produtos e suas respectivas quantidades) já
atualizados.
? O programa volta a partir da leitura do código do cliente. Como já
descrito, caso o código do cliente inserido pelo usuário for igual a 0
(zero), o programa deverá ser finalizado.
*/
#include<stdio.h>
#include<stdlib.h> //usado para controle de processos como no "Exit" e "Clear"
#include<math.h>// Usado para a operaçao "pow" em potenciaçao
#include<conio.h>  // usado para o "getch"
#include<locale.h> // usado para pontuaçao e caracteres especiais como "ç"
int main(void){
	setlocale(LC_ALL,"portuguese"); 
	system("cls");
    printf("\n:::::::::OMEGA ESTOQUES::::::::\n");
    int CodCLi; // c�digo do cliente
    int Newprodq; // entrada de novo produto
    int Locprod;
    int Prods;
    int Prodsq;
    int Prodn[5];
	int Prodq[5]; 
  	// pegando produtos e collocando em vetor
  	for(int i = 0; i < 5; ++i) {
  		printf("\n> Entre o c�digo do Produto: ");
    	scanf("%d", &Prodn[i]);
    	printf("> Entre a quantidade do Produto: ");
    	scanf("%d", &Prodq[i]);
  	}

    do{
  	printf("\n\n:::::: Produtos em estoque: ::::::\n");

  	// imprimindo os vetores
  	for(int i = 0; i < 5; ++i) {
    	 printf("\n> Produto c�digo: %d\n", Prodn[i]);
    	 printf("> Quantidade: %d\n", Prodq[i]);
  	}
  	printf("\n:::::::::::::::::::::::::::::::\n");
  	printf(":::::: Pedido do Cliente ::::::\n");
  	printf(":::::::::::::::::::::::::::::::\n");
  	
  	printf("\n> Digite o c�digo (num�rico) do Cliente selecionado ou 0 para encerrar: ");
    scanf("%d", &CodCLi);
    if(CodCLi != 0){
  	printf("> Digite o c�digo de produto selecionado: ");
    scanf("%d", &Prods);
  	for(int i = 0; i < 5; ++i)
	{
        if(Prodn[i]==Prods)
        {
            Locprod=i;
            printf("\n> Produto: %d\n",Prodn[Locprod]);
            printf("> Quantidade: %d\n\n",Prodq[Locprod]);	
	}
}
	printf("> Digite a Quantidade do produto selecionado: ");
    scanf("%d", &Prodsq);
    if(Prodq[Locprod] >= Prodsq)
    {
    	printf("\n\n::::::::::::::::::::::::::::::::::::::\n");
  		printf("\n:::::: Pedido atendido, obrigado!:::::\n");
  		printf("\n::::::::::::::::::::::::::::::::::::::\n\n");
    	Newprodq = Prodq[Locprod] - Prodsq;
   		Prodq[Locprod] = Newprodq;
	}
	else
	{
		
	printf("\n::::::::::::::::::::::::::::::::::\n");	
	printf("\n> Estoque insuficiente do produto! %\n",Prodn[Prods] ); // Imprime que Estoque � igual a zero
	printf("\n::::::::::::::::::::::::::::::::::\n");
	
	}
	}
	else{
	printf("\n:::::::::::::::::::::::::::::::\n");
    printf(":::: Encerrando o Programa ::::");
    printf("\n:::::::::::::::::::::::::::::::\n");
    return 0;
	}
  }while(CodCLi!=0);
  	system("cls");
    printf("\n:::::::::::::::::::::::::::::::\n");
    printf(":::: Encerrando o Programa ::::");
    printf("\n:::::::::::::::::::::::::::::::\n");
    return 0;
}

