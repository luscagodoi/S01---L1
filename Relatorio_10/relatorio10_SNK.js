class IExplorador{
  explorarTerritorio(){
    throw new Error('O metodo "explorarTerritorio" deve ser implementado!');
  }
}

class ODM_gear{
    #gasRestante = Math.round(Math.random()*15+10)
    constructor(modelo){
        this.modelo = modelo
    }
    
    usarGas(quantidade){
        this.#gasRestante = this.#gasRestante-quantidade >= 0 ? this.#gasRestante-quantidade : 0
    }
    
    getGas(){
        return this.#gasRestante
    }
}

class Soldado extends IExplorador{
    #gear
    constructor(nome, modeloGear){
        super()
        this.nome = nome
        this.#gear = new ODM_gear(modeloGear)
    }
    
    verificarEquipamento(){
        return `O gear modelo ${this.#gear.modelo} esta com ${this.#gear.getGas()} de gas restante.`
    }
    
    explorarTerritorio(){
        let texto = `${this.nome} saiu para explorar territorio.`
        if(this.#gear.getGas()>0){
            this.#gear.usarGas(Math.round(Math.random()*8+8))
            return this.#gear.getGas()>0 ? texto : texto+" Seu gas acabou durante a exploracao."
        }
        return `${this.nome} esta sem gas para explorar.`
    }
    
}

class Esquadrao extends IExplorador{
    constructor(lider, membrosIniciais){
        super()
        this.lider = lider
        this.lider.nome += " o lider"
        this.membros = [lider, ...membrosIniciais]
    }
    
    adicionarMembro(soldado){
        this.membros.push(soldado)
    }
    
    relatarStatus(){
        return this.membros.map(membro => {
            return `${membro.nome}: ${membro.verificarEquipamento()}`
        })
    }
    
    explorarTerritorio(){
        let texto = ''
        this.membros.forEach(membro => {
            texto += membro.explorarTerritorio()+'\n'
        })
        return texto
    }
}

const soldado1 = new Soldado("Juliano", "Pica")
const soldado2 = new Soldado("Jovana", "Mais ou menos")
const soldado3 = new Soldado("Josival", "Meia boca")

const esquadrao = new Esquadrao(soldado1, [soldado2, soldado3])

const soldado4 = new Soldado("Jeferson", "Nova em folha")

esquadrao.adicionarMembro(soldado4)

console.log("STATUS DO ESQUADRAO")
esquadrao.relatarStatus().forEach(status => {console.log(status)})


console.log(`
ESQUADRAO SAINDO PARA EXPLORAR TERRITORIO
${esquadrao.explorarTerritorio()}
`)

console.log("STATUS DO ESQUADRAO DE NOVO")
esquadrao.relatarStatus().forEach(status => {console.log(status)})

console.log(`
ESQUADRAO SAINDO PARA EXPLORAR TERRITORIO DE NOVO
${esquadrao.explorarTerritorio()}
`)
