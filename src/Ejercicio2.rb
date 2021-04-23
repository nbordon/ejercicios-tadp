class ListaOrdenada < Array
  def << obj
    a = self.index{|x|x>=obj}
    if a.nil?
      super
    else
      insert(a,obj)
    end
  end
end