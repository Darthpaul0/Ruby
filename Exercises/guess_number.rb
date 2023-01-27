random_num = rand(100)  # generate a random number
num_of_guesses = 0  # store number of guesses

while num_of_guesses < 10
  print("\nGuess a number from 1 to 100: ")
  guess_num = gets.to_i
  # gets return as string datatype, hence we need to convert to integer

  num_of_guesses = num_of_guesses + 1
  # you can write above as num_of_guesses += 1
  guesses_left = (10 - num_of_guesses)

  if guess_num < random_num
    puts("Too small! You have #{guesses_left} guesses left.")
  elsif guess_num > random_num
    puts("Too big! You have #{guesses_left} guesses left.")
  end
  break if guess_num == random_num
end

if guess_num == random_num
  puts("Congrats! You guessed the number #{random_num} in #{num_of_guesses} tries.")
else
  puts("You failed to guess correctly. Actual number is #{random_num}.")
end