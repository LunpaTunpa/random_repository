#include <stdio.h>

int main(void)
{
	int A;
	
	for( ; ; )
	{
		printf("| Insira um valor para A = ");
		scanf("%d", &A);
		printf("| \n");
	
		if( A <= 13 )
		{
			printf("| \n");
			printf("| Valor valido, acesso liberado");
			break;
		}
	}
	
	return(0);

}
