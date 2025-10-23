class Drink
  attr_reader :nome
  
  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end
  
  def preco
    @preco
  end
  
  def preco=(novo_preco)
    @preco = novo_preco if novo_preco.is_a?(Numeric) && novo_preco.positive?
  end
  
  def to_s
    "Nome da bebida: #{@nome}, Preco inicial da bebida: #{@preco}"
  end
end

class DrinkLenda < Drink
  def initialize(nome, preco, tempo)
    super(nome, preco)
    @tempo = tempo
  end
  
  def preco_final
    preco+@tempo*5
  end
  
  def to_s
    "Nome da bebida: #{@nome}, Preco inicial da bebida: #{@preco}, Anos desde a criacao: #{@tempo}"
  end
end

puts "Nome da bebida: "
nome = gets.chomp
puts "Preco inicial da bebida: "
preco = gets.chomp.to_i
puts "Anos desde a criacao: "
tempo = gets.chomp.to_i

bebida = DrinkLenda.new(nome, preco, tempo)

puts "Preco final da bebida: #{bebida.preco_final}"

# 1. Crie a classe base Drink com atributos encapsulados @_nome e @_preco_base.
#
# 2. Use attr_reader :nome. Para o preço, crie um Getter explícito (def preco_base) 
#    e um Setter explícito (def preco_base=) que valide se o valor inserido é positivo.
#
# 3. Crie a subclasse DrinkLenda que herda de Drink e adiciona @anos_desde_criacao.
#
# 4. Em DrinkLenda, implemente o método preco_final que sobrescreve a lógica do 
#    cálculo base, adicionando um bônus de $5 por ano de criação.
#
# 5. Implemente o método to_s (equivalente a __str__ em Ruby) em todas as classes.
#
# 6. No main, use gets.chomp para coletar do usuário o nome, preço base e a idade 
#    do drink em anos e então crie e exiba o preço final.