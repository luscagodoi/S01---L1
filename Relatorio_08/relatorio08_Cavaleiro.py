class Personagem:
    def __init__(self, vida: int, resistencia: int):
        self._vida = vida
        self._resistencia = resistencia
        
    def get_vida(self):
        return self._vida
        
    def set_vida(self, nova_vida):
        self._vida = nova_vida
        
    def __str__(self):
        return "Personagem com {} de vida.".format(self._vida)
        
        
class Cavaleiro(Personagem):
        armadura_pesada = True
        
        def __str__(self):
            return "Cavaleiro com {} de vida.".format(self._vida)
        
if __name__ == "__main__":
    personagem = Cavaleiro(int(input("Digite a vida: ")), int(input("Digite a resistencia: ")))
    
    print(personagem)

# 1. Crie uma classe base chamada Personagem.
# 2. Defina os atributos _vida (inteiro) e _resistencia (inteiro) 
#    usando a convenção Python de atributos privados.
# 3. Implemente o método __init__ para inicializar esses atributos.
# 4. Use as Propriedades para criar getters e setters controlados para a vida.
# 5. Crie uma classe filha chamada Cavaleiro que herde de Personagem.
# 6. Adicione o atributo armadura_pesada (booleano) exclusivo.
# 7. Implemente o método __str__ em ambas as classes para retornar 
#    uma descrição formatada do objeto (ex: "Personagem com 100 de vida").