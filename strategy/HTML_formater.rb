class HTMLFormater
  def output_report(context)
    output = """<html>
    <head>
    <title>#{context.title}</title>
    </head>
    <body>"""
    
    context.text.each do |line|
      output << "<p>#{line}</p>"
    end
    
    output <<  
      """</body>
    </html>"""
      
  output
  end
end