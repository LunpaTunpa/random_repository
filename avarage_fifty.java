// importa a class responsavel pela interface de entrada de dados \/
import javax.swing.*;
// inicia class responsavel pelo programa \/
class Media {
    // define a função publica principal de execução \/
    public static void main(String args[]){
        int i; // define o valor inteiro 
        float VetMedia[], media=0; // define os valores decimais
        VetMedia = new float[50]; // define o tamanho do vetor
        // PARA cada i menor que 49, some i = i + 1 \/
        for(i = 0; i <= 49; i++){
            // entre com o dado criando a caixa de dialogo e atribua a posição[i] atual do vetor \/
            VetMedia[i] = Float.parseFloat(JOptionPane.showInputDialog("Digite um numero:"));
            media = media + VetMedia[i]; // some o valor na posição atual do vetor com a variavel e atribua a ela
        }
        System.out.println("A média das 50 notas digitadas é: "+(media/50)); // mostre dividindo o valor da variavel por 50
        System.exit(0); // sai da class
    }
}