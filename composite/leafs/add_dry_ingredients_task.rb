require_relative '../task'
class AddDryIngredientsTask < Task
  def initialize
    super("Add dry ingredients")
  end
  
  def get_time_required
    1.0             # 1 minute to add sugar and flour
  end
end