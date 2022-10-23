class Report
  attr_reader :title, :text
  attr_accessor :formater
  
  def initialize(formater)
    @title = "Monthly Report"
    @text = [ 'Things are going', 'really, really well.' ]
    @fromater = formater
  end
  
  def output_report
     @fromater.output_report(@title, @text)
  end
end