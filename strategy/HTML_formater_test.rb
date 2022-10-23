require 'test/unit'
require_relative 'HTML_formater'

class HTMLFormaterTest < Test::Unit::TestCase
  def test_html_formater_output
    formater = HTMLFormater.new
    expected_output = 
    """<html>
    <head>
    <title>Testing Report</title>
    </head>
    <body><p>Works</p><p>Well</p></body>
    </html>"""
    output = formater.output_report("Testing Report", ['Works', 'Well'])
    assert_equal(output, expected_output)
  end
end
