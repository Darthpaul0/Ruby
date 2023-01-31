=begin

The drawing shows 6 squares the sides of which have
a length of 1, 1, 2, 3, 5, 8. It's easy to see that 
the sum of the perimeters of these squares is: 
4 * (1 + 1 + 2 + 3 + 5 + 8) = 4 * 20 = 80

https://www.codewars.com/kata/559a28007caad2ac4e000083

=end

# classical Fibonacci sequence
def fibo_sequence(n)
  sequence = Array.new
  if n == 0 or n == 1
    return 1
  else
    idx = 0
    sum = 0
    sequence.push(0)
    sequence.push(1)
    while idx < n
      first = sequence[sequence.length() - 1]
      second = sequence[sequence.length() - 2]
      sum = first + second
      sequence.push(sum)
      idx += 1
    end
    sequence
  end
end

def perimeter(n)
  # get Fibonacci's sequence
  sequence = fibo_sequence(n)

  # sum its numbers
  sequence = sequence.sum

  # multiply it by 4
  return sequence*4

end

# check fibo_sequence is working properly
print fibo_sequence(5)
puts "\n"

# check perimeter function
puts "The perimeter equals to #{perimeter(5)}"
puts "The perimeter equals to #{perimeter(7)}"
