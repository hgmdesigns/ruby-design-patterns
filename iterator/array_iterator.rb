class ArrayIterator
  def initialize(array)
    @array = array
    @index = 0
  end
  
  def has_next?
    @index < @array.length
  end
  
  def item
    @array[@index]
  end
  
  def next_item
    value = @array[@index]
    @index += 1
    value
  end
  
  def self.merge(array1, array2)
    merged = []
    
    iterator1 = ArrayIterator.new(array1)
    iterator2 = ArrayIterator.new(array2)
    
    while(iterator1.has_next? && iterator2.has_next?)
      if iterator1.item < iterator2.item
        merged << iterator1.next_item
      else
        merged << iterator2.next_item
      end
    end
    
    # Pick up the leftovers from array1
    while(iterator1.has_next?)
      merged << iterator1.next_item
    end
    
    # Pick up the leftovers from array2
    while(iterator2.has_next?)
      merged << iterator2.next_item
    end
    
    merged
  end
end