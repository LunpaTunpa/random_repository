// PULL EXERCISES OF PROGRAM LOGIC WITH C
// ===============================================

#include <stdio.h>
int main() {
    float width, length; 
    double price;
    printf("| Enter to Wigth: ");
    scanf("%f", &width);
    printf("| Enter to Length: ");
    scanf("%f", &length);
    printf("| Enter with price for mˆ2: ");
    scanf("%lf", &price);
    printf("| ----------");
    printf("\n| Area value is: %.2lf", width*length);
    printf("\n| Price value is: %.2lf", price*(width*length));
}

// ===============================================

#include <stdio.h>
#include <math.h>
int main() {
    double base, high, area, perimeter, diagonal;
    printf("| Enter to Base: ");
    scanf("%lf", &base);
    printf("| Enter to High: ");
    scanf("%lf", &high);
    area = base*high;
    perimeter = 2*(base+high);
    diagonal = sqrt((pow(base, 2))+(pow(high, 2)));
    printf("| ----------");
    printf("\n| Area value is: %.4lf", area);
    printf("\n| perimeter value is: %.4lf", perimeter);
    printf("\n| Diagonal value is: %.4lf", diagonal);
}

// ===============================================

#include <stdio.h>
#include <string.h>
#include <math.h>
void clear_buffer() {
    char c;
    while(((c = getchar()) != '\n') && (c != EOF)) {}
}
void read_char(char *buffer, int length) {
    fgets(buffer, length, stdin);
    strtok(buffer, "\n");
}
int main() {
    char nameOne[50], nameTwo[50];
    double ageOne, ageTwo;
    printf("| Enter to data first person: ");
    printf("\n| Name: ");
    read_char(nameOne, 50);
    printf("| Age: ");
    scanf("%lf", &ageOne);
    printf("| Enter to data second person: ");
    printf("\n| Name: ");
    clear_buffer();
    read_char(nameTwo, 50);
    printf("| Age: ");
    scanf("%lf", &ageTwo);
    printf("| ----------");
    printf("\n| The age avarege of %s and %s, is %.1lf", nameOne, nameTwo, (ageOne+ageTwo)/2);
}

// ===============================================

#include <stdio.h>
int main() {
    float n1, n2, avg;
    printf("Enter to first use: ");
    scanf("%f", &n1);
    printf("Enter to second use: ");
    scanf("%f", &n2);
    if(n1 > 10 || n2 > 10) {
        printf("ERROR : Uses very high. Use 1: %.1f, Use 2: %.1f", n1, n2);
    } else {
        avg = ((n1+n2)/2);
        if(avg < 6.0) {
            printf("YOU ARE A LOSER! Average: %.1f", avg); 
        } else {
            printf("YOU ARE A CHAMPION! Average: %.1f", avg);
        }
        return 0;
    }
}

// ===============================================

#include <stdio.h>
#include <math.h>
int main() {
    float cofA, cofB, cofC, delta, x1, x2;
    printf("Enter to A: ");
    scanf("%f", &cofA);
    printf("Enter to B: ");
    scanf("%f", &cofB);
    printf("Enter to C: ");
    scanf("%f", &cofC);
    delta = pow(cofB, 2) - 4*cofA*cofC;
    if(delta == 0 || delta < 0) {
        printf("No real sqrt!");
    } else {
        x1 = (((cofB)*-1) + sqrt(delta))/2*cofA;
        x2 = (((cofB)*-1) - sqrt(delta))/2*cofA;
        printf("Sqrt is x1 = %.4f, x2 = %.4f", x1, x2);
    }
    return 0;
}

// ===============================================

#include <stdio.h>
int main() {
    int m = 3;
    int big = 0;
    int n[m];
    for(int i = 0; i < m; i++) {
        printf("Enter with %da number: ", i+1);
        scanf("%d", &n[i]);
        if(n[i] > big) {
            big = n[i];
        }
    }
    printf("The master number is: %d", big);
    return 0;
}

// ===============================================

#include <stdio.h>
int main() {
    int n1, n2;
    printf("Enter with first number: ");
    scanf("%d", &n1);
    printf("Enter with second number: ");
    scanf("%d", &n2);
    while(n1 != n2) {
        if(n1 < n2) {
            printf("INCREASING!\n");
        } else {
            printf("DECREASING\n");
        }
        printf("Enter with first number: ");
        scanf("%d", &n1);
        printf("Enter with second number: ");
        scanf("%d", &n2);
    }
    return 0;
}

// ===============================================

#include <stdio.h>
int main() {
    int age = 0, count = 0;
    float avg = 0;
    printf("Enter to age: ");
    scanf("%d", &age);
    while (age >= 0) {
        avg = avg + age;
        count++;
        printf("Enter to age: ");
        scanf("%d", &age);
    }
    if(count == 0) {
        printf("This's impossibel!\n");
    } else {
        avg = avg/count;
        printf("Avarege is: %.2f", avg);
    }
    return 0;
}

// ===============================================

#include <stdio.h>
int main() {
    int n = 0;
    printf("What's value for numerical table? : ");
    scanf("%d", &n);
    for(int i = 1; i <= 10; i++) {
        printf("%d x %d = %d\n", n, i, n*i);
    }
    return 0;
}

// ===============================================

#include <stdio.h>
int main() {
    int x, y, tChance = 0, change;
    printf("Enter to x: ");
    scanf("%d", &x);
    printf("Enter to y: ");
    scanf("%d", &y);
    if(x > y) {
        change = x;
        x = y;
        y = change;
    }
    for(int i = x+1; i < y; i++) {
        if(i % 2 != 0) {
            tChance = tChance + i;
        }
    }
    printf("Total chance is: %d", tChance);
    return 0;
}

// ===============================================

#include <stdio.h>
int main() {
    int n, i;
    printf("How many numbers do you enter? : ");
    scanf("%d", &n);
    int vet[n];
    for(i = 0; i < n; i++) {
        printf("Enter to number %da: ", i+1);
        scanf("%d", &vet[i]);
    }
    printf("Chance numbers: \n");
    for(i = 0; i < n; i++) {
        if(vet[i] % 2 != 0) {
            printf("%da = %d\n", i+1, vet[i]);
        }
    }
    return 0;
}

// ===============================================

#include <stdio.h>
int main() {
    int n, i;
    printf("How many numbers do you enter? : ");
    scanf("%d", &n);
    float vet[n], tVet = 0;
    for(i = 0; i < n; i++) {
        printf("Enter to number %da: ", i+1);
        scanf("%f", &vet[i]);
        tVet = tVet + vet[i];
    }
    printf("Values in vector:");
    for(i = 0; i < n; i++) {
        printf("%.2f  ", vet[i]);
    }
    printf("\nTotal values in vector: %.2f", tVet);
    printf("\nAverage values in vector: %.2f", tVet/n);
    return 0;
}

// ===============================================

#include <stdio.h>
int main() {
    int m = 2, n, i, j;
    float tHigh = 0;
    printf("How many people do you enter? : ");
    scanf("%d", &n);
    char mat[m][n];
    float vet[n];
    /* In mat[m][n], 
    m is: Names = 0; Ages = 1;
    n is: 1a person = 0, 2a person = 1 ... n
       In vet[n],
    n is: Highs
    */
    for(j = 0; j < n; j++) {
        printf("Values of %da person: \n", j+1);
        printf("Name: ");
        scanf("%s", &mat[0][j]);
        printf("Age: ");
        scanf("%s", &mat[1][j]);
        printf("High: ");
        scanf("%f", &vet[j]);
        tHigh = tHigh + vet[j];
    }
    printf("Average high of people is: %.2f", tHigh/n);
    return 0;
}

// ===============================================

#include <stdio.h>
#include <stdlib.h>
int main() {
    int m = 2, n, i;
    float tHigh = 0;
    typedef struct {
        char name[50];
        int age;
        float high;
    } Person;
    printf("How many people do you enter? : ");
    scanf("%d", &n);
    Person *people = (Person *)malloc(n * sizeof(Person));
    for(i = 0; i < n; i++) {
        printf("Values of %da person: \n", i+1);
        printf("Name: ");
        scanf("%49s", people[i].name);
        printf("Age: ");
        scanf("%d", &people[i].age);
        printf("High: ");
        scanf("%f", &people[i].high);
        tHigh += people[i].high;
    }
    printf("Average high of people is: %.2f", tHigh/n);
    return 0;
}

// ===============================================

#include <stdio.h>
int main() {
    int m, n, i, j, neg = 0;
    printf("Enter to columns number: ");
    scanf("%d", &m);
    printf("Enter to lines number: ");
    scanf("%d", &n);
    int mat[m][n];
    for(i = 0; i < m; i++) {
        for(j = 0; j < n; j++) {
            printf("Enter to position matrix number [%d][%d]: ", i, j);
            scanf("%d", &mat[i][j]);
        }
    }
    printf("Prime diagonal: \n");
    for(i = 0; i < m; i++) {
        for(j = 0; j < n; j++) {
            if(i == j) {
                printf("%d  ", mat[i][j]);
            }
            if(mat[i][j] < 0) {
                neg++;
            }
        }
    }
    printf("\nAmmount negatives numbers: %d", neg);
    return 0;
}

// ===============================================

#include <stdio.h>
int main() {
    int m, n, i, j, value;
    printf("Enter to lines number: ");
    scanf("%d", &m);
    printf("Enter to columns number: ");
    scanf("%d", &n);
    int mat[m][n];
    int vet[n];
    for(i = 0; i < m; i++) {
        printf("Enter to %da line: \n", i+1);
        value = 0;
        for(j = 0; j < n; j++) {
            printf("Enter to position matrix number [%d][%d]: ", i, j);
            scanf("%d", &mat[i][j]);
            value += mat[i][j];
        }
        vet[i] = value;
    }
    printf("Vector gerade: ");
    for(i = 0; i < m; i++) {
        printf("\n%d", vet[i]);
    }
    return 0;
}

// ===============================================