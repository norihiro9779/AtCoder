# https://atcoder.jp/contests/typical90/tasks/typical90_d
# fumta

# 入力例
# 3 3
# 1 1 1
# 2 2 2
# 3 3 3

# 出力
# 8 8 8
# 10 10 10
# 12 12 12

H, W = gets.split.map(&:to_i)
A = Array.new(H) { gets.split.map(&:to_i) }   # [[1, 1, 1], [2, 2, 2], [3, 3, 3]]

r_sum = A.map { _1.sum }  # [3, 6, 9]
c_sum = A.transpose.map { _1.sum } # [6, 6, 6]



ans =
  H.times.map do |i|
    W.times.map do |j|
      r_sum[i] + c_sum[j] - A[i][j] # 縦軸横軸で重なっている部分を引く
    end
  end

# ans [[8, 8, 8], [10, 10, 10], [12, 12, 12]]
ans.each { puts _1.join(" ") }

