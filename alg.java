// PULL EXERCISES OF PROGRAM LOGIC WITH JAVA
// ===============================================

import java.util.Locale;
import java.util.Scanner;
public class Main
{
	public static void main(String[] args) {
	    Scanner sc = new Scanner(System.in);
	    Double base = -99.99, high = -99.99, area = -99.99, 
	        perimeter = -99.99, diagonal = -99.99, exponent = 2.0;
		System.out.print("Enter to Base: ");
		base = sc.nextDouble();
		System.out.print("Enter to High: ");
		high = sc.nextDouble();
        area = base*high;
        perimeter = 2.0*(base+high);
        diagonal = Math.sqrt((Math.pow(base, exponent))+(Math.pow(high, exponent)));
		System.out.println("Area value is: " + String.format("%.4f", area));
		System.out.println("Perimeter value is: " + String.format("%.4f", perimeter));
		System.out.println("Diagonal value is: " + String.format("%.4f", diagonal));
		sc.close();
	}
}

// ===============================================

import java.util.Locale;
import java.util.Scanner;
import java.util.ArrayList;

public class Main {
	public static void main(String[] args) {
	    Scanner sc = new Scanner(System.in);
	    ArrayList<Person> people = new ArrayList<>();
	    Integer n = 0, i = 0;
	    Double avg = 0.0;
		System.out.print("How many people do you want register? ");
		n = sc.nextInt();
		sc.nextLine();
		for(i = 0; i < n; i++) {
		    String name;
		    Integer age;
		    System.out.println("Enter to Data of " + i + "a people: ");
		    System.out.print("Name: ");
		    name = sc.nextLine();
		    System.out.print("Age: ");
		    age = sc.nextInt();
		    sc.nextLine();
		    Person currentPeople = new Person(name, age);
		    people.add(currentPeople);
		    avg += currentPeople.getAge();
		}
		for(i = 0; i < people.size(); i++) {
		    System.out.print(people.get(i).getName());
            if (i < people.size() - 1) {
                System.out.print(" and ");
            }
		}
		avg = (Double)avg/n;
		System.out.print(" average is: " + String.format("%.2f", avg));
		sc.close();
	}
}

class Person {
    private String name;
    private Integer age; 
    public Person(String name, int age) {
       this.name = name;
       this.age = age;
   } 
   public String getName() {
       return name;
   }
   public int getAge() {
       return age;
   }
   public void setName(String name) {
       this.name = name;
   }
   public void setAge(Integer age) {
       if (age >= 0) {
            this.age = age;
        } else {
            System.out.println("Age cannot be negative.");
        }
   }
}

// ===============================================

import java.util.Locale;
import java.util.Scanner;
import java.util.ArrayList;

public class Main {
	public static void main(String[] args) {
	    Scanner sc = new Scanner(System.in);
	    ArrayList<Integer> numbers = new ArrayList<Integer>();
	    Integer n = 0, currentNum = 0, i = 0;
		System.out.print("How many numbers do you want register? ");
		n = sc.nextInt();
		sc.nextLine();
		for(i = 0; i < n; i++) {
		    System.out.print("Enter to " + (i+1) + "a number: ");
		    currentNum = sc.nextInt();
		    sc.nextLine();
		    numbers.add(currentNum);
		}
		for(i = 0; i < numbers.size(); i++) {
            if (numbers.get(i) < currentNum) {
                currentNum = numbers.get(i);
            }
		}
		System.out.print("Small number is: " + currentNum);
		sc.close();
	}
}

// ===============================================

import java.util.Locale;
import java.util.Scanner;
public class Main {
	public static void main(String[] args) {
	    Scanner sc = new Scanner(System.in);
	    Integer x, y;
	    do {
	        System.out.print("Enter to x: ");
	        x = sc.nextInt();
	        System.out.print("Enter to y: ");
	        y = sc.nextInt();
	        sc.nextLine();
	        if(x < y) {
	            System.out.println("Up numbers!");
	        } else if(x > y) {
	            System.out.println("Down numbers!");
	        } else {
	            return;
	        }
	    } while(x != y);
	    sc.close();
	}
}

// ===============================================

import java.util.Locale;
import java.util.Scanner;
public class Main {
	public static void main(String[] args) {
	    Scanner sc = new Scanner(System.in);
	    Integer x = 0, y = 0, i = 0, change = 0, oddSum = 0;
	    do {
	        x = 0;
	        y = 0;
	        oddSum = 0;
	        System.out.print("Enter to x: ");
	        x = sc.nextInt();
	        System.out.print("Enter to y: ");
	        y = sc.nextInt();
	        sc.nextLine();
	        if(x > y) {
	            change = x;
	            x = y;
	            y = change;
	        }
	        for(i = x+1; i < y; i++) {
                if(i % 2 != 0) {
                    oddSum += i;
                }
	        }
	        System.out.println("Sum odd numbers is: " + oddSum);
	    } while(x != y);
	    sc.close();
	}
}

// ===============================================

import java.util.Locale;
import java.util.Scanner;
import java.util.ArrayList;
public class Main {
	public static void main(String[] args) {
	    Scanner sc = new Scanner(System.in);
	    ArrayList<Double> numbers = new ArrayList<Double>();
	    Integer n = 0, i = 0;
	    Double currentNum = 0.0, sumNum = 0.0, avgNum = 0.0;
		System.out.print("How many numbers do you want register? ");
		n = sc.nextInt();
		sc.nextLine();
		for(i = 0; i < n; i++) {
		    System.out.print("Enter to " + (i+1) + "a number: ");
		    currentNum = sc.nextDouble();
		    sc.nextLine();
		    numbers.add(currentNum);
            sumNum += numbers.get(i);
		}
		avgNum = (double)sumNum/n;
		System.out.print("The numbers are:");
		for(i = 0; i < numbers.size(); i++) {
		    System.out.print("  " + String.format("%.2f", numbers.get(i)));
		}
		System.out.println();
		System.out.println("The average of numbers are: " + String.format("%.2f", avgNum));
		System.out.println("The sum of numbers are: " + String.format("%.2f", sumNum));
		sc.close();
	}
}

// ===============================================

import java.util.Locale;
import java.util.Scanner;
import java.util.ArrayList;
public class Main {
	public static void main(String[] args) {
	    Scanner sc = new Scanner(System.in);
	    Integer m, n, value;
	    System.out.print("Enter number of lines: ");
        m = sc.nextInt();
        System.out.print("Enter number of columns: ");
        n = sc.nextInt();
        Matrix aMatrix = new Matrix(m, n);
        for (int i = 0; i < m; i++) {
            for (int j = 0; j < n; j++) {
                System.out.print("Enter number at position [" + i + "][" + j + "]: ");
                value = sc.nextInt();
                aMatrix.setNumber(i, j, value);
            }
        }
        aMatrix.getPrimeDiagonal();
        System.out.println();
        System.out.println("Amount of negative numbers: " + aMatrix.getCountNegatives());
        sc.close();
	}
}
class Matrix {
    private Integer[][] mat;
    private Integer lines;
    private Integer columns;
    public Matrix(int lines, int columns) {
       this.lines = lines;
       this.columns = columns;
       this.mat = new Integer[lines][columns];
    }
    public void setNumber(int i, int j, int value) {
        mat[i][j] = value;
    }
    public int getCountNegatives() {
        int count = 0;
        for(int i = 0; i < lines; i++) {
            for(int j = 0; j < columns; j++) {
                if(mat[i][j] < 0) {
                    count++;
                }
            }
        }
        return count;
    }
    public void getPrimeDiagonal() {
        System.out.print("Prime diagonal: ");
        for(int i = 0; i < lines; i++) {
            for(int j = 0; j < columns; j++) {
                if(i == j) {
                    System.out.print(mat[i][i] + "  ");
                }
            }
        }
    }
}

// ===============================================