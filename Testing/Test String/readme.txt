# ASSERTING STRINGS USING A PATTERN

Using assert_match:
assert_match(pattern, string, message)

Here, if there is not match between pattern and string, then the optional
message is displayed and the assertion fails. It can sometimes help to offer
some valuable information about the test case in the message.
