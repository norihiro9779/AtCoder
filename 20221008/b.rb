# 3(参加者合計)  3（実行合計）
# 2 （参加者数） 1 2(参加者番号)
# 2  2 3
# 2  1 3

# 4 2
# 3 1 2 4
# 3 2 3 4

n,m = gets.chomp.split(" ").map(&:to_i)

b = [*1..n]
a = b.combination(2).to_a
ans = []

m.times do
  input = gets.chomp.split(" ").map(&:to_i)
  input.shift
  ans.concat(input.combination(2).to_a)
end

c = a - ans

print a
puts
print ans
puts
print c

if c.size == 0
  puts "Yes"
else
  puts "No"
end
