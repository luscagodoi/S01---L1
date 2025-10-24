class Musico
  attr_reader :nome
  attr_reader :instrumento
  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end
  
  def tocar_partitura(peca)
    raise NotImplementedError "#{self.class} deve implementar o método 'tocar_partitura'"
  end
end

class Violinista < Musico
  def initialize(nome)
    super(nome, "Violino")
  end
  def tocar_partitura(peca)
    puts "#{nome} está executando #{instrumento} na peca \"#{peca}\""
  end
end

class Pianista < Musico
  def initialize(nome)
    super(nome, "Piano")
  end
  def tocar_partitura(peca)
    puts "#{nome} está dedilhando #{instrumento} na peca \"#{peca}\""
  end
end

class Maestro
  def initialize(lista_musicos = [])
    @lista_musicos = lista_musicos
  end
  
  def iniciar_ensaio(peca)
    @lista_musicos.each do |musico|
      musico.tocar_partitura(peca)
    end
  end
  
  def mudar_foco(estado)
    @lista_musicos.map do |musico|
      "#{musico.nome} está #{estado}"
    end
  end
end

lista_musicos = [Pianista.new("Jorge"), Violinista.new("Paulo"), Pianista.new("Florentino"), Violinista.new("Cleber")]

peca = gets.chomp

teste = Maestro.new(lista_musicos)

teste.iniciar_ensaio(peca)

puts teste.mudar_foco("Ansioso")

# 1. Crie a classe base Musico (com nome e instrumento). No método tocar_partitura(peca), 
#    utilize o raise NotImplementedError para forçar a implementação nas filhas 
#    (Abstração por contrato).
#
# 2. Crie as classes filhas Pianista e Violinista que herdam de Musico e 
#    sobrescrevem tocar_partitura(peca).
#
# 3. Crie a classe Maestro.
#
# 4. Crie um método iniciar_ensaio(peca) no Maestro que recebe a peca e usa 
#    Array.each na lista de músicos para chamar o método polimórfico.
#
# 5. Crie um método mudar_foco(estado) no Maestro que usa .map para retornar 
#    um novo Array com a mensagem de foco para cada músico (ex: "Kousei agora 
#    está Concentrado!").
#
# 6. No main, crie a lista de músicos e use gets.chomp para que o usuário 
#    defina o nome da peça a ser tocada no ensaio.
