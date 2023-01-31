# Sum of Pairs
# Given a list of integers and a single sum value, return the first two values (parse from the left please)
# in order of appearance that add up to form the sum.
# If there are two or more pairs with the required sum, the pair whose second element has the smallest index is the solution.

# https://www.codewars.com/kata/54d81488b981293527000c8f

def sum_pairs(pairs, sum)
  # declare new array
  result = Array.new()
  # nested loop to check possible sums
  for i in (0...pairs.length())
    # in the second loop, we start in the i index,
    # this way we can avoid repetition
    for j in (i...pairs.length())
      if i != j
        if pairs[i] + pairs[j] == sum
          result.push([pairs[i], pairs[j], j])
        end
      end
    end
  end
  # check that there is more than one solution
  if result.length > 1
    # get the correct solution
    solution = result.min { |a, b|  a[2]<=>b[2]}
  else
    return result
  end
  # remove index for display purpose
  solution.pop(1)

  # return the correct solution
  solution
end

print sum_pairs([10, 5, 2, 3, 7, 5], 10)
print sum_pairs([11, 3, 7, 5], 10)
print sum_pairs([0, 0, -2, 3, 5], 2)
print sum_pairs([4, 3, 2, 3, 4], 6)
