=begin
In this kata you have to correctly return who is 
the "survivor", ie: the last element of a 
Josephus permutation.
Basically you have to assume that n people are put 
into a circle and that they are eliminated in steps 
of k elements

https://www.codewars.com/kata/555624b601231dc7a400017a
=end

def josephus_survivor(people, step)
  # make an alive and dead people
  alive = Array.new
  executed = Array.new
  for person in 1..people
    alive.push(person)
  end

  # count alive people
  len = alive.length()

  # show people alive
  print alive
  print "\n"

  # variable to count killed people
  killed = 0

  # start survival process
  while len > 1
    # the person to be killed will be here
    killed = (killed + step - 1) % len

    # the just killed person is now included
    # in the executed list
    executed.push(alive.delete_at(killed))

    # one less survivor
    len -= 1

    # print rest of survivors
    print alive
    print "\n"
  end
end

josephus_survivor(7, 3)
