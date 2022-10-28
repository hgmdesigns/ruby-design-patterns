require_relative 'task'
require_relative 'leafs/add_dry_ingredients_task'
require_relative 'leafs/add_liquids_task'
require_relative 'leafs/mix_task'
require_relative 'composite_task'

class MakeBatterTask < CompositeTask
  def initialize
    super("Make Batter Task")
    add_sub_task(AddDryIngredientsTask.new)
    add_sub_task(AddLiquidsTask.new)
    add_sub_task(MixTask.new)
  end
end