def is_square(dist):
  return squared_dist[0] == squared_dist[1] \
    and squared_dist[1] == squared_dist[2] \
    and squared_dist[2] == squared_dist[3] \
    and squared_dist[4] == squared_dist[0] * 2 \
    and squared_dist[5] == squared_dist[4]

grid = [input() for _ in range(9)]

indices = []
for i in range(9):
  for j in range(9):
    if grid[i][j] == '#':
      indices.append((i, j))

num_squares = 0

for i in range(len(indices)):
  for j in range(i + 1, len(indices)):
    for k in range(j + 1, len(indices)):
      for l in range(k + 1, len(indices)):
        x0, y0 = indices[i]
        x1, y1 = indices[j]
        x2, y2 = indices[k]
        x3, y3 = indices[l]
        squared_dist = [
          (x0 - x1) ^ 2 + (y0 - y1) ^ 2,
          (x0 - x2) ^ 2 + (y0 - y2) ^ 2,
          (x0 - x3) ^ 2 + (y0 - y3) ^ 2,
          (x1 - x2) ^ 2 + (y1 - y2) ^ 2,
          (x1 - x3) ^ 2 + (y1 - y3) ^ 2,
          (x2 - x3) ^ 2 + (y2 - y3) ^ 2
        ]
        squared_dist.sort()

        num_squares += is_square(squared_dist)

print(num_squares)