def is_subset(array_a, array_b)
  array_b.each do |b|
    matched = false
    array_a.each do |a|
      if b == a
        matched = true
        break
      end
    end
    return false unless matched
  end
  true
end

require 'test/unit'

class IsSubsetTest < Test::Unit::TestCase
  def test_is_subset
    array_a = %w[a b c d e f]
    array_b = %w[b d f]
    assert_true(is_subset(array_a, array_b))

    array_b = %w[b d f h]
    assert_false(is_subset(array_a, array_b))
  end
end
