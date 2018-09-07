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

# require 'httparty'
# require './db/platforms_data.rb'
# require './db/categories_data.rb'
# require './db/game_modes_data.rb'
require './db/game_data/game_part0.rb'
require './db/game_data/game_part1.rb'
require './db/game_data/game_part2.rb'
require './db/game_data/game_part3.rb'
require './db/game_data/game_part4.rb'
require './db/game_data/game_part5.rb'
require './db/game_data/game_part6.rb'
require './db/game_data/game_part7.rb'
require './db/game_data/game_part8.rb'
require './db/game_data/game_part9.rb'
require './db/game_data/game_part10.rb'
require './db/game_data/game_part11.rb'
require './db/game_data/game_part12.rb'
require './db/game_data/game_part13.rb'
require './db/game_data/game_part14.rb'
require './db/game_data/game_part15.rb'
require './db/game_data/game_part16.rb'
require './db/game_data/game_part17.rb'
require './db/game_data/game_part18.rb'
require './db/game_data/game_part19.rb'
require './db/game_data/game_part20.rb'
require './db/game_data/game_part21.rb'
require './db/game_data/game_part22.rb'
require './db/game_data/game_part23.rb'
require './db/game_data/game_part24.rb'
require './db/game_data/game_part25.rb'
require './db/game_data/game_part26.rb'
require './db/game_data/game_part27.rb'
require './db/game_data/game_part28.rb'
require './db/game_data/game_part29.rb'
require './db/game_data/game_part30.rb'
require './db/game_data/game_part31.rb'
require './db/game_data/game_part32.rb'
require './db/game_data/game_part33.rb'
require './db/game_data/game_part34.rb'
require './db/game_data/game_part35.rb'
require './db/game_data/game_part36.rb'
require './db/game_data/game_part37.rb'
require './db/game_data/game_part38.rb'
require './db/game_data/game_part39.rb'
require './db/game_data/game_part40.rb'
require './db/game_data/game_part41.rb'
require './db/game_data/game_part42.rb'


$game_part0.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part1.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part2.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part3.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part4.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part5.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part6.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part7.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part8.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part9.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part10.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part11.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part12.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part13.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part14.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part15.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part16.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part17.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part18.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part19.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part20.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part21.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part22.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part23.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part24.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part25.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part26.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part27.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part28.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part29.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part30.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part31.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part32.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part33.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part34.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

game_part35.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part36.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part37.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part38.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part39.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part40.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part41.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

$game_part42.each do |game_data|
  Game.create!(
    game_id: game_data['id'],
    game_name: game_data['name'],
    rating: game_data['rating']
  )
end

  # Game.create!(
  #   game_id: 1,
  #   game_name: 'testgame1',
  #   rating: 10
  # )
  # Game.create!(
  #   game_id: 2,
  #   game_name: 'testgame2',
  #   rating: 20
  # )
  # Game.create!(
  #   game_id: 3,
  #   game_name: 'testgame3',
  #   rating: 30
  # )

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