#include <iostream>

using namespace std;

class Personagem{
    public:
        string nome;
        int nivel, dano, vida;
        
        Personagem(string nome, int nivel, int dano, int vida){
            this->nome=nome;
            this->nivel=nivel;
            this->dano=dano;
            this->vida=vida;
        }
        
        void atacar(Personagem& alvo){
            alvo.vida -= this->dano;
            cout<<endl<<this->nome<<" atacou "<<alvo.nome<<endl;
        }
};

int main() {
    Personagem personagem1("Andre", 2, 5, 10);
    Personagem personagem2("Vitor", 3, 6, 12);
    
    cout<<"Informações do Personagem 1: "<<endl;
    cout<<"Nome: "<<personagem1.nome<<", Nivel: "<<personagem1.nivel<<", Dano: "<<personagem1.dano<<", Vida: "<<personagem1.vida<<endl;
    cout<<"Informações do Personagem 2: "<<endl;
    cout<<"Nome: "<<personagem2.nome<<", Nivel: "<<personagem2.nivel<<", Dano: "<<personagem2.dano<<", Vida: "<<personagem2.vida<<endl;
    
    personagem1.atacar(personagem2);
    
    cout<<"\nInformações do Personagem 1: "<<endl;
    cout<<"Nome: "<<personagem1.nome<<", Nivel: "<<personagem1.nivel<<", Dano: "<<personagem1.dano<<", Vida: "<<personagem1.vida<<endl;
    cout<<"Informações do Personagem 2: "<<endl;
    cout<<"Nome: "<<personagem2.nome<<", Nivel: "<<personagem2.nivel<<", Dano: "<<personagem2.dano<<", Vida: "<<personagem2.vida<<endl;

    return 0;
}

// 1. Crie uma classe chamada Personagem.

// 2. Adicione os atributos nome (string), nivel (int), dano (int) e vida (int).

// 3. Crie um método chamado atacar() que recebe como parâmetro um objeto da classe 
//    Personagem, exiba na tela uma mensagem de ataque e faça o personagem atacado 
//    perder N pontos de vida.

// 4. No main, crie 2 objetos da classe Personagem, atribua valores aos seus atributos 
//    e chame o método atacar(), escolhendo quem irá atacar quem. 
//    Por fim, mostre as informações de cada um após o combate.