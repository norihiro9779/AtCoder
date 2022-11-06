# bool check(vector<int>& x, vector<int>& y) {
# 	vector<int> v;
# 	for (int i = 0; i < 4; i++)
# 		for (int j = i + 1; j < 4; j++) {
# 			int dx = x[i] - x[j], dy = y[i] - y[j];
# 			v.push_back(dx * dx + dy * dy);
# 		}
# 	sort(v.begin(), v.end());
# 	int l = v[0];
# 	if (l == 0) return false; // 点が重なる
# 	return v[0]==l && v[1]==l && v[2]==l && v[3]==l && v[4]==l*2 && v[5]==l*2;
# }

array = []
9.times do
  array << gets.chomp.split("")
end