require 'test/unit'
require_relative 'plain_text_formater'

class PlainTextFormaterTest < Test::Unit::TestCase
  def setup
    context_klass = Struct.new(:title, :text)
    @context = context_klass.new("Testing Report", ['Works', 'Well'])
  end
  
  def test_output_report
    formater = PlainTextFormater.new
    expected_output = "*** Testing Report ***\n Works\n Well"
    output = formater.output_report(@context)
    assert_equal(output, expected_output)
  end
end