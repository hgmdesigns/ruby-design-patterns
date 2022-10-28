require_relative 'composite_task'
class FrostTask < CompositeTask
  def initialize
    super("Frost Task")
  end
  
  def get_time_required
    30.0          # minutes to frost the cake
  end
end