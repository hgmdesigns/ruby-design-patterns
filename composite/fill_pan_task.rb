require_relative 'composite_task'
class FillPanTask < CompositeTask
  def initialize
    super("Fill Pan Task")
  end
  
  def get_time_required
    5.0       # minutes to fill the pan with batter
  end
end