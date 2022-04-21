# DON'T CHANGE THIS CODE
# ----------------------
require "net/http"
require "json"
url = "https://api.coindesk.com/v1/bpi/currentprice.json"
uri = URI(url)
response = Net::HTTP.get(uri)
bitcoin_data = JSON.parse(response)
# ----------------------

# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 4-hashes.rb

# EXERCISE
# Ask the user for the current amount of Bitcoin that they own.
# Using the Ruby hash `bitcoin_data`, display a summary of
# Bitcoin data for the user. Something like the output below.

# Sample output:
# 1 Bitcoin is valued at $41405.1046 USD.
# Your Bitcoin is worth $62107.6569.

# 1. Get input from a user using gets.chomp.
puts "How much bitcoin do you have?"
bitcoin = gets.chomp

# 2. The value will be a string, so you'll want to convert it to a Float.
bitcoin = bitcoin.to_f

# 3. inspect the bitcoin_data hash
# puts bitcoin_data

# 4. find the rate of bitcoin in usd
usd_rate = bitcoin_data["bpi"]["USD"]["rate_float"]
puts usd_rate

# 5. calculate the value of the user's bitcoin in usd
usd_value = bitcoin * usd_rate
puts usd_value

# 6. Display the output

puts "1 Bitcoin is valued at $#{usd_rate} USD."
puts "Your Bitcoin is worth $#{usd_value}."


# Sample output:
# 1 Bitcoin is valued at $41405.1046 USD.
# Your Bitcoin is worth $62107.6569.


# bpi = bitcoin_data["bpi"]
# USD = bpi["USD"]
# puts bpi["rate_float"]
# puts "1 Bitcoin is valued at #{bpi["rate_float"]}"
# puts "Your Bitcoin is worth #{bpi["rate_float"] * bitcoin}"

