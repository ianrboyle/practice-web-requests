require "http"

def ask_user
  puts "Which product would you like to see?"
  puts "[1] All Products"
  puts "[2] laptop"
  puts "[3] notebook"
  puts "[4] pen"
  puts "[5] EXIT this app"
end

def print_products(data)
  puts "Product: #{data["products"]["name"]}"
  puts "Price: #{data["products"]["price"]}"
  puts "Description: #{data["products"]["description"]}"
end

def see_more_products
  puts "Would you like to see another product? (y/n)"
  input = gets.chomp
  if input == "n"
    return false
  else
    ask_user
  end
end


ask_user
input = gets.chomp.to_i
status = true
while status
  if input == 5 
    status = false
  elsif input == 1  
    response = HTTP.get("http://localhost:3000/all_products")
    products = response.parse
    puts products["products"]
    status = false
    
  elsif input == 2
    response = HTTP.get("http://localhost:3000/first_product")
    products = response.parse
    print_products(products)
    status = false
  elsif input == 3
    response = HTTP.get("http://localhost:3000/second_product")
    products = response.parse
    print_products(products)
    status = false
  elsif input == 4
    response = HTTP.get("http://localhost:3000/last_product")
    products = response.parse
    print_products(products)
    status = false
  else
    puts "That is not an option."
    ask_user
    # puts "Which product would you like to see?"
    # puts "[1] All Products"
    # puts "[2] laptop"
    # puts "[3] notebook"
    # puts "[4] pen"
    # puts "[5] EXIT this app"
    input = gets.chomp.to_i
  end
end

