class Bank
  attr_accessor :cashs, :clients, :clients_count

  def initialize(options = {})
    self.cashs = options.fetch(:cashs, 0)
    self.clients_count = options.fetch(:clients_count, 0)
    self.clients = []
  end

  def add_cliente cliente
    self.clients << cliente
  end

  def calc
    hour = 0
    time = 0
    total = 0

    clients.each do |cliente|
      hour += cliente.time
      cliente.end_at = hour

      total += 1 if cliente.waiting_time > 20
    end

    total
  end
end
