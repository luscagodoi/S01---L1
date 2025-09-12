package main

import (
	"fmt"
)

func verificarLogin(usuario, senha string) bool {
	return usuario=="senha" && senha=="admin";
}

func main() {
	var usuario string;
	var senha string;

	for (true){
		fmt.Println("Digite o nome de usuário: ");
		fmt.Scanln(&usuario);
		fmt.Println("Digite a senha: ");
		fmt.Scanln(&senha);
		
		if (!verificarLogin(usuario, senha)){
			fmt.Println("\nUsuário ou senha incorretos. Tente novamente.\n")
		} else {
			fmt.Println("\nLogin bem-sucedido!");
			break;
		}
	}
}

// Crie uma função chamada verificarLogin(usuario, senha string) bool.
// Dentro da função, use uma estrutura if/else para verificar se o usuario é "senha" e a senha é "admin".
// A função deve retornar true se ambos forem corretos e false caso contrário.
//
// No main, use um for loop infinito para:
// - Pedir ao usuário para digitar o nome de usuário e a senha.
// - Chamar a função verificarLogin com os valores fornecidos.
// - Usar um if para verificar o retorno da função.
//   Se for true, imprima "Login bem-sucedido!" e use break para sair do loop.
//   Se for false, imprima "Usuário ou senha incorretos. Tente novamente." e continue o loop.
