require 'minitest/autorun'
require_relative '../composite_task'
require_relative '../task'

class CompositeTaskTest < Minitest::Test
  TASK_NAME = 'Composite Task'
  def setup
    @mock_composite_task = Minitest::Mock.new
    @composite_task = CompositeTask.new(TASK_NAME)
    
    @sub_task_1 = Task.new('Sub Task 1')
    @sub_task_2 = Task.new('Sub Task 2')
  end
  
  def test_assigns_name_at_initialisation
    assert_equal(TASK_NAME, @composite_task.name)
  end
  
  def test_access_sub_task_using_index
     assert_nil(@composite_task[0])
  end
  
  def test_add_sub_task_at_index
    assert_nil(@composite_task[0])
     
    @composite_task[0] = @sub_task_1
    assert(@sub_task_1, @composite_task[0])
  end
  
  def test_adding_sub_tasks
    assert_nil(@composite_task[0])
    
    @composite_task.add_sub_task(@sub_task_1)
    @composite_task.add_sub_task(@sub_task_2)
    
    assert_equal(@sub_task_1, @composite_task[0])
    assert_equal(@sub_task_2, @composite_task[1])
  end
  
  def test_removing_sub_tasks
    assert_nil(@composite_task[0])
    @composite_task.add_sub_task(@sub_task_1)
    @composite_task.add_sub_task(@sub_task_2)
    
    @composite_task.remove_sub_task(@sub_task_1)
    @composite_task.remove_sub_task(@sub_task_2)
    
    assert_nil(@composite_task[0])
    assert_nil(@composite_task[1])
  end
  
  ONE_MINUTE = 1.0
  def test_total_required_time
    @mock_composite_task.expect(:get_time_required, 1.0)
    @mock_composite_task.expect(:parent=, nil, [@composite_task])
    
    @composite_task.add_sub_task(@mock_composite_task)
  
    assert_equal(ONE_MINUTE, @composite_task.get_time_required)
  end
  
  TWO_TASKS = 2
  def test_total_number_of_tasks
    @composite_task.add_sub_task(@sub_task_1)
    @composite_task.add_sub_task(@sub_task_2)
    
    assert_equal(TWO_TASKS, @composite_task.total_number_of_basic_tasks)
  end
  
  def test_push_arrow_operator
    assert_nil(@composite_task[0])
    
    @composite_task << @sub_task_1
    @composite_task << @sub_task_2
    
    assert_equal(@sub_task_1, @composite_task[0])
    assert_equal(@sub_task_2, @composite_task[1])
  end
end