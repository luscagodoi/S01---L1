class Pokemon{
    #vida
    dano = Math.round(Math.random()*5+1)
    vivo = true
    
    constructor(nome, tipo, vidaInicial){
        this.nome = nome
        this.tipo = tipo
        this.#vida = vidaInicial
        console.log(`${this.nome} do tipo ${this.tipo}, eu escolho você!`)
    }
    
    getVida(){
        return this.#vida
    }
    
    receberDano(dano){
        if (this.#vida-dano>0){
            this.#vida -= dano
        } else {
            this.#vida = 0
            this.vivo = false
            console.log(`${this.nome} foi derrotado!`)
        }
    }

    atacar(alvo){
        console.log(`${this.nome} causa ${this.dano} de dano em ${alvo.nome}.`)
        alvo.receberDano(this.dano)
    }
    
    curarVida(cura){
        this.#vida += cura
    }
}

class PokemonFogo extends Pokemon{
    bonusAtaque
    constructor(nome, vidaInicial, bonus){
        super(nome, "Fogo", vidaInicial)
        this.bonusAtaque = bonus
    }
    
    atacar(alvo){
        super.atacar(alvo)
        console.log(`${this.nome} tambem causa ${this.bonusAtaque} de dano extra em ${alvo.nome}. (Por ser de Fogo)`)
        alvo.receberDano(this.bonusAtaque)
    }
}

class PokemonAgua extends Pokemon{
    #curaBase
    constructor(nome, vidaInicial, curaBase){
        super(nome, "Agua", vidaInicial)
        this.#curaBase = curaBase
    }
    
    atacar(alvo){
        super.atacar(alvo)
        console.log(`${this.nome} tambem cura ${this.#curaBase} de vida. (Por ser de Agua)`)
        this.curarVida(this.#curaBase)
    }
}

const pokemon1 = new PokemonFogo("Claudio", 15, 4) //Mudem os valores como quiserem.
const pokemon2 = new PokemonAgua("Carlo", 15, 5) //Mudem os valores como quiserem.

console.log("\nSimulando a luta:\n")

while(pokemon1.vivo&&pokemon2.vivo){
    pokemon1.atacar(pokemon2)
    
    if(pokemon2.vivo){
        pokemon2.atacar(pokemon1)
    }
    
    console.log(`\n${pokemon1.nome}: ${pokemon1.getVida()} de vida. | ${pokemon2.nome}: ${pokemon2.getVida()} de vida.\n`)
}

console.log(pokemon1.vivo?`${pokemon1.nome} venceu a batalha!`:`${pokemon2.nome} venceu a batalha!`)
