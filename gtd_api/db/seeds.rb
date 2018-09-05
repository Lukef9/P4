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
#   test.puts first_half
# end

require 'httparty'
require './game_data.rb'

categories = HTTParty.get('https://api-2445582011268.apicast.io/genres/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50',
  headers:  {
    "user-key": '13bc7945b3fcd58f0f9a272f80b50bc8',
    Accept: 'application/json'
  })


puts $game_data[1]
