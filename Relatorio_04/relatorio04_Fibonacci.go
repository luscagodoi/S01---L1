package main

import (
	"fmt"
)

func fibonacci(n int){
	var menos2 int = 0;
	var menos1 int = 1;
	var aux int;

	if(n<=0){
		fmt.Println("Apenas numeros acima de 0.")
		return;
	}

	switch n {
		case 1:
			fmt.Println(0);
		break;
		case 2:
			fmt.Println(0);
			fmt.Println(1);
		break;
		default:
			fmt.Println(0);
			fmt.Println(1);
			for i:=0; i<n-2; i++ {
				fmt.Println(menos2+menos1);
				aux = menos1;
				menos1 = menos2+menos1;
				menos2 = aux;
			}
	}
}

func main() {
	var n int;

	fmt.Println("Digite quantos números da sequência Fibonacci você quer: ");
	fmt.Scanln(&n);
	fmt.Println("Essa é a sequência de Fibonacci até", n);

	fibonacci(n);
	
}

// Crie uma função chamada fibonacci(n int).
// A função deve usar um for loop para gerar os números da sequência de Fibonacci,
// começando com 0 e 1.
// A sequência é formada somando-se os dois números anteriores (0, 1, 1, 2, 3, 5, 8...).
//
// No main, peça ao usuário para digitar quantos números da sequência ele quer (n).
// Em seguida, chame a função fibonacci com o número fornecido.
