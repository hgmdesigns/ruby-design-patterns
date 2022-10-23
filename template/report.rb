class Report
  def initialize
    @title = "Monthly Report"
    @text = [ 'Things are going', 'really, really well.' ]
    @report_output = ""
  end
  
  def output(format=:plain)
    if format == :plain
      @report_output << "*** #{@title} ***"
    elsif format == :html 
      @report_output << """
      <html>
       <head>
        <title>#{@title}</title>
        </head>
      <body>
      """
    else
      raise "Unknown format: #{fromat}"
    end
   
    @text.each do |line|
      if format == :plain
        @report_output << "\n" + line
      elsif format == :html
        @report_output << "\n" + "    <p>#{line}</p>"
      end
    end
    
    if format == :html
      @report_output << """
        </body>
      </html>
      """
    end
    
    @report_output
  end
end