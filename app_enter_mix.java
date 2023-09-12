import javax.swing.*;

public class App_enter_mix {
    public static void main(String exercise[])
    {
        // Declaração de variaveis:
        int num_one, num_two, div;
        double pow_result;
        String msg = "";

        // Entrada de dados:
        num_one = Integer.parseInt(JOptionPane.showInputDialog("Enter number: "));
        num_two = Integer.parseInt(JOptionPane.showInputDialog("Enter another number:"));

        // Processamento de dados:
        div = num_one % num_two;
        pow_result = Math.pow(num_one,num_two);
        
        // Saida de dados:
        msg = msg + "Rest of the division of " + num_one + " by " + num_two + " = " + div + "\n";
        msg = msg + "Rest of the power of " + num_one + " by " + num_two + " = " + pow_result + "\n";
        JOptionPane.showMessageDialog(null, msg);

        System.exit(0);
    }
}
