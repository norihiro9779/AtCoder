# https://atcoder.jp/contests/abc274/tasks/abc274_a

a, b =gets.chomp.split(" ").map(&:to_i)

puts sprintf("%.3f", (b * 1.0 / a * 1.0).round(3))