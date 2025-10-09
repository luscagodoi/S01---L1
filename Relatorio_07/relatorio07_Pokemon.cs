using System;
using System.Collections.Generic;

public class Pokemon{
    public string Nome {get; set;}
    
    public Pokemon(string nome){
        this.Nome = nome;
    }
    
    public virtual void Atacar(){
        Console.WriteLine($"{Nome} usou Tackle");
    }
}

public class PokemonDeFogo:Pokemon{
    public PokemonDeFogo(string nome):base(nome){
    }
    
    public override void Atacar(){
        Console.WriteLine($"{Nome} usou Ember");
    }
}

public class PokemonDeAgua:Pokemon{
    public PokemonDeAgua(string nome):base(nome){
    }
    
    public override void Atacar(){
        Console.WriteLine($"{Nome} usou Bubble");
    }
}

public class HelloWorld
{
    public static void Main(string[] args){
        List<Pokemon> pokemons = new List<Pokemon>();
        
        pokemons.Add(new PokemonDeFogo("Charizard"));
        pokemons.Add(new PokemonDeAgua("Blastoise"));
        
        foreach(Pokemon atual in pokemons){
            atual.Atacar();
        }
    }
}

// 1. Crie uma classe base chamada Pokemon. Adicione um atributo Nome.
// 2. Crie um método virtual Atacar() na classe Pokemon com uma ação genérica.
// 3. Crie as classes PokemonDeFogo e PokemonDeAgua que herdem de Pokemon.
// 4. Em cada classe filha, sobrescreva o método Atacar() para refletir o tipo
//    (ex: "lança um jato de água").
// 5. No main, crie uma lista de objetos do tipo da classe mãe (List<Pokemon>).
// 6. Adicione as instâncias de Charizard e Blastoise à lista e, em seguida,
//    percorra essa lista para chamar o método Atacar() de cada um.
