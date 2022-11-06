n, m = gets.split.map(&:to_i)
graph = {}
m.times do
  a, b = gets.split.map(&:to_i)
  graph[a] ||= []
  graph[a].push b
  graph[b] ||= []
  graph[b].push a
end

(1..n).to_a.each do |i|
  if graph[i]
    # puts [graph[i].length, graph[i].sort].flatten.join(' ')
  else
    # puts 0
  end
end