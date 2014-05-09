class Cliente
  attr_accessor :entrada, :duracao, :saida

  def initialize(entrada, duracao)
    self.entrada, self.duracao = entrada, duracao
  end

  def tempo_de_espera
    saida - duracao - entrada
  end
end

class Foo
  attr_accessor :caixas, :clientes, :qt_clientes

  def initialize(options = {})
    self.caixas = options.fetch(:caixas, 0)
    self.qt_clientes = options.fetch(:qt_clients, 0)
    self.clientes = []
  end

  def add_cliente cliente
    self.clientes << cliente
  end

  def calc
    hora = 0
    tempo = 0
    total = 0

    clientes.each do |cliente|
      hora += cliente.duracao
      cliente.saida = hora

      total += 1 if cliente.tempo_de_espera > 20
      puts cliente.tempo_de_espera
    end

    total
  end
end
