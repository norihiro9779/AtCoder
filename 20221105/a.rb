n = gets.split('')

num = n.reverse.index{|x| x =='a'}
print num ? n.length - num : -1
