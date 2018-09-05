# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ran this in rails c to create data files
# 150.times do |x|
#    i = x*1000
#    word =  (i+1.. i+1000).to_a.join(",")
#    resp = HTTParty.get("https://api-endpoint.igdb.com/games/"+word,
#      headers:  {
#        "user-key": '13bc7945b3fcd58f0f9a272f80b50bc8',
#        Accept: 'application/json'
#      })
#    total = total + resp
#  end
# File.open("data.txt","w") do |test|
#   test.puts total
# end

require 'httparty'
require './game_data.rb'

resp = HTTParty.get('https://api-2445582011268.apicast.io/platforms/3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166',
  headers:  {
    "user-key": '13bc7945b3fcd58f0f9a272f80b50bc8',
    Accept: 'application/json'
  })


puts $game_data[1]
