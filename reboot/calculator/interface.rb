# interface.rb
require_relative "calculator"

# Pseudo-code (what are the steps in plain english):

# 1. Say hello to the user
puts "hello"

reply = "yes"

# 2. Ask user for the first number ( gets.chomp)
while reply == "yes"

  puts "what's the first number of the opération ? "

  # 3. Get user answer( a mettre dans un variable)
  first_number = gets.chomp.to_i

  # 4. Ask user for second number
  puts "what's the second number of the opération ? "

  # 5. get user answer ( )

  second_number = gets.chomp.to_i

  # 6.ask user for opération
  puts "Choose operation [+][-][x][/]?"

  operator = gets.chomp

  # 7. compute l'operation
  # 8. ( print result)
  result = calculate(first_number, second_number, operator)

  puts " the result is #{result}"

  puts "do you want to continue (yes or no) ? "

  reply = gets.chomp

end


