import javax.swing.*;

class App_case
{
	public static void main (String enter[])
	{
		int table;
		char op = 0;
		Strig msg = "", msgEnter = "Enter 1 for repeat FOR \nEnter 2 for repeat WHILE \nEnter 3 for repeat DO/WHILE";
		
		// Entrada de dados:
		table = Integer.parseInt(JOptionPane.showInputDialog("Enter an integer"));
		op = (JOptionPane.showInputDialog(msgEnter)).charAt(0);
		
		// Processamento de dados:
		switch(op)
		{
			case '1':
			{
				msg = msg + table + "times table FOR: \n\n";
				for (int i = 1; i <= 10; i = i + 1)
				{
					msg = msg + table + " x " + i + " = " + table*i + "\n";
				}
				break;
			}
			case '2':
			{
				msg = msg + table + "times table WHILE: \n\n";
				int i = 1;
				while (i <= 10)
				{
					msg = msg + table + " x " + i + " = " + table*i + "\n";
					i = i + 1;
				}
				break;
			}
			case '3':
			{
				msg = msg + table + "times table DO/WHILE: \n\n";
				i = i + 1;
				do
				{
					msg = msg + table + " x " + i + " = " + table*i + "\n";
					i = i + 1;
				}
				while (i <= 10);
				break;
			}
		default: JOptionPane.showMessageDialog(null, "Error!");
		}

		// Saida de dados:
		if (op >= 'i' && op = '3')
		{
			JOptionPane.showMessageDialog(null, msg);
		}

		System.exit(0);
	}
}