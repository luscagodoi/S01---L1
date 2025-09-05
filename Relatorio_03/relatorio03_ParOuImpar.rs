use std::io;

fn eh_par(numero: i32) -> bool {
  numero%2==0
}

fn main() {
  let mut escolha_numero1 = String::new();
  let mut escolha_numero2 = String::new();
  let mut escolha_fixa: String;
  loop{
    let mut par_ou_impar = String::new();
    println!("Escolha entre \"par\" ou \"impar\":");
    io::stdin()
      .read_line(&mut par_ou_impar)
      .expect("Erro na entrada");
    
    escolha_fixa = par_ou_impar
      .trim()
      .to_lowercase();
    
    if escolha_fixa == "par" || escolha_fixa == "impar" {
      break;
    }
    
    println!("Escolha um valor válido");
  }

  println!("Jogador 1, digite um numero:");
  io::stdin()
    .read_line(&mut escolha_numero1)
    .expect("Erro na entrada");

  let numero1: i32 = escolha_numero1
    .trim()
    .parse()
    .expect("Valor inválido");

  println!("Jogador 2, digite um numero:");
  io::stdin()
    .read_line(&mut escolha_numero2)
    .expect("Erro na entrada");

  let numero2: i32 = escolha_numero2
    .trim()
    .parse()
    .expect("Valor inválido");

  println!("Soma dos numeros: {}", numero1+numero2);

  if (eh_par(numero1+numero2) && escolha_fixa == "par") 
  || (!eh_par(numero1+numero2) && escolha_fixa == "impar"){
    println!("Jogador 1 venceu. Parabéns!");
  } else {
    println!("Jogador 2 venceu. Parabéns!");
  }
}

// 1. Crie uma função eh_par(numero: i32) -> bool que retorna true se o número for par
//    e false se for ímpar.
//
// 2. No main, faça o seguinte:
//    a. Peça ao Jogador 1 para escolher "par" ou "ímpar" e, em seguida, digitar um número (i32).
//    b. Peça ao Jogador 2 para digitar seu número (i32).
//
// 3. Calcule a soma dos números dos dois jogadores.
//
// 4. Use a função eh_par para verificar se a soma é par ou ímpar.
//
// 5. Use uma estrutura if/else para determinar quem venceu:
//    a. O Jogador 1 vence se a soma corresponder à sua escolha.
//    b. O Jogador 2 vence se a soma não corresponder à escolha do Jogador 1.
//
// 6. Imprima o resultado do jogo de forma clara, mostrando a soma dos números e quem foi o vencedor.
