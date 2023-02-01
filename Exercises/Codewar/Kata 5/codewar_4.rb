=begin

The drawing shows 6 squares the sides of which have
a length of 1, 1, 2, 3, 5, 8. It's easy to see that 
the sum of the perimeters of these squares is: 
4 * (1 + 1 + 2 + 3 + 5 + 8) = 4 * 20 = 80

https://www.codewars.com/kata/559a28007caad2ac4e000083

=end
module Codewar_4
  # classical Fibonacci sequence
  def self.fibo_sequence(n)
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

  def self.perimeter(n)
    # get Fibonacci's sequence
    sequence = fibo_sequence(n)

    # sum its numbers
    sequence = sequence.sum

    # multiply it by 4
    return sequence*4

  end
end

# check fibo_sequence is working properly
# check = Codewar_4.fibo_sequence(5)
# print check
# puts "\n"

# check perimeter function
# check = Codewar_4.perimeter(5)
# puts "The perimeter equals to #{check}"
