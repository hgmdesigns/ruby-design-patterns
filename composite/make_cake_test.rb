require 'minitest/autorun'
require_relative 'make_cake'

class MakeCakeTest < MiniTest::Test
  make_cake = MakeCake.new
  assert_equal(87.0, make_cake.get_time_required)
end