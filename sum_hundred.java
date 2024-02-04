/*
​Atividade Prática 04 – Entendendo recursão I
Título da Prática: Recursão de soma de números inteiros
Objetivos: Entender como utilizar o netbeans para desenvolver programas em Java para somar números inteiros
*/

// importa a class responsavel pela interface de entrada de dados \/
import javax.swing.*;
// inicia class responsavel pelo programa \/
class sum {
    // define a função publica que executa a recursão \/
    public static int fullsum (int nro, int sum){
        int s;
        if (nro==100){
            s = nro+sum;
        }
        else{
            s = fullsum(nro+1,nro+sum);
        }
        return s;
    }
    // define a função publica principal de execução \/
    public static void main(String args[]){
        int sum, a;
        a = Integer.parseInt(JOptionPane.showInputDialog("Digite um numero inteiro:"));
        sum = fullsum(a,0);
        JOptionPane.showMessageDialog(null,"Soma dos cem primeiros numeros é: "+sum); 
        System.exit(0); 
    }
}