HTML_FORMATER = lambda do |context|
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

PLAIN_TEXT_FORMATER = lambda do |context|
  output = "*** Monthly Report ***"
  
  context.text.each do |line|
    output << "\n#{line}"
  end
  
  output
end