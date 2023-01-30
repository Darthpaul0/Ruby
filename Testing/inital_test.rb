require 'test/unit'

# must be a child of the Test::Unit::TestCase class
class TC1_Meaningful_Name < Test::Unit::TestCase
  @@x = false

  # method name must start with the word 'test'
  def test_case1
    # assertions would go here
    puts " these are steps"
    puts " in my test case"
    res = @@x ? true : false
    assert_true(res, "Error, the res is #{res}, which is not correct")

  end

  # always executes before the test cases
  def setup
    puts "\n\n\nsetup method always runs BEFORE the test case execution"
    # @@x = true
  end

  # always executes after the test cases
  def teardown
    puts "teardown method always runs AFTER test case execution"
  end
end
