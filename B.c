#include <stdio.h>
#include <locale.h> // Necessário para usar setlocale

int main(void)
{
	
{
	setlocale(LC_ALL, "Portuguese");

	int T, Vi; // T = troco, Vi = Valor inserido
	char S, N, P; // S = Sim, N = Não, P = variável booleana
	char C, A, PP; // C = Confirmar, A = Anular, PP = variável booleana

	int AA = 5, B = 10, CC = 20, D = 50, E = 100; // Valores das fichas
	
	printf("| Cu: ");
		scanf("%c", &Vi);
	
	T = (Vi - (Vi/5)-(Vi/10)-(Vi/20)-(Vi/50)-(Vi/100));
	printf(" T = %d", T);
}
	
getch(0);
}
