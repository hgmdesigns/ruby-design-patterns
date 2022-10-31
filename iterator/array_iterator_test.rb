require 'minitest/autorun'
require_relative 'array_iterator'

class ArrayIteratorTest < Minitest::Test
  def test_iteration
    input = ['red', 'green', 'blue']
    
    i = ArrayIterator.new(input)
    
    output = []
    while i.has_next?
      output << i.next_item
    end
    
    assert_equal(input, output)
  end
  
  def test_iteration_with_string
    input = 'abc'
    i = ArrayIterator.new('abc')
    
    output = []
    while i.has_next?
      output << i.next_item.chr
    end
    
    assert_equal(['a', 'b', 'c'], output)
  end
end