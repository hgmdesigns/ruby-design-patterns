require_relative "report"
require 'test/unit'

class TestReport < Test::Unit::TestCase
  def test_html_output
    report = Report.new
    expected_html_output = "\n      <html>\n       <head>\n        <title>Monthly Report</title>\n        </head>\n      <body>\n      \n    <p>Things are going</p>\n    <p>really, really well.</p>\n        </body>\n      </html>\n      "
    assert_equal(report.output(:html), expected_html_output)
  end
  
  def test_plain_output
    report = Report.new
    expected_plain_output = "*** Monthly Report ***\n" + "Things are going\n" + "really, really well."
    assert_equal(report.output(:plain), expected_plain_output)
  end
end