require_relative 'composite_task'
require_relative 'make_batter_task'
require_relative 'fill_pan_task'
require_relative 'frost_task'
require_relative 'lick_spoon_task'
require_relative 'bake_task'
class MakeCake < CompositeTask
  def initialize
    super("Make Cake")
    add_sub_task(MakeBatterTask.new)
    add_sub_task(FillPanTask.new)
    add_sub_task(BakeTask.new)
    add_sub_task(FrostTask.new)
    add_sub_task(LickSpoonTask.new)
  end
end