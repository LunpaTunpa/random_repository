#include <stdio.h>

int main()
{
	    //Variaveis
	int N1, N2, N3, M;
	
	printf("| Calcule sua m�dia bimestral \n");
	printf("| \n");
	//Entrada dos valores das variaveis
	printf("| Quanto voc� tirou na prova 1? ");
	 scanf("%f" ,&N1);
	printf("| Quanto voc� tirou na prova 2? ");
	 scanf("%f" ,&N2);
	printf("| Quanto voc� tirou na prova 3? ");
	 scanf("%f" ,&N3);
	printf("| \n");
	 
    M=(N1+N2+N3)/3;
    
	if(M<=30)
	{
	 printf("| Voc� est� REPROVADO");	
	}
    else if(M<=70)
	{
	 printf("| Voc� fara novamente a PROVA");	
	}
    else if(M<=100)
	{
     printf("| Voc� est� APROVADO");	
	}
	
	return(0);
}
