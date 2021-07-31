##################################
###### Calculator Challenge ######
##################################
# 0. Loop through the code until user wants to quit
# 1. Ask the user for the first number (string)
calculator_on = true
while calculator_on
  puts "Please enter a number"
  # 1a. convert the input to a number
  first_number = gets.chomp.to_i
  # 2. Ask the user for the second number (string)
  puts "Please enter another number"
  # 1b. convert the input to a number
  second_number = gets.chomp.to_i
  # 3. Ask to choose the operator
  puts "What operation would you like to do? [+ - * /]"
  operator = gets.chomp
  # 4. compute the result (can be broken down even more)
  # if operator == '+'
  #   result = first_number + second_number
  # elsif operator == '-'
  #   result = first_number - second_number
  # elsif operator == '*'
  #   result = first_number * second_number
  # elsif operator == '/'
  #   result = first_number / second_number.to_f
  # else
  #   result = nil
  #   puts "You messed up!"
  # end
  # Same as above but instead of using if-else we use case-when
  case operator
  when '+'
    result = first_number + second_number
  when '-'
    result = first_number - second_number
  when '*'
    result = first_number * second_number
  when '/'
    result = first_number / second_number
  else
    result = nil
    puts "You messed up!"
  end
  # 5. display the result to the user
  puts "#{first_number} #{operator} #{second_number} = #{result}"

  puts "Would you like to continue? [y/n]"
  answer = gets.chomp
  calculator_on = answer == 'y'
  # if answer == 'y'
  #   calculator_on = true
  # else
  #   calculator_on = false
  # end

  ## Everytime you have something like if condition then true else false,
  ## You can always replace your whole if statement by the condition like shown below
  # if condition
  #   return true
  # else
  #   return false
  # end
  # equivalent to the 5 lines above => condition
end
