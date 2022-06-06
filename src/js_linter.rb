require './stack'

def js_linter(text)
  stack = Stack.new
  text.each_char do |char|
    if opening_brace?(char)
      stack.push(char)
    elsif closing_brace?(char)
      popped_opening_brace = stack.pop
      return "#{char} doesn't have opening brace" unless popped_opening_brace

      return "#{char} has mismatched opening brace" if not_a_match?(popped_opening_brace, char)
    end
  end
  return "#{stack.read} does not have closing brace" if stack.read

  true
end

def opening_brace?(char)
  %w|( [ {|.include?(char)
end

def closing_brace?(char)
  %w|) ] }|.include?(char)
end

def not_a_match?(opening_brace, closing_brace)
  closing_brace != { '(' => ')', '[' => ']', '{' => '}' }[opening_brace]
end

require 'test/unit'

class JSLinterTest < Test::Unit::TestCase
  def test_js_linter
    snippet = '(var x = {y: [1, 2, 3]})'
    assert_true(js_linter(snippet))
  end
end
