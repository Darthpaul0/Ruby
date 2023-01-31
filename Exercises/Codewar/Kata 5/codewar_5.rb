=begin

You need to return a string that looks like a diamond 
shape when printed on the screen, using asterisk (*) 
characters. Trailing spaces should be removed, 
and every line must be terminated with a newline 
character (\n).

LINK --> https://www.codewars.com/kata/5503013e34137eeeaa001648

=end

def diamond(n)
  return nil if n.even? || n.negative?

  diamond_string = ""
  n.times do |i|
    space_count = (i - n / 2).abs
    asterisk_count = n - space_count * 2
    diamond_string << [' ' * space_count, '*' * asterisk_count].join + "\n"
  end

  diamond_string
end

# check function
print diamond(7)
