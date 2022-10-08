a = gets.to_i
# スペース区切りの整数の入力
i = gets.chomp.split(" ").map(&:to_i)
puts i.sum