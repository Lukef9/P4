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
# require './db/first_half.rb'
# require './db/second_half.rb'
# # require './db/platforms_data.rb'
# # require './db/categories_data.rb'
# # require './db/game_modes_data.rb'



# # $first_half.each do |game_data|
# #   Game.create!(
# #     game_id: game_data['id'],
# #     game_name: game_data['name'],
# #     rating: game_data['rating']
# #   )
# # end

# $second_half.each do |game_data|
#   Game.create!(
#     game_id: game_data['id'],
#     game_name: game_data['name'],
#     rating: game_data['rating']
#   )
# end
  Game.create!(
    game_id: 1,
    game_name: 'testgame1',
    rating: 10
  )
  Game.create!(
    game_id: 2,
    game_name: 'testgame2',
    rating: 20
  )
  Game.create!(
    game_id: 3,
    game_name: 'testgame3',
    rating: 30
  )

# $categories_data.each do |category_data|
#   Category.create!(
#     category_id: category_data['id'],
#     category_name: category_data['name'],
#   )
# end

# $platforms_data.each do |platform_data|
#   Platform.create!(
#     platform_id: platform_data['id'],
#     platform_name: platform_data['name'],
#   )
# end

# $game_modes_data.each do |game_mode_data|
#   GameMode.create!(
#     game_mode_id: game_mode_data['id'],
#     game_mode_name: game_mode_data['name'],
#   )
# end

# games_data.each do |game_data|
#     puts game_data['id']
# end

# $categories_data.each do |category_data|
#     puts category_data['id']
# end

# $platforms_data.each do |platform_data|
#     puts platform_data['id']
# end

# $game_modes_data.each do |game_mode_data|
#     puts game_mode_data['id']
# end