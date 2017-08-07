# interface.rb
require "csv"
# Pseudo-code:
# 1. Welcome
# 2. Display menu (list / add / delete / mark )
# 3. Get user action
# 4. Perform the right action

puts "Welcome to your Christmas giftlist"

list = {
  sockets: 10,
  ruby_book: 25,
  macbook_pro: 2000,
}
#################
my_list = []

filepath = "my_list.csv"

CSV.foreach(filepath) do |row|
  my_list << { name: row[0], bought: row[1] }
end

####################
answer = ""

puts "Which action? [list|add|delete|mark|quit]"
answer = gets.chomp.downcase


while answer != "quit"

  case answer
  when "list"
    my_list.each do |item|
      if item[:bought]  == ‘true’
        puts "#{item[:name]} =  #{list[item[:name].to_sym]} £, [X]"
      else
        puts "#{item[:name]} =  #{list[item[:name].to_sym]} £, [ ]"
      end
    end
  #‘TODO: list items’

 when "add"
    puts "We propose to you"

   list.each do |item, price|
      puts “#{item} =  #{price}”
    end

   puts "what do you want to add ?"
    answer = gets.chomp
    my_list << { name: answer, bought: false }
  #‘TODO: ask user an item and add it to giftlist’

 when "mark"
    puts "what item do you want to mark ?"
    item_to_mark = gets.chomp

   my_list.each do |item|
      if item[:name] == item_to_mark
        item[:bought] = true
      end
    end

  when "delete"
    puts "What do you want to delete"

   my_list.each_with_index do |item, index|
      puts "#{index+1} - #{item[:name]}"
    end

   puts "what do you want to delete ?"
    index = gets.chomp.to_i
    my_list.delete_at(index-1)

  when "quit"
    puts "You have in your giftlist #{my_list}"
  end

 puts "Which action? [list|add|delete|quit]"
  answer = gets.chomp.downcase

end

CSV.open(filepath, "wb") do |csv|

 my_list.each do |item|

   csv << [item[:name], item[:bought]]

    end
end
