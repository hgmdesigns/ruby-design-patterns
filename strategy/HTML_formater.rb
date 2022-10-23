require_relative "formater"

class HTMLFormater < Formater
  def output_report(title, text)
    output = """<html>
    <head>
    <title>#{title}</title>
    </head>
    <body>"""
    
    text.each do |line|
      output << "<p>#{line}</p>"
    end
    
    output <<  
      """</body>
    </html>"""
      
  output
  end
  
  
end