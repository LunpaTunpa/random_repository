#include <stdio.h>
#include <math.h>
#include <locale.h> // Necessário para usar setlocale
#include <conio.h>

int main(void)
{
	setlocale(LC_ALL, "Portuguese");
	
	int DIN, TRO;
	int F5 = 0, F10 = 0, F20 = 0, F50 = 0, F100 = 0; 	
	/*DIN = Dinheiro, TRO = Troco, F5 = Ficha 5, F10 = Ficha 10, F20 = Ficha 20, 
	F30 = Ficha 30, F50 = Ficha 50, F100 = Ficha 100*/
	
	printf("============================== Máquina emissora de fichas virtuais ==============================");
	printf("\n| \n");
	
	printf("| Por favor só insira notas de R$5, R$10, R$20, R$50 e R$100; essa máquina não da troco!");
	printf("\n| \n");
	printf("| Insira o dinheiro: R$");
		scanf("%d", &DIN);
	printf("| \n");
		
	while(DIN >= 5)
	{
		
		if(DIN >= 100)
		{
			F100 = DIN/100;
			DIN%=100;
		}
		else if(DIN >= 50 && DIN <= 99)
		{
			F50 = DIN/50;
			DIN%=50;
		}
		else if(DIN >= 20 && DIN <= 49)
		{
			F20 = DIN/20;
			DIN%=20;
		}
		else if(DIN >= 10 && DIN <= 19)
		{
			F10 = DIN/10;
			DIN%=10;
		}
		else if(DIN >= 5 && DIN <= 9)
		{
			F5 = DIN/5;
			DIN%=5;
 		}
 		else
 		{
 			printf("| ERROR! \n");
		}

	}
	
	printf("| %d fichas de 5 \n", F5);
	printf("| %d fichas de 10 \n", F10);
	printf("| %d fichas de 20 \n", F20);
	printf("| %d fichas de 50 \n", F50);
	printf("| %d fichas de 100 \n", F100);
	printf("| \n");
	printf("| Total de fichas emetidas: %d\n", F5+F10+F20+F50+F100);
	printf("| \n");
	printf("===================================== Obrigado pela compra! =====================================");
	
	getch();
	return(0);
}

