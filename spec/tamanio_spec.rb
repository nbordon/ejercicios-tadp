require 'rspec'
require_relative '../src/Ejercicio1'

describe "Ejercicios discord 1" do
  let(:a){
    Tamanio.new("kb",1000)
  }

  let(:b){
    Tamanio.new("mb",1)
  }

  it "tamaño en bytes de a es 1024000" do
    expect( a.tamanioEnBytes?).to eq(1024000)
  end

  it "A de 1024000 B es igual a B de 1000 KB" do
    a.unidad = "B"
    a.cantidad = 1024000
    b.unidad = "KB"
    b.cantidad = 1000
    expect( a == b).to eq(true)
  end

  it "Indice de a (KB) es 1" do
    expect( a.indiceUnidad?).to eq(1)
  end

  it "A de 1000 KB es menor que B de 1 MB" do
    expect(a < b).to eq(true)
  end

  it "A de 1025 KB es mayor que B de 1 MB" do
    a.unidad = "kb"
    a.cantidad = 1025
    expect(a > b).to eq(true)
  end

  it "A de 1024 Kb es igual a B de 1 MB" do
    a.unidad = "Kb"
    a.cantidad = 1024

    expect(a == b).to eq(true)
  end

  it "A de 1 TB es mayor a B de 1 MB" do
    a.unidad = "TB"
    a.cantidad = 1

    expect(a > b).to eq(true)
  end

  it "Tamanio.new(\"KB\", 1000) < Tamanio.new(\"MB\", 2) me de true" do
    expect(Tamanio.new("KB", 1000) < Tamanio.new("MB", 2)).to eq(true)
  end

  it "[Tamanio.new(\"KB\", 1025), Tamanio.new(\"MB\", 1), Tamanio.new(\"KB\", 42)].max me de el primero de esa lista" do
    listaTamanios = [Tamanio.new("KB", 1025), Tamanio.new("MB", 1), Tamanio.new("KB", 42)]
    expect(listaTamanios.max).to eq(listaTamanios.first)
  end
end

