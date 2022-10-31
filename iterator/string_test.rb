require 'minitest/autorun'
require_relative 'string'

class StringTest < Minitest::Test
  def test_for_each_element
    a = 'abcd'
    
    output = []
    a.for_each_element {|element| output << element}
    assert_equal(['a', 'b', 'c', 'd'], output)
  end
end