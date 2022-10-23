class Report
  def initialize
    @title = "Monthly Report"
    @text = [ 'Things are going', 'really, really well.' ]
    @report_output = ""
  end
  
  def output
    output_start
    output_head
    output_body_start
    @text.each do |line|
      output_line(line)
    end
    output_body_end
    output_end
    
    @report_output
  end

  def output_start; end
  
  def output_body_start; end
  
  def output_body_end; end
  
  def output_end; end
  
  def output_head
   output_line(@title)
  end
  
  def output_line(line)
    raise 'Called abstract method: output_line'
  end
  
end