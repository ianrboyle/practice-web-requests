require "http"

# puts "Would you like a definition? Type 'yes' or 'no'"
# answer = gets.chomp.downcase

# if answer == "no"
#   return false
# end
# if answer == "yes"
#   active = true
#   while active
#     puts "Enter a word or enter 'q' to quit: "
#     word = gets.chomp.downcase

#     if word == "q"
#       active = false
#     end

#     if word != "q"
#       ### fetching definition info
#       definition_response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=03pgsw5yqhr4za5ql3604lcnwwdhwyznzog38048pue6ca6qy")

#       definition_response = definition_response.parse(:json)

#       definition = definition_response[0]["text"]

#       ### fetching pronunciation info

#       pronunciation_response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=03pgsw5yqhr4za5ql3604lcnwwdhwyznzog38048pue6ca6qy")

#       pronunciation_response = pronunciation_response.parse(:json)

#       pronunciation = pronunciation_response[0]["raw"]

#       p definition
#       p pronunciation
#     end
#   end
# end

puts "Enter a word or enter 'q' to quit: "
word = gets.chomp.downcase

definition_response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=03pgsw5yqhr4za5ql3604lcnwwdhwyznzog38048pue6ca6qy")

definition_response = definition_response.parse(:json)

p definition_response.length

definition = definition_response[0]["text"]

p definition
