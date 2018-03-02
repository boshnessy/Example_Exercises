# Build a terminal dictionary app
# The program should ask the user to enter a word, then use the wordnik API to show the word’s definition, top example, and pronunciation: 
# Bonus: Write your program in a loop such that the user can keep entering new words without having to restart the program. Give them the option of entering q to quit.

# Brian's weather example: https://github.com/the-night-shift/intro_apis/blob/master/yahoo_weather.rb


# STEPS
# get the right url for wordnik
# make sure that works in this file
# have the user enter some input to search flexibility
# make all 3 unirest requests work
# show info to user

require 'unirest'

while true
  system "clear" # clears terminal - neater
  puts "Pick a word."
  puts "Press 'q' to stop."

  word = gets.chomp
  if word == "q"
    break
  end


  # definition
  response_definition = Unirest.get("http://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

  definition = response_definition.body[0]["text"]



  # top example
  response_topexample = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{word}/topExample?useCanonical=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5
  ")

  topexample = response_topexample.body["text"]



  # # pronunciation
  response_pronunciation = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

  pronunciation = response_pronunciation.body[0]["raw"]

  # puts JSON.pretty_generate(response.body[0]["text"])


  # output
  puts "The definition of #{word} is: #{definition.downcase}"
  puts "#{topexample}"
  puts "The pronunciation of #{word} is #{pronunciation}"
  puts "Press enter to continue."
  gets.chomp
end