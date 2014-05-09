require "spec_helper"

describe Foo do
  subject do
    Foo.new(:caixas => 1, :qt_clientes => 5)
  end

  it "should respond to :caixas" do
    expect(subject).to respond_to :caixas
  end

  it "should respond to :qt_clientes" do
    expect(subject).to respond_to :qt_clientes
  end

  it "should respond_to add_cliente" do
    expect(subject).to respond_to :add_cliente
  end

  it "should add clientes" do
    expect {
      subject.add_cliente(Cliente.new(0, 10))
    }.to change { subject.clientes }
  end

  context "calcule" do
    subject do
      Foo.new :caixas => 1, :qt_clientes => 5
    end

    before do
      subject.add_cliente Cliente.new(0, 10)
      subject.add_cliente Cliente.new(0, 10)
      subject.add_cliente Cliente.new(1, 10)
      subject.add_cliente Cliente.new(2, 10)
      subject.add_cliente Cliente.new(30, 10)
    end

    it "calcule" do
      expect(subject.calc).to eq 1
    end
  end
end
