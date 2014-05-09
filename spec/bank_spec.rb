require "spec_helper"

describe Bank do
  subject do
    Bank.new(:cashs => 1, :clients_count => 5)
  end

  it "should respond to :cashs" do
    expect(subject).to respond_to :cashs
  end

  it "should respond to :clients_count" do
    expect(subject).to respond_to :clients_count
  end

  it "should respond_to add_cliente" do
    expect(subject).to respond_to :add_cliente
  end

  it "should add clients" do
    expect {
      subject.add_cliente(Client.new(0, 10))
    }.to change { subject.clients }
  end

  context "calcule" do
    subject do
      Bank.new :cashs => 1, :clients_count => 5
    end

    before do
      subject.add_cliente Client.new(0, 10)
      subject.add_cliente Client.new(0, 10)
      subject.add_cliente Client.new(1, 10)
      subject.add_cliente Client.new(2, 10)
      subject.add_cliente Client.new(30, 10)
    end

    it "calcule" do
      expect(subject.calc).to eq 1
    end
  end

  context "calcule" do
    subject do
      Bank.new :cashs => 3, :clients_count => 16
    end

    before do
      subject.add_cliente Client.new(3, 16)
      subject.add_cliente Client.new(0, 10)
      subject.add_cliente Client.new(0, 10)
      subject.add_cliente Client.new(0, 10)
      subject.add_cliente Client.new(3, 10)
      subject.add_cliente Client.new(5, 10)
      subject.add_cliente Client.new(7, 10)
      subject.add_cliente Client.new(11, 10)
      subject.add_cliente Client.new(13, 10)
      subject.add_cliente Client.new(14, 10)
      subject.add_cliente Client.new(15, 10)
      subject.add_cliente Client.new(16, 10)
      subject.add_cliente Client.new(17, 10)
      subject.add_cliente Client.new(18, 3)
      subject.add_cliente Client.new(19, 10)
      subject.add_cliente Client.new(20, 10)
      subject.add_cliente Client.new(23, 3)
    end

    it "calcule" do
      pending "the code is prepared to only one cash" do
        expect(subject.calc).to eq 2
      end
    end
  end
end
