require 'test/unit'
require_relative "report"
require_relative "formaters"

class FormatersTest < Test::Unit::TestCase
  def test_html_formater
    report = Report.new &HTML_FORMATER
    expected_output = 
      "<html>\n  <head>\n  <title>Monthly Report</title>\n  </head>\n  <body><p>Things are going</p><p>really, really well.</p></body>\n  </html>"
    output = report.output_report 
    assert_equal(output, expected_output)
  end
  
  def test_plain_text_formater
    report = Report.new &PLAIN_TEXT_FORMATER
    expected_output =
      "*** Monthly Report ***\nThings are going\nreally, really well."
      output = report.output_report
      assert_equal(output, expected_output)
  end
end