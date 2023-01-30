# SETUP AND TEARDOWN

• Prerequisites or code to be executed before the test cases execute is written
inside a setup() method. Any code you write inside setup() will be executed
before each test case code.

• Code to be executed after test cases is written inside a teardown() method.
Any code you write inside teardown() will be executed after each test case
execution.

• Neither setup nor teardown are mandatory, but they must be spelled this way
exactly. Essentially, you use setup() and teardown() to remove any dependency
between test cases. For example, you could use setup in a scenario where you
need to do something prior to executing a test including:
  o	creating an instance of a specific object
  o	deleting a file from the file system
  o	inserting or creating test data

•	Likewise, you could use teardown in a scenario where you need to do something
after executing a test including:
  o	destroying an instance of a specific object
  o	deleting a file from the file system
  o	removing or deleting test data
