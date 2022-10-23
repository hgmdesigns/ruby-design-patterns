class PlainTextFormater
  def output_report(context)
    output = "*** #{context.title} ***"
    context.text.each do |line|
      output << "\n #{line}"
    end
    
    output
  end
end