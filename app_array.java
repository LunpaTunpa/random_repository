import java.util.ArrayList;
import java.util.Scanner;

public class App_sum {
  public static void main(String[] args) {
    // List declaration:
    ArrayList<Integer> nums = new ArrayList<Integer>();
    Scanner scanner = new Scanner(System.in);

    // Prompt the user to enter numbers and add them to the list:
    while (true) {
      System.out.println("Enter a number, 00 to stop: ");
      int num = scanner.nextInt();
      if (num == 00) {
        break;
      }
      nums.add(num);
    }

    // Print the numbers in the list:
    System.out.println("Numbers stored: ");
    for (int n : nums) {
      System.out.println(n);
    }

    // Print calculate the sum of numbers in list:
    int sum = 0;
    for (int n : nums) {
      sum += n;
    }
    System.out.println("Sum of numbers: " + sum);

    scanner.close();

  }
}