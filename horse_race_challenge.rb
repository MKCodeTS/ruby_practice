############# STEP 1 #############
# TODO: you can build your instacart program here!
# 1. welcome the user to the app
puts "===================="
puts "Welcome to Instacart"
puts "===================="
# 2a. Create the items (as a hash)
items = {
  kiwi: 1.25,
  banana: 0.5,
  mango: 4,
  asparagus: 9
}

quantity_of_the_items = []

# 2b. Initialize balance to 0
balance = 0
# 3. List the items in the store
items.each do |item, price|
  puts "#{item}: £#{price}"
end
# 4. We need to loop
shopping = true
while shopping
  # 5. Ask them to add an item to their cart
  puts "What would you like to add to your cart?"
  item = gets.chomp.downcase.to_sym
  if item == :quit # symbol because we called .to_sym right above
    shopping = false
  # 6. Check if the item exists
  elsif items.include?(item) # items.has_key?(item)
    puts "How many items would you like?"
    balance += items[item] * quantity_of_the_items
  else
    # 6b. Display an error message
    puts "Sorry we do not have that item in store"
  end
end
# 7. Give the final quote
puts "-------- Bill ---------"
puts "Total: £#{balance}"
puts "-----------------------"


########################################
######### Race Horse Challenge #########
########################################
# race horse
# user can bet on a horse
# if they find the winning horse they'll win some money
# otherwise they lose their bet

################## STEP 1 ######################

# 1. Greet the user
puts "Hello to Le Wagon Horse Race"
# 2a. Define the list of horses (array)
horses = ['Bella', 'Alex', 'Lilly', 'Alexia', 'Fancy', 'Sugar']
#            0        1       2         3        4        5
# 2b. Display a list of horses who are racing (iterate over the array and display the index of each horse)
puts "Which horse would you like to bet on? (pick a number)"
horses.each_with_index do |horse, index|
  puts "#{index + 1}. #{horse}"
end
# 3. Pick the horse we want to bet on
picked_horse_index = gets.chomp.to_i - 1
picked_horse = horses[picked_horse_index] # array[index] => index being a number (from 0 to 5)

# 4. Get the winning horse (random horse in the array)
# random_index = rand(horses.length)
# winning_horse = horses[random_index]
winning_horse = horses.sample
# 5. Compare the horse the user chose with the winning horse
# 6. Let the user know whether or not they won
puts "winning horse: #{winning_horse}"
puts "picked horse: #{picked_horse}"
if winning_horse == picked_horse
  puts "You won!"
else
  puts "You lost!"
end


################## STEP 2 ######################

# 0. Loop over the program
# 1a. Greet the user
# 1b. define a balance to our user (£100)
puts "Hello to Le Wagon Horse Race"
# 2a. Define the list of horses (array)
horses = ['Bella', 'Alex', 'Lilly', 'Alexia', 'Fancy', 'Sugar']
#            0        1       2         3        4        5
balance = 100
playing = true
while playing
  # 2b. Display a list of horses who are racing (iterate over the array and display the index of each horse)
  puts "Which horse would you like to bet on? (pick a number)"
  horses.each_with_index do |horse, index|
    puts "#{index + 1}. #{horse}"
  end
  # 3a. Pick the horse we want to bet on
  picked_horse_index = gets.chomp.to_i - 1
  picked_horse = horses[picked_horse_index] # array[index] => index being a number (from 0 to 5)
  # 3b. How much they want to bet
  puts "How much would you like to bet on #{picked_horse}?"
  bet = gets.chomp.to_i
  # 3c. check if they have enough money
  if bet <= balance
    # Decrease the balance
    balance -= bet # => balance = balance - bet
    # 4. Get the winning horse (random horse in the array)
    # random_index = rand(horses.length)
    # winning_horse = horses[random_index]
    winning_horse = horses.sample
    # 5. Compare the horse the user chose with the winning horse
    # 6. Let the user know whether or not they won
    if winning_horse == picked_horse
      # 6a. Increase the balance
      balance += bet * 2 # => balance = balance + bet (2 is our stake)
      puts "You won! Your current balance is £#{balance}"
    else
      puts "You lost! Your current balance is £#{balance}"
    end
  else
    puts "You don't have enough funds"
  end
  if balance <= 0
    puts "You don't have any money left"
    playing = false
  else
    puts "Do you want to play again? [y/n]"
    answer = gets.chomp
    playing = answer == 'y'
  end
end
