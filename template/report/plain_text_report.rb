require_relative "report"

class PlainTextReport < Report
  def output_start; end
  
  def output_head
    @report_output << "*** #{@title} ***"
  end
  
  def output_body_start; end
  
  def output_line(line)
    @report_output << "\n#{line}"
  end
  
  def output_body_end; end
  
  def output_end; end
end