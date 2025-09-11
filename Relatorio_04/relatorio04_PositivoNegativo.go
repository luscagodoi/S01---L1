package main

import (
	"fmt"
)

func classificar_numero(num int) string{
	if(num > 0){
		return "positivo";
	}
	if (num < 0){
		return "negativo";
	}
	return "igual a zero";
}

func main() {
	var num int;
	fmt.Println("Digite um numero: ");
	fmt.Scanln(&num);
	fmt.Println("O numero digitado é", classificar_numero(num));
}

// Crie uma função chamada classificarNumero(num int) que retorna uma string.
// Use uma estrutura if/else para retornar "Positivo", "Negativo" ou "Zero"
// dependendo do valor de num que será digitado pelo usuário.