#include <iostream>

using namespace std;

class Pessoa{
    protected:
        string nome;
        int idade;
};

class Protagonista : public Pessoa{
    private:
        int nivel;
    public:
        Protagonista(string nome, int nivel){
            this->nome=nome;
            this->nivel=nivel;
        }
        void mostrarInfo(){
            cout<<"Protagonista{"<<"Nome: "<<nome<<", Nivel: "<<nivel<<"}\n";
        }
};

class Personagem : public Pessoa{
    private:
        int rank;
    public:
        Personagem(string nome, int rank){
            this->nome=nome;
            this->rank=rank;
        }
        void mostrarInfo(){
            cout<<"Personagem{"<<"Nome: "<<nome<<", Rank: "<<rank<<"}\n";
        }
};

int main() {
    Protagonista protagonista("O Cara", 8000);
    Personagem personagem("NPC", 5);
    
    protagonista.mostrarInfo();
    personagem.mostrarInfo();
    return 0;
}

// 1. Crie uma classe base chamada Pessoa.

// 2. Adicione os atributos nome (string) e idade (int) como privados.

// 3. Crie uma classe Protagonista e outra Personagem, ambas herdeiras de Pessoa. 
//    Protagonista deve ter um atributo de nível (int) e Personagem deve ter um atributo de rank (int) 
//    (obs: o rank dos Personagens/social link varia de 0 a 10). 
//    Ambos devem ser privados.

// 4. Na main, crie um objeto da classe Protagonista e atribua um nome e nível. 
//    Faça o mesmo para um objeto da classe Personagem. 
//    Imprima os valores e demonstre que os atributos estão sendo acessados através de um método 
//    e não diretamente.
