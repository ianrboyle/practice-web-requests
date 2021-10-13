def see_more_products
  puts "Would you like to see another product? (y/n)"
  input = gets.chomp
  if input == "n"
    return false
  else
    ask_user
  end
end


def ask_user
  puts "Which product would you like to see?"
  puts "[1] All Products"
  puts "[2] laptop"
  puts "[3] notebook"
  puts "[4] pen"
  puts "[5] EXIT this app"
  input = gets.chomp.to_i
end

see_more_products