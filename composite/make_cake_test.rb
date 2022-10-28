require 'minitest/autorun'
require_relative 'make_cake'

class MakeCakeTest < MiniTest::Test

  def test_make_cake_time_required
    make_cake = MakeCake.new
    assert_equal(87.0, make_cake.get_time_required)
  end
  
  TOTAL_TASKS = 3
  def test_total_number_of_basic_tasks
    make_cake = MakeCake.new
    assert_equal(TOTAL_TASKS, make_cake.total_number_of_basic_tasks)
  end
end