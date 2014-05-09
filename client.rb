class Client
  attr_accessor :start_at, :time, :end_at

  def initialize(start_at, time)
    self.start_at, self.time = start_at, time
  end

  def waiting_time
    end_at - time - start_at
  end
end
