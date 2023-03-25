#include <stdio.h>

int main()
{
	    //Variaveis
	int N1, N2, N3, M;
	
	printf("| Calcule sua média bimestral \n");
	printf("| \n");
	//Entrada dos valores das variaveis
	printf("| Quanto você tirou na prova 1? ");
	 scanf("%f" ,&N1);
	printf("| Quanto você tirou na prova 2? ");
	 scanf("%f" ,&N2);
	printf("| Quanto você tirou na prova 3? ");
	 scanf("%f" ,&N3);
	printf("| \n");
	 
    M=(N1+N2+N3)/3;
    
	if(M<=30)
	{
	 printf("| Você está REPROVADO");	
	}
    else if(M<=70)
	{
	 printf("| Você fara novamente a PROVA");	
	}
    else if(M<=100)
	{
     printf("| Você está APROVADO");	
	}
	
	return(0);
}
