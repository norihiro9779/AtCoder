N = gets.to_i
array = gets.split.map(&:to_i)

puts array.index {|v| array.max == v } +1