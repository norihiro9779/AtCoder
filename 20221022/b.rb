# https://atcoder.jp/contests/abc274/tasks/abc274_b

# 入力例
# 3 4
# #..#
# .#.#
# .#.#

# 出力
# 1 2 0 3

hight, width =gets.chomp.split(" ").map(&:to_i)

# # 二次元配列の初期化
array = Array.new(hight)

hight.times do |i|
  array[i] = gets.chomp.split("")
end

result = array.transpose.map do |ary|
  sum = 0
  ary.each do |i|
    if i == '#'
      sum += 1
    else
      sum += 0
    end
  end
  sum
end

result.each{|x| print "#{x} "}