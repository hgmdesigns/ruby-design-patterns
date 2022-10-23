require_relative 'formater'

class PlainTextFormater < Formater
  def output_report(title, text)
    output = "*** #{title} ***"
    text.each do |line|
      output << "\n #{line}"
    end
    
    output
  end
end