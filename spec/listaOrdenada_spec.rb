require 'rspec'
require_relative '../src/Ejercicio2'

describe "Ejercicios discord 1" do
  let(:mi_lista){
    ListaOrdenada.new()
  }

  before() do
    mi_lista << 5
    mi_lista << 1
    mi_lista << 3
    mi_lista << 10
    mi_lista << 2
  end

  it "La lista 10 9 8 7 6 5 4 3 2 1 queda ordenada" do
    lista = ListaOrdenada.new()
    lista << 10
    lista << 9
    lista << 8
    lista << 7
    lista << 6
    lista << 5
    lista << 4
    lista << 3
    lista << 2
    lista << 1

    expect(lista.to_a).to eq((1..10).to_a)
  end

  it "La lista 5 1 3 10 2 queda ordenada" do
    expect(mi_lista.to_a).to eq([1,2,3,5,10])
  end

  it "mi_lista.select { |x| x < 5 } es [1,2,3]" do
    expect(mi_lista.select { |x| x < 5 }).to eq([1,2,3])
  end

  it "mi_lista.first me de 1" do
    expect(mi_lista.first).to eq(1)
  end

  it "mi_lista.sum # me de 21, igual que como funciona en cualquier lista" do
    expect(mi_lista.sum).to eq(21)
  end

  it "mi_lista.take(3) # me de [1, 2, 3]" do
    expect(mi_lista.take(3)).to eq([1,2,3])
  end

  it "mi_lista.drop(3) # me de [5, 10]" do

  end
end