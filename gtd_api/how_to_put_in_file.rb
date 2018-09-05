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