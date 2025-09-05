use std::io;

fn imprimir_tabuada(numero: i32, limite_inferior: i32, limite_superior: i32){
  for valor in limite_inferior ..= limite_superior {
    println!("{} vezes {} é igual a: {}", valor, numero, valor*numero);
  }
}

fn main(){
  let mut escolha_numero1 = String::new();
  let mut escolha_numero2 = String::new();
  let mut escolha_numero3 = String::new();

  println!("Digite um numero:");
  io::stdin()
    .read_line(&mut escolha_numero1)
    .expect("Erro na entrada");
  let numero1: i32 = escolha_numero1
    .trim()
    .parse()
    .expect("Valor inválido");

  println!("Digite um numero para o limite inferior:");
  io::stdin()
    .read_line(&mut escolha_numero2)
    .expect("Erro na entrada");
  let numero2: i32 = escolha_numero2
    .trim()
    .parse()
    .expect("Valor inválido");

  println!("Digite um numero para o limite superior:");
  io::stdin()
    .read_line(&mut escolha_numero3)
    .expect("Erro na entrada");
  let numero3: i32 = escolha_numero3
    .trim()
    .parse()
    .expect("Valor inválido");

  imprimir_tabuada(numero1, numero2, numero3);
}

// 1. Crie uma função fn imprimir_tabuada(numero: i32, limite_inferior: i32, limite_superior: i32).
//    Essa função deve receber três números inteiros e não retornar nada.
//
// 2. Dentro da função, use um for loop para iterar de limite_inferior até limite_superior (inclusive).
//
// 3. Em cada iteração, imprima o resultado da multiplicação do numero com o contador do loop.
//
// 4. No main, peça ao usuário para digitar:
//    a. O número da tabuada.
//    b. O limite inferior.
//    c. O limite superior.
//
// 5. Chame a função imprimir_tabuada com os três números fornecidos pelo usuário.
