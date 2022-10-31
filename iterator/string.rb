class String
  def for_each_element
    i = 0
    while i < self.length
      yield(self[i])
      i += 1
    end
  end
end