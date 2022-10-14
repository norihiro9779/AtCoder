
# 3（文字列の長さ） 2（連続する1）
# 1??  最初の1から？までの距離1のとき
# 4 2
# ?1?0
# 6 3
# 011?1?
# 10 5
# 00?1???10?

# https://atcoder.jp/contests/arc150/tasks/arc150_a

# ポイントは連続する1と？のパターン
# 1もしくは？がヒットした際次の0がでてくるまでの長さが
# 1から連続する？を1に変換したあと、1の左もしくは右に？が存在してk個以上になるときfalse
T = gets.to_i

T.times do
  n, k = gets.chomp.split.map(&:to_i)
  str = gets.chomp

  if str.include?("1")
    ok = 0
    idx = str.index("1")
    ridx = str.rindex("1")
    idx.upto(ridx) do |i|
      if str[i] == "0"
        ok = -1
        break
      else
        str[i] = "1"
      end
    end

    size = str.count("1")
    if ok == -1 || size > k
      puts "No"
      next
    end

    if size == k
      puts "Yes"
      next
    end

    left= 0
    while idx > 0 && str[idx - 1] == "?"
      idx -= 1
      left += 1
    end
    right = 0
    while ridx < n - 1 && str[ridx + 1] == "?"
      ridx += 1
      right += 1
    end

    if left == 0 || right == 0
      if left + right + size >= k
        puts "Yes"
      else
        puts "No"
      end
    else
      if left + right + size == k
        puts "Yes"
      else
        puts "No"
      end
    end
  else
    ok = 0
    ct = 0
    (str + "0").each_char do |c|
      if c == "0"
        if ct > k
          ok = 2
          break
        elsif ct == k
          ok += 1
        end
        ct = 0
      else
        ct += 1
      end
    end

    if ok == 1
      puts "Yes"
    else
      puts "No"
    end
  end

end