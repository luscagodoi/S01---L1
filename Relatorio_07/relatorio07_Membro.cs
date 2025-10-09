using System;

public class MembroDaSociedade{
    private string nome {get; set;}
    private string raca {get; set;}
    private string funcao {get; set;}
    
    public MembroDaSociedade(string nome, string raca, string funcao){
        this.nome = nome;
        this.raca = raca;
        this.funcao = funcao;
    }
    
    public void Descrever(){
        Console.WriteLine($"Nome: {nome}, Raca: {raca}, Funcao: {funcao}.");
    }
}

public class HelloWorld
{
    public static void Main(string[] args)
    {
        MembroDaSociedade personagem1 = new MembroDaSociedade("Aragorn", "Humano", "Guardiao");
        MembroDaSociedade personagem2 = new MembroDaSociedade("Legolas", "Elfo", "Arqueiro");
        
        personagem1.Descrever();
        personagem2.Descrever();
        
    }
}

// 1. Crie a classe MembroDaSociedade.
// 2. Defina atributos para o nome, a raça e a função do membro. (todos privados)
// 3. Crie um Construtor que obrigue a inicialização desses três atributos ao criar um novo membro.
// 4. Crie um método Descrever() que imprima as informações completas do membro.
// 5. No main, crie as instâncias de Aragorn (Humano, Guardião) e Legolas (Elfo, Arqueiro)
//    usando o construtor e chame o método Descrever() em ambos.
