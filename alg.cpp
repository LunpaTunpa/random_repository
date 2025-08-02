// PULL EXERCISES OF PROGRAM LOGIC WITH C++
// ===============================================

#include <iostream>
#include <math.h>
using namespace std;
int main()
{
    float base, high, perimeter, diagonal, area;
    cout << "Base of rectangle: ";
    cin >> base;
    cout << "High of rectangle: ";
    cin >> high;
    area = base*high;
    perimeter = 2*(area);
    diagonal = (sqrt(exp(base))+(exp(high)));
    cout << "Area: " << area << endl << "Perimeter: " << perimeter << endl
         << "Diagonal: " << diagonal << endl;
    return 0;
}

// ===============================================

#include <iostream>
#include <iomanip>
#include <string>
#include <climits>
using namespace std;
int main()
{
    int n = 2, i, avg = 0, age[n];
    string name[n];
    for(i = 0; i < n; i++) {
        cout << "Data of " << i+1 << "a person: " << endl;
        cout << "Name: ";
        getline(cin, name[i]);
        cout << "Age: ";
        cin >> age[i];
        avg += age[i];
        cin.ignore(INT_MAX, '\n');
    }
    cout << "The average age of " << name[0] << " and " << name[1]
         << " is " << float(avg/n);
    return 0;
}

// ===============================================

#include <iostream>
using namespace std;
int main()
{
    int n, i, value = n+1;
    for(i = 0; i < 3; i++) {
        cout << i+1 << "a value: ";
        cin >> n;
        if(value > n) {
            value = n;
        }
    }
    cout << "Small Number: " << value;
    return 0;
}

// ===============================================

#include <iostream>
using namespace std;
int main()
{
    int i, x, y;
    do {
        cout << "Enter to x: ";
        cin >> x;
        cout << "Enter to y: ";
        cin >> y;
        if(x < y) {
            cout << "Up number!";
        } else {
            cout << "Down number!";
        }
        cout << endl;
    } while (x != y);
    return 0;
}

// ===============================================

#include <iostream>
using namespace std;
int main()
{
    int i, x, y, change, sum;
    do {
        x = 0;
        y = 0;
        sum = 0;
        cout << "Enter to x: ";
        cin >> x;
        cout << "Enter to y: ";
        cin >> y;
        if(x > y) {
            change = x;
            x = y;
            y = change;
        }
        for(i = x+1; i < y; i++) {
            if(i % 2 != 0) {
                sum += i;
            }
        }
        cout << "Sum of odd numbers is: " << sum << endl;
    } while (x != y);
    return 0;
}

// ===============================================

#include <iostream>
#include <iomanip>
#include <string>
#include <climits>
#include <vector>
using namespace std;
class Person {
    public: 
        string name;
        int age;
        float high;
};
int main()
{
    int n = 0, i;
    float avg = 0, underPer;
    cout << "How many people do you enter? ";
    cin >> n;
    vector <string> underAge;
    Person people;
    for(i = 0; i < n; i++) {
        cin.ignore(INT_MAX, '\n');
        cout << "Enter to Data " << i+1 << "a people: " << endl;
        cout << "Name: ";
        getline(cin, people.name);
        cout << "Age: ";
        cin >> people.age;
        cout << "High: ";
        cin >> people.high;
        avg += people.high;
        if(people.age < 16) {
            underAge.push_back(people.name);
        }
    }
	avg = static_cast<float>(avg/n);
    underPer = (static_cast<float>(underAge.size())/n)*100;
    cout << fixed << setprecision(2);
    cout << "Average of peoples: " << avg << endl;
    cout << "Peoples under 16y age: " << underPer << "%" << endl;
    for(const string& name : underAge) {
        cout << name << endl;
    }
    return 0;
}

// ===============================================

#include <iostream>
using namespace std;
int main()
{
    int m, n, i, j, neg = 0;
    cout << "Enter to lines number: ";
    cin >> m;
    cout << "Enter to columns number: ";
    cin >> n;
    int mat[m][n];
    for(i = 0; i < m; i++) {
        for(j = 0; j < n; j++) {
            cout << "Enter to position matrix number [" << i << "][" << j << "]: ";
            cin >> mat[i][j];
        }
    }
    cout << "Prime diagonal: " << endl;
    for(i = 0; i < m; i++) {
        for(j = 0; j < n; j++) {
            if(i == j) {
                cout << "" << mat[i][j] << "  ";
            }
            if (mat[i][j] < 0) {
                neg++;
            }
        }
    }
    cout << endl;
    cout << "Ammount negatives numbers: " << neg;
    return 0;
}

// ===============================================