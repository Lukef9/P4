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
#        "user-key": 'my key',
#        Accept: 'application/json'
#      })
#    total = total + resp
#  end
# File.open("data.txt","w") do |test|
#   test.puts first_half
# end

require 'httparty'
require './first_half.rb'
require './second_half.rb'
require './platforms_data.rb'




puts $game_data[1]
