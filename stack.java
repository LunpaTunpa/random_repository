/**
 * @author Leonardo Rodrigues
 */

import javax.swing.*;
class Pack {
    // variables
    int size;
    int top;
    int vet[];
    // struture
    Pack (int sz){
        top = -1;
        size = sz;
        vet = new int[sz];
    }
    // metodologys \/
    // identification pack_empy \/
    public boolean pack_empy() {
        if (top==-1) {
            return true;
        }
        else {
            return false;
        }
    }
    // identification pack_full \/
    public boolean pack_full() {
        if (top>=size-1) {
            return true;
        }
        else {
            return false;
        }
    }
    // identification stack \/
    public void stack (int n) {
        if (!pack_full()) {
            top = top+1;
            vet[top] = n;
        }
        else {
            System.out.println("Pack Full");
        }
    }
    // identification unstack \/
    public int unstack() {
        int unstacking = 0;
        if (pack_empy()) {
            System.out.println("Pack Empy");
        }
        else {
            unstacking = vet[top];
            top = top-1;
        }
        return unstacking;
    }
    // identification top element \/
    public void top_n() {
        if (top>=0) {
            System.out.println("Top element is "+ vet[top]);
        }
        else {
            System.out.println("Pack Empy");
        }
    }
    // identification pack \/
    public void pack_see() {
        int i;
        for (i=top; i>=0; i--) {
            System.out.println("The element " +vet[i]+ " in locate " +i+ " for pack");
        }
    }   
}

// exemple \/
// class main 
class Main {
    public static void main (String arg []) {
        Pack int_pack = new Pack(5);
        int i;
        int enter;
        for (i=1; i<=5; i++)
        {
            enter = Integer.parseInt(JOptionPane.showInputDialog("Enter the int value"));
            int_pack.stack(enter);
        }
        int_pack.pack_see();
        System.exit(0);
    }
}
