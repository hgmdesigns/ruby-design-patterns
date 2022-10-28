require_relative '../task'
class AddLiquidsTask < Task
  def initialize
    super("Add Liquids Task")
  end
  
  def get_time_required
    2.0       # minutes to add milk and honey
  end
end