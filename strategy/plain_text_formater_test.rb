require 'test/unit'
require_relative 'plain_text_formater'

class PlainTextFormaterTest < Test::Unit::TestCase
  def test_output_report
    formater = PlainTextFormater.new
    expected_output = "*** Testing Report ***\n Works\n Well"
    output = formater.output_report("Testing Report", ['Works', 'Well'])
    assert_equal(output, expected_output)
  end
end