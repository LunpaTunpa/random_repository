#include <stdio.h>

int main (void)
{

int a = 25;
int b = 10;
int c = 5;
int d = 1;
float f = 0;

do
 printf("Quanto de troco deseja receber? ");
while ( f < 0 );

if ( f == 0 )
 printf("Obrigado volte sempre!\n");

if ( f > 0 )
 printf("Este troco exige %.2f moedas.\n", f);
 


int troco,n50,n20,n10,n5,n2,n1;
    /*inserir a quantia */

    printf("insira o troco");

    scanf("%d",&troco);

    /*calculo de 50 */

    n50=troco/50;
    troco=troco%50;

    /*calculo de 20 */

    n20=troco/20;
    troco=troco%20;

    /*calculo de 10 */

    n10=troco/10;
    troco=troco%10;

    /*calculo de 5 */

    n5=troco/5;
    troco=troco%5;

/*calculo de 2 */

    n2=troco/2;
    troco=troco%2;

/*calculo de 1 */

    n1=troco/1;
    troco=troco%1;

    printf("%d nota de 50\n%d nota(s) de 20\n%d nota(s) de 10\n%d nota(s) de 5\n%d moeda(s) de 2\n%d moeda de 1",n50,n20,n10,n5,n2,n1);

return 0;
}


