require_relative '../composite_task'
class LickSpoonTask < CompositeTask
  def initialize
    super("Lick Spoon Task")
  end
  
  def get_time_required
    1.0       # minute to taste the batter
  end
end