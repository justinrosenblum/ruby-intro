# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 4-hashes.rb

# Hashes are lists of *key-value pairs*

profile = { "name" => "Justin",
 "location" => {"city" => "San Francisco", "state" => "California"},
 "status" => "Learning ENTR-451!",
"timeline" => [
    "Teaching ENTR-451",
    "Drive Home",
    "Watch Better Call Saul"
]
}

# puts profile
# We can put these on separate lines if we'd like to


# Accessing data from the hash
# puts profile["name"]
# puts "Hi, #{profile["name"]}"

profile["name"] = {"first_name" => "Justin", "last_name" => "Rosenblum"}
# puts profile

puts profile["name"]
location = profile["location"]
# puts location["city"]



# More Complex Hashes
puts "first status"
puts "-------"
puts profile["timeline"][0]