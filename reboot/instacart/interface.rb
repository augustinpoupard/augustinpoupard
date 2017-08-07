# interface.rb

# Pseudo-code
# 1. Print Welcome
# 2. Define your store (what items are for sale?)
# 3. Get items from the user (shopping)
# 4. Print the bill (checkout)


puts "Welcome to instacart"

store =
{ kiwi: 1.25,
 banana: 0.5,
 mango: 4,
 asparagus: 9
}
puts "In our store today:"

store.each do | key, value |

puts "#{key}: #{value}€"

end

cart = []

choice = ""

until choice == "quit"

  puts "Which item? (or 'quit' to checkout)?"

  choice = gets.chomp
  # si le produit existe
  if store.key?(choice.to_sym)

    cart << choice
  else
    puts "Attention le produit demandé n'existe pas "
  end
end

total = cart.map { |item| store[item.to_sym] }.reduce(:+)
#* qté_value

kiwi_count = cart.count "kiwi"
banana_count = cart.count "banana"
mango_count = cart.count "mango"
asparagus_count = cart.count "asparagus"


puts " kiwi : #{kiwi_count}, prix total #{store[:kiwi] * kiwi_count}, #{}" if kiwi_count !=0
puts "banana : #{banana_count},prix total #{store[:banana] * banana_count}, #{}" if banana_count !=0
puts " mango :  #{mango_count},prix total #{store[:mango] * mango_count},#{}" if mango_count !=0
puts " asparagus : #{asparagus_count},prix total #{store[:asparagus] * asparagus_count},#{}" if asparagus_count !=0



puts " the total of the bill is #{total} "


#puts " le total est de #{}"


