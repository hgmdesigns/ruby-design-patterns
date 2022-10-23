require_relative "report"

class HTMLReport < Report
  def  output_start
    @report_output << '<html>'
  end
  
  def  output_head
    @report_output << '<head>' + "<title>#{@title}</title>" + '</head>'
  end
  
  def  output_body_start
    @report_output << '<body>'
  end
  
  def output_line(line)
    @report_output << "<p>#{line}</p>"
  end
  
  def  output_body_end
    @report_output << '</body'
  end
  
  def output_end
    @report_output << '</html>'
  end
  
end