using System;
using System.Collections.Generic;

public abstract class MonstroSombrio{
    public string Nome {get; set;}
    public abstract void Mover();
}

public class Zumbi:MonstroSombrio{
    public Zumbi(string nome){
        this.Nome = nome;
    }
    public override void Mover(){
        Console.WriteLine($"{Nome} tem 20 feets por turno de velocidade e eh um Zumbi.");
    }
}

public class Espectro:MonstroSombrio{
    public Espectro(string nome){
        this.Nome = nome;
    }
    public override void Mover(){
        Console.WriteLine($"{Nome} tem 30 feets por turno de velocidade, pode voar e eh um Espectro.");
    }
}

public class HelloWorld
{
    public static void Main(string[] args){
        MonstroSombrio[] bestiario = {new Zumbi("Ed"), new Espectro("Gasparzinho")};
        
        foreach(MonstroSombrio monstro in bestiario){
            monstro.Mover();
        }
        
    }
}

// 1. Crie uma classe base abstrata chamada MonstroSombrio. 
//    Adicione um método virtual Mover() e um atributo Nome.
//
// 2. Crie as classes Zumbi e Espectro que herdem de MonstroSombrio.
//
// 3. Sobrescreva o método Mover() em ambas as classes para refletir 
//    a velocidade e a natureza do monstro.
//
// 4. No main, declare um array do tipo da classe mãe (MonstroSombrio[])
//    e preencha-o com pelo menos uma instância de Zumbi e uma de Espectro.
//
// 5. Percorra o array e, para cada monstro, chame o método Mover().
//    O sistema deve ser capaz de processar os diferentes tipos de monstros
//    de forma uniforme.

