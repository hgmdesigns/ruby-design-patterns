require_relative "report"

class PlainTextReport < Report
  def output_head
    @report_output << "*** #{@title} ***"
  end

  def output_line(line)
    @report_output << "\n#{line}"
  end
end