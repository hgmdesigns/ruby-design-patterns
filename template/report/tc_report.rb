require_relative "HTML_report"
require_relative "plain_text_report"
require 'test/unit'

class TestReport < Test::Unit::TestCase
  def test_html_output
    report = HTMLReport.new
    expected_html_output = "<html><head><title>Monthly Report</title></head><body><p>Things are going</p><p>really, really well.</p></body</html>"
    assert_equal(report.output, expected_html_output)
  end
  
  def test_plain_output
    # pending update
    report = PlainTextReport.new
    expected_plain_output = "*** Monthly Report ***\nThings are going\nreally, really well."
    assert_equal(report.output, expected_plain_output)
  end
end