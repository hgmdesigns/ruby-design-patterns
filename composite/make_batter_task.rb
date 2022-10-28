require_relative 'task'
require_relative 'leafs/add_dry_ingredients_task'
require_relative 'leafs/add_liquids_task'
require_relative 'leafs/mix_task'

class MakeBatterTask < Task
  def initialize
    super("Make Batter Task")
    @sub_tasks = []
    add_sub_task(AddDryIngredientsTask.new)
    add_sub_task(AddLiquidsTask.new)
    add_sub_task(MixTask.new)
  end
  
  def add_sub_task(task)
    @sub_tasks << task
  end
  
  def remove_sub_task(task)
    @sub_tasks.delete(task)
  end
  
  def get_time_required
    time = 0.0
    @sub_tasks.each {|task| time += task.get_time_required }
    time
  end
end