fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64 {
  nota1*0.2+nota2*0.3+nota3*0.5
}

fn main(){
  let nota1 = 7.5;
  let nota2 = 8.0;
  let nota3 = 9.2;
  let media = calcular_media(nota1, nota2, nota3);

  println!("Valor da média: {}", media);

  if media >= 7. {
    println!("Aprovado");
  } else {
    println!("Reprovado");
  }
}

// 1. Crie uma função fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64.
//
// 2. A função deve calcular a média ponderada usando os pesos:
//    2 para a nota 1, 3 para a nota 2 e 5 para a nota 3.
//
// 3. No main, declare três variáveis para as notas, como:
//    nota1 = 7.5, nota2 = 8.0 e nota3 = 9.2.
//
// 4. Chame a função calcular_media com essas notas e imprima o resultado da média.
//
// 5. Use um if/else para verificar se a média é maior ou igual a 7
//    e imprimir se o aluno foi "Aprovado" ou "Reprovado".
