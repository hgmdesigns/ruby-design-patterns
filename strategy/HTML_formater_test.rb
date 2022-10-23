require 'test/unit'
require_relative 'HTML_formater'

class HTMLFormaterTest < Test::Unit::TestCase
  def setup
    context_klass = Struct.new(:title, :text)
    @context = context_klass.new("Testing Report", ['Works', 'Well'])
  end
  
  def test_html_formater_output
    formater = HTMLFormater.new
    expected_output = 
    """<html>
    <head>
    <title>Testing Report</title>
    </head>
    <body><p>Works</p><p>Well</p></body>
    </html>"""
    output = formater.output_report(@context)
    assert_equal(output, expected_output)
  end
end
