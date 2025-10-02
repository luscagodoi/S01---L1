#include <iostream>
#include <list>

using namespace std;

class SerVivo{
    string nome;
    public:
        virtual void apresentar(){
            cout<<"Olá!";
        }
        virtual ~SerVivo(){}
};

class Humano : public SerVivo{
    public:
        void apresentar() override{
            cout<<"Olá, eu sou um Humano!"<<endl;
        }
};

class Elfo : public SerVivo{
    public:
        void apresentar() override{
            cout<<"Olá, eu sou um Elfo!"<<endl;
        }
};

class Fada : public SerVivo{
    public:
        void apresentar() override{
            cout<<"Olá, eu sou uma Fadinha!"<<endl;
        }
};

int main() {
    list<SerVivo*> racas;
    Humano* humano = new Humano;
    Elfo* elfo = new Elfo;
    Fada* fada = new Fada;
    
    racas.push_back(humano);
    racas.push_back(elfo);
    racas.push_back(fada);

    for(SerVivo* raca : racas){
        raca->apresentar();
    }
    
    for(SerVivo* raca : racas){
        delete raca;
    }

    return 0;
}

// 1. Crie uma classe base chamada SerVivo. Nela, adicione um atributo nome (string) 
//    e um método virtual apresentar(). Dentro do método, imprima uma mensagem genérica.

// 2. Crie três classes filhas que herdem publicamente de SerVivo: Humano, Elfo e Fada

// 3. Em cada uma das classes filhas, sobrescreva o método apresentar() para que ele 
//    exiba uma mensagem específica de sua raça.

// 4. Na main, crie uma única lista para armazenar os seres vivos.

// 5. Crie uma instância de cada raça (Humano, Elfo, Fada) e adicione-as à sua lista.

// 6. Percorra a lista. Para cada elemento, chame o método apresentar()
