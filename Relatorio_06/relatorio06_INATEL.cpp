#include <iostream>

using namespace std;

class Pessoa{
    public:
        string nome;
        
        virtual void apresentar(){
            cout<<"Olá, meu nome é "<<nome<<" e eu sou uma pessoa.\n";
        }
};

class Professor : public Pessoa{
    public:
        string disciplina;
        Professor(string nome, string disciplina){
            this->nome=nome;
            this->disciplina=disciplina;
        }
        void apresentar() override{
            cout<<"Olá, meu nome é "<<nome<<" e eu sou um professor de "<<disciplina<<".\n";
        }
};

class Aluno : public Pessoa{
    public:
        string curso;
        Aluno(string nome, string curso){
            this->nome=nome;
            this->curso=curso;
        }
        void apresentar() override{
            cout<<"Olá, meu nome é "<<nome<<" e eu sou um aluno de "<<curso<<".\n";
        }
};


int main(){
    Pessoa* professor = new Professor("Marcelo", "Paradigmas");
    Pessoa* aluno = new Aluno("Lusca", "Software");
    
    professor->apresentar();
    aluno->apresentar();
    
    delete professor;
    delete aluno;
    
    return 0;
}

// 1. Crie uma classe base chamada Pessoa com um atributo nome (string) 
//    e um método virtual chamado apresentar(). 
//    O método deve exibir "Olá, meu nome é [nome] e eu sou uma pessoa.".

// 2. Crie as classes Professor e Aluno que herdem de Pessoa. 
//    E adicione os atributos disciplina em professor e curso/matrícula em aluno.

// 3. Sobrescreva o método apresentar() em ambas as classes.
//    - No Professor, ele deve exibir "Olá, meu nome é [nome] e eu sou um professor de [disciplina].".
//    - No Aluno, ele deve exibir "Olá, meu nome é [nome] e eu sou um aluno de [curso]".

// 4. Na main, crie ponteiros da classe base Pessoa e aponte-os para objetos 
//    do tipo Professor e Aluno. 
//    Chame o método apresentar() através desses ponteiros para demonstrar o polimorfismo.
