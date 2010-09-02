class Hash

  def nested_symbolize_keys!
    each do |k,v|
      sym = k.respond_to?(:to_sym) ? k.to_sym : k
      self[sym] = Hash === v ? v.nested_symbolize_keys! : v
      delete(k) unless k == sym
    end
    self
  end

end