# ASSERTING OBJECTS

Using assert_instance_of:
assert_instance_of(class, object, message)

Here, you need to make sure that you specify the class (no quotes) and for the
object, the object itself, not the class of the object, a common mistake.

You can also test certain properties about an object using other assertions:
assert_nil(object, message)
assert_true(object, message)
assert_false(object, message)
