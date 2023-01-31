=begin

You need to return a string that looks like a diamond 
shape when printed on the screen, using asterisk (*) 
characters. Trailing spaces should be removed, 
and every line must be terminated with a newline 
character (\n).

LINK --> https://www.codewars.com/kata/5503013e34137eeeaa001648

=end

def diamond(n)
  # we won't accept even and negative numbers as inputs
  return nil if n.even? || n.negative?

  # initialize diamond
  diamond_string = ""

  # drawing process
  n.times do |i|
    # get number of spaces
    space_count = (i - n / 2).abs

    # get number of asterisks
    asterisk_count = n - space_count * 2

    # build diamond
    diamond_string << [' ' * space_count, '*' * asterisk_count].join + "\n"
  end

  # final result
  diamond_string
end

# check function
print diamond(7)
