require 'test/unit'

# Pulling in the class tested
require_relative './myclass'

# child of Test::Unit::TestCase class
class TC1_Addition < Test::Unit::TestCase
  def test_case1
    x = 2
    y = 5
    ex = x + y
    calc = Addition.new
    ac = calc.add(x, y)
    
    # some test examples
    assert_equal(ex, ac, "Adding x=#{x} and y=#{y}, expect #{ex}?\n")
    assert_true(ac == 7, "Adding x=#{x} and y=#{y}, expect #{ex}?\n")
    assert_compare(ex ,">=", ac, "Adding x=#{x} and y=#{y}, expect #{ex}?\n")
    assert(ac == 7, "Adding x=#{x} and y=#{y}, expect #{ex}?\n")
  end
end
