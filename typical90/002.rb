# https://atcoder.jp/contests/typical90/tasks/typical90_b

kakko = '()'

n = gets.chomp.to_i

# if n.even?
#   hoge = kakko * n - 1

# else
#   break
# end


n = gets.chomp.to_i
exit if n & 1 == 1

ans = []
i = 0
[0, 1].repeated_permutation(n).each do |combination_array|
  array, hidari_kakko, migi_kakko = [], 0, 0
  combination_array.each do |s|
    if s == 0
      hidari_kakko += 1
    else
      migi_kakko += 1
    end
    break if hidari_kakko < migi_kakko
    array << (s == 0 ? "(" : ")")
  end
  ans << array if hidari_kakko == migi_kakko
end

puts ans.map(&:join)