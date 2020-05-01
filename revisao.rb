class Animal
  attr_reader :name, :breed, :color

  # STATE + BEHAVIOR

  def initialize(name, breed, color)
    # características iniciais
    # variáveis de instância (@) => STATES
    @name = name
    @breed = breed
    @color = color
  end
end

class Cat < Animal
  def miau
    puts "miau"
  end

  def self.likes
    ['leite', 'peixe', 'whyskas', 'cortina', 'cadarço']
  end
end

class Dog < Animal
  def latido
    puts 'au au'
  end

  def self.likes
    ['bola', 'humanos', 'bifinho']
  end
end


# tom = Cat.new('Tom', 'vira-lata', 'cinza')
# garfield = Cat.new('Garfield', 'gato', 'laranja')

# puts "#{tom.name} é um gato #{tom.breed} #{tom.color}"
# puts "#{garfield.name} é um gato #{garfield.breed} #{garfield.color}"

# puts "\n"
# tom.miau
# garfield.miau

# puts "\n"
# p Cat.likes



# Pilha (Stack) => LIFO (Last in - First out)
class Pilha

  def initialize
    @pilha = []
  end

  def inserir_na_pilha(prato)
    @pilha << prato
  end

  def retirar_da_pilha
    @pilha.pop
  end

end


# Fila (Queue) => FIFO (First in - First out)
class Fila

  def initialize
    @fila = []
  end

  def inserir_na_fila(pessoa)
    @fila << pessoa
  end

  def retirar_da_fila
    @fila.shift
  end

end

fila_de_banco = Fila.new
fila_de_banco.inserir_na_fila("Mari")
fila_de_banco.inserir_na_fila("Monique")
fila_de_banco.inserir_na_fila("Matheus")
fila_de_banco.retirar_da_fila
p fila_de_banco

fila_do_mercado = Fila.new
p fila_do_mercado


























