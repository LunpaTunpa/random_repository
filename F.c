#include <stdio.h>

int main()
{
	//Variaveis
	float A1, B1, R1, ID;
	
	//Entrada dos valores das variaveis
	printf("- De um valor de A1 = ");
	 scanf("%f" ,&A1);
	printf("- De um valor de B1 = ");
	 scanf("%f" ,&B1);
	
	//Se A1 for maior que B1 faça A1-B1, se não A1+B1
	if(A1>B1)
	 {
	 R1=A1-B1;
	 printf("\n> Resultado: %.0f \n\n", R1);
	 }
	else
	 {
	 R1=A1+B1;
	 printf("\n> Resultado: %.0f \n\n", R1);
	 }
	

	system("PAUSE");
	return(0);
}

