first_half = []
40000.times do |x|
first_half.push(total[x])
end

second_half = []
66486.times do |x|
second_half.push(total[x+40000])
end

File.open("first_half.txt","w") do |test|
test.puts first_half
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

categories = HTTParty.get('https://api-2445582011268.apicast.io/genres/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50',
  headers:  {
    "user-key": 'my key',
    Accept: 'application/json'
})