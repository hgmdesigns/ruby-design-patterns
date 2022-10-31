require_relative 'task'
class CompositeTask < Task
  def initialize(name)
    super(name)
    @sub_tasks = []
  end
  
  def add_sub_task(task)
    @sub_tasks << task
    task.parent = self
  end
  
  def <<(task)
   add_sub_task(task)
  end
  
  def [](index)
    @sub_tasks[index]
  end
  
  def []=(index, new_value)
    @sub_tasks[index] = new_value
  end
  
  def remove_sub_task(task)
    @sub_tasks.delete(task)
    task.parent = nil
  end
  
  def get_time_required
    total_time=0.0
    @sub_tasks.each {|task| total_time += task.get_time_required }
    total_time
  end
  
  def total_number_of_basic_tasks
    total_tasks=0
    @sub_tasks.each {|task| total_tasks += task.total_number_of_basic_tasks }
    total_tasks
  end
end