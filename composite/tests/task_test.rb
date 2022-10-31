require 'minitest/autorun'
require_relative '../task'

class TaskTest < Minitest::Test
  def setup
    @task = Task.new('Test')
  end
  
  def test_has_public_access_to_name
    assert @task.public_methods.include?(:name)
  end
  
  def test_has_public_access_to_parent
     assert @task.public_methods.include?(:parent)
  end
  
  def test_can_assign_parent_attribute
    parent_task = Task.new('Parent Task')
    @task.parent = parent_task
    assert_equal(parent_task, @task.parent)
  end
  
  ZERO = 0.0
  def test_time_required_is_0
    assert_equal(ZERO, @task.get_time_required)
  end
  
  ONE = 1
  def test_total_number_of_basic_tasks_is_1
    assert_equal(ONE, @task.total_number_of_basic_tasks)
  end
end