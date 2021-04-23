class Tamanio
  include Comparable
  attr_accessor :cantidad,:unidad

  @@indice_unidad = ["B","KB","MB","TB"]

  def initialize(unidad, cantidad)
    @unidad = unidad.upcase
    @cantidad = cantidad
  end

  def <=>(other)
    tamanioEnBytes? <=> other.tamanioEnBytes?
  end

  def indiceUnidad?
    @@indice_unidad.rindex((@unidad.upcase))
  end

  def tamanioEnBytes?
    @cantidad * (1024 ** indiceUnidad?)
  end
end
