puts "welcome "

reply = "yes"

while reply == "yes"

horses = ["tornado", "eclair","indigo"]

puts "les cheveaux en course: "

horses.each_with_index do |horse, index|

puts " - #{index+1} #{horse} "

end

puts "choose your horse"

pari = gets.chomp.to_i

result = horses.sample

winner_index = horses.find_index(result) + 1

if pari == winner_index
puts " you win "

else
puts "you lose"

end

puts " the result is #{result}"

puts "do you want to play again ( yes or no) ? "

reply = gets.chomp

end



