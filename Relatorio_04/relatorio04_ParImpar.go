package main

import (
	"fmt"
)

func main() {
	var num int;

	fmt.Println("Digite um número: ")
	fmt.Scanln(&num);

	switch num%2 {
		case 0:
			fmt.Println("O número é par");
		default:
			fmt.Println("O número é ímpar");
 	}
}

// Peça ao usuário para digitar um número (int)
// Use um switch com a condição do resto da divisão por 2 (numero % 2)
// para imprimir "O número é par" ou "O número é ímpar"
