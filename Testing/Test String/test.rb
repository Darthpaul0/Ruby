require 'test/unit'
# I'm pulling in the class I'm testing
require_relative './myclass'

# remember, this class must be a child of the Test::Unit::TestCase class
class TC1_Dog < Test::Unit::TestCase
  def test_case_speak
    dalton = Dog.new
    ac = dalton.speak
    p = /^(woof)+/
    assert_match(p, ac, "Pattern=#{p} and actual=#{ac}\n")
  end
  def test_case_growl
    dalton = Dog.new
    ac = dalton.growl
    #p = /^grrr$/
    p = /^grrr\s*\D*$/
    assert_match(p, ac, "Pattern=#{p} and actual=#{ac}\n")
  end
end
