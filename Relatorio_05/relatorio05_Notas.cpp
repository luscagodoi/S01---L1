#include <iostream>

using namespace std;

int main() {
    int tamanho;
    float notas, sum = 0;
    
    cout<<"Digite o numero de notas: ";
    cin>>tamanho;
    
    cout<<"Insira as notas: (O valor deve ser entre 0 e 10)\n";
    for(int i=0; i<tamanho; i++){
        do{
            cin>>notas;
            if(notas<0||notas>10)
                cout<<"O valor deve ser entre 0 e 10\n";
        }while(notas<0||notas>10);
        
        sum += notas;
    }
    
    cout<<((sum/tamanho >= 7) ? "Aprovado" : "Reprovado");

    return 0;
}

// Peça ao usuário para digitar quantas notas ele quer inserir.
// Crie um for loop que se repete o número de vezes que o usuário digitou.
//   Dentro do loop, peça ao usuário para inserir uma nota.
// Use um while loop interno para validar a nota.
//   O while deve continuar pedindo a nota até que o valor esteja no intervalo de 0 a 10.
//   Acumule as notas válidas em uma variável de soma.
// Após o loop, calcule a média dividindo a soma pelo número total de notas inseridas.
// Imprima a média final e, usando um if/else, diga se o aluno foi "Aprovado" (média >= 7) ou "Reprovado".
