require 'test/unit'
require_relative 'report'
require_relative 'plain_text_formater'
require_relative 'HTML_formater'

class ReportTest < Test::Unit::TestCase
  # cases being coverd by formaters_test where we are using lambda based
  # formaters
  # Implement format stratgies as lambdas, as using lambda based formaters
  # are more flexible than implementing stratgy classes
  
  # def test_output_report_with_plain_text_formater
#     report = Report.new(PlainTextFormater.new)
#     expected_out = "*** Monthly Report ***\n Things are going\n really, really well."
#     assert_equal(report.output_report, expected_out)
#   end
#
#   def test_output_report_with_HTML_formater
#     report = Report.new(HTMLFormater.new)
#     expected_out =
#       "<html>\n    <head>\n    <title>Monthly Report</title>\n    </head>\n    <body><p>Things are going</p><p>really, really well.</p></body>\n    </html>"
#     assert_equal(report.output_report, expected_out)
#   end
end