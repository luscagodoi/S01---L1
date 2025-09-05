use std::io;

fn teste_senha(senha: &str) -> bool {
  if senha.len() < 8 {
    return false;
  }
  
  let mut tem_digito = false;
  let mut tem_caixalta = false;
  
  for char in senha.chars(){
    if char.is_digit(10){
      tem_digito = true;
    }
    if char.is_ascii_uppercase(){
      tem_caixalta = true;
    }

    if tem_digito && tem_caixalta {
      return true;
    }
  }
  false
}

fn main() {
  loop{
    let mut entrada = String::new();
    io::stdin()
      .read_line(&mut entrada)
      .expect("Erro na entrada");
    
    if teste_senha(&entrada){
      break;
    }
    
    println!("Senha inválida, tente novamente.");
  }
  println!("Senha valida!");
}

// 1. Crie uma função fn verificar_senha(senha: &str) -> bool.
//
// 2. A função deve retornar true se a senha atender a todos os seguintes critérios:
//    - Ter pelo menos 8 caracteres de comprimento.
//    - Conter pelo menos um número.
//    - Conter pelo menos uma letra maiúscula.
//
// 3. No main, peça ao usuário para digitar uma senha.
//
// 4. Use um loop para continuar pedindo a senha até que a função verificar_senha retorne true.
//
// 5. Quando a senha for válida, imprima "Senha válida! Acesso concedido." e saia do loop.
//
// 6. Dica: Você pode usar loop com break e usar um if para checar as condições.
//    Para verificar o comprimento da string, use senha.len().
//    Para checar se um caractere é um dígito ou maiúsculo, use os métodos
//    is_digit(10) e is_ascii_uppercase do tipo char
//    (você pode iterar sobre a string com senha.chars()).
