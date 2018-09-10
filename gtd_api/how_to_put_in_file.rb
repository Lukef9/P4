first_half = []
40000.times do |x|
first_half.push(total[x])
end

second_half = []
66486.times do |x|
second_half.push(total[x+40000])
end

File.open("first_part.txt","w") do |test|
test.write 
end

File.open("third_part.rb","w") do |test|
test.write (third_part.to_json)
end

File.open("second_half.txt","w") do |test|
test.puts second_half
end

File.open("db/platforms_data.txt","w") do |test|
test.puts platforms
end

File.open("db/categories_data.txt","w") do |test|
  test.puts categories
end

File.open("db/game_modes_data.txt","w") do |test|
  test.puts game_modes
end

game_modes = HTTParty.get('https://api-2445582011268.apicast.io/game_modes/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50',
  headers:  {
    "user-key": 'my key',
    Accept: 'application/json'
})


part = []
42.times do |x|
  part.push([])
end

42.times do |i|
  2500.times do |x|
    part[i].push(total[x+(i*2500)])
  end
end

part.push([])
1486.times do |x|
part.last.push(total[x+105000])
end

43.times do |x|
  File.open("db/game_data/game_part#{x}.rb","w") do |test|
    test.write (part[x].to_json)
  end
end

