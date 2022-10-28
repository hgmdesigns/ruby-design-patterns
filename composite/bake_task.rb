require_relative 'composite_task'
class BakeTask < CompositeTask
  def initialize
    super('Bake Task')
  end
  
  def get_time_required
    45.0        # minutes to bake cke
  end
end