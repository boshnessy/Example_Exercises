require 'unirest'


puts "Which reddit thread is your favorite?"
thread = gets.chomp

response = Unirest.get("https://www.reddit.com/r/#{thread}/.json")

number = response.body["data"]["children"][0]["data"]["num_comments"]

# puts JSON.pretty_generate(response.body["data"]["children"][0]["data"]["num_comments"])


p "#{thread.capitalize} has #{number} comments."