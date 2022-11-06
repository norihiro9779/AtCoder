# Ruby cheat Sheet
参考になりそうな記事
https://betrue12.hateblo.jp/entry/2018/12/01/224748

## 入力値
N = gets.to_i               # 単一整数
a = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
a = N.times.map{gets.to_i}  # 縦に並んだ複数の整数。たまにある
S = gets.chomp              # 文字列。chompを付けないと改行文字がついてくる

H, W = gets.split.map(&:to_i) # マスの入力
A = Array.new(H) { gets.split.map(&:to_i) }


```
以下のような入力の場合
N
a_1 b_1
...
a_N b_Nss

このように書くとスマート
N = gets.to_i
a, b = N.times.map{gets.split.map(&:to_i)}.transpose

```
