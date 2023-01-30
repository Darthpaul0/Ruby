 require 'test/unit'
# I'm pulling in the class I'm testing
require_relative './myclass'

# remember, this class must be a child of the Test::Unit::TestCase class
class TC1_Dog < Test::Unit::TestCase
  def test_case_class
    dalton = Dog.new
    cl = dalton.class
    puts dalton.class
    puts dalton.instance_of?(Dog)
    assert_instance_of(Dog, dalton, "dalton is not? of the #{cl} class\n")
  end
  def test_case_growl
    dalton = Dog.new
    ac = dalton.growl
    #assert_nil(ac, "test says dalton does growl\n")
    #assert_true(ac == nil, "test says dalton does growl\n")
    assert_false(ac, "test says dalton does growl\n")
  end
end
