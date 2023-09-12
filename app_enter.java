import javax.swing.*;

public class App_enter {
    public static void main(String exercise[])
    {
        // Declaração de variaveis:
        int num_one, num_two, mod;
        double root_one, root_two;
        String msg = "";

        // Entrada de dados:
        num_one = Integer.parseInt(JOptionPane.showInputDialog("Enter number: "));
        num_two = Integer.parseInt(JOptionPane.showInputDialog("Enter another number:"));

        // Processamento de dados:
        mod = num_one % num_two;
        root_one = Math.sqrt(num_one);
        root_two = Math.sqrt(num_two);

        // Saida de dados:
        msg = msg + "Rest of the division of " + num_one + " by " + num_two + " = " + mod + "\n";
        msg = msg + "Square root of " + num_one + " = " + root_one + "\n";
        msg = msg + "Square root of " + num_two + " = " + root_two + "\n";
        JOptionPane.showMessageDialog(null, msg);

        System.exit(0);
    }
}
